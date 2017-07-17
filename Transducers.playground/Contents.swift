/*:
 # Transducers
 
 Transducers modify a process by transforming their internal reducing functions.
 
 Well, that doesn't help much, right?? Here it is in plain English
 
**We want to combine various operations into a single operation**
 
 Before going all crazy, let's do this in a naive way first.
 */

/*:
 ## Naive Way
 I'm guessing that from all the FP buzz, you are familiar with map and filter.
 
 So I'm going to use those to combine multiple functions to process an array of integers.
 */

func isEven(_ x: Int) -> Bool {
    return x % 2 == 0
}

func incr(_ x: Int) -> Int {
    return x + 1
}

func double(_ x: Int) -> Int {
    return x * 2
}

let naive1 = (1...10).map(incr)
                     .filter(isEven)

/*:
 ## Reduce everything
 Ok, that works. But before we go any deeper, we need to understand something.
 You need to understand that **all list processing functions - such as `map`, `filter` - can be redefined in terms of reduce** 
 
 But what does this have to do with transducers?
 
 **Recognizing this gives us regularity/uniformity because the things we can prove about reduce can also apply to the rest of the list processing functions as well.**
 Here are some examples to illustrate this.
 */

func append<T>(to accum: [T], with input: T) -> [T] {
    return accum + [input]
}

extension Collection {
    typealias A = Iterator.Element
    
    func mmap<B>(_ f: @escaping (A)->(B)) -> [B] {
        return reduce([]) { accum, elem in
            append(to: accum, with: f(elem))
        }
    }
    
    func mfilter(_ f: @escaping (A) -> (Bool)) -> [A] {
        return reduce([]) { accum, elem in
            if f(elem) {
                return append(to: accum, with: elem)
            } else {
                return accum
            }
        }
    }
}

/*:
 Notice that `mmap` reduces with `append` and `mfilter` both reduce with `append`.
 */

let naive2 = (1...10).mmap(incr)
                     .mfilter(isEven)
naive1 == naive2

/*:
 This works too. But, if you haven't noticed yet, both `mmap` and `mfiler` use intermediate arrays to process elements.
 What I mean is that everytime `mmap` prepares to process things, it **starts with an empty array** and so does `mfilter`.
 Only then do both functions start to `append` things to that empty array to construct newly processed arrays.
 This means that `naive2` had to iterate 10 * 2 times.
 
 Here's a gif describing what just happened. Credits to this awesome gif goes to Roman Liutikov.
 
 ![](naive.gif)
 
 */

/*:
 We can do better than that. And this is where transducers come in.
 */

/*:
 ## Thoughts
 So, how do we go about this? Well right now, we know that both `mmap` and `mfilter` are implemented using `reduce` and that they both use a function called `append`. But why do we use `append` here? Do we even have to use `append` all the time? There's nothing special about it. Afterall, it's just a function 😃
    
 If we think about it that way, I could use any function with the type `(accum, elem) -> (accum)` in place of `append`. Turns out, functions with the following type signitures are called **reducing functions**.
 */

/*: 
 Looks like a lot but stay with me!
 
 - A -> Input type
 - B -> Output type
 - C -> Accumulated data type
 
 - f: `(A) -> (B)`
    A reducing function that takes an input and returns an ouput. Simple
 
 - `((C, B) -> (C)) -> ((C, A) -> (C))`
    - Closure
        - Input: The "reducer". Takes `(accum, output)` and returns a new accumulated output.
        - Output: A closure fed into `reduce`. Takes a `(accum, input)` and applies `f()` to the input and calls `reducer`
 */

func mapping <A, B, C> (f: @escaping (A) -> (B)) -> (@escaping ((C, B) -> (C))) -> (C, A) -> (C) {
    return { reducer in
        return { accum, input in
            reducer(accum, f(input))
        }
    }
}

func filtering<A, C> (f: @escaping (A) -> (Bool)) -> (@escaping ((C, A) -> (C))) -> (C, A) -> (C) {
    return { reducer in
        return { accum, input in
            if f(input) {
                return reducer(accum, input)
            } else {
                return accum
            }
        }
    }
}

/*: 
 Here's a simple reducing function; adding two numbers to return a number.
 Instead of being shackled to pushing a processed element to an array, let's switch it up.
 */

func add(l: Int, r: Int) -> Int {
    return l + r
}

/*:
 In the first `reduce`, we **choose** to append the new element to the array
 and in the second `reduce`, we **choose** to numerically add the new element to the initial value.
 */

let clever = (1...10).reduce([], mapping(f: incr)(append))
                     .reduce(0, filtering(f: isEven)(add))

/*: 
 In our old naive way, we would have had to add one more `reduce` after the `filter` to do the adding
 because we have no control over how these functions reduce.
 */
let oldWay = (1...10).map(incr).filter(isEven).reduce(0, add)

clever == oldWay

/*:
 To see what `mapping` and `filtering` does in detail, let's play with it
 As a reminder, they both return (accum, input) -> (accum)
 */

assert( mapping(f: incr)(append)([], 1) == [2] )
assert( mapping(f: incr)(append)([0,0], 1) == [0,0,2] )
assert( mapping(f: incr)(add)(0, 1) == 2 )

assert( filtering(f: isEven)(append)([1,1], 2) == [1,1,2] )
assert( filtering(f: isEven)(append)([1,1], 3) == [1,1] )


/*:
 Wait a sec... Did I just say `mapping` and `filtering` is `(accum, input) -> (accum)`?
 Didn't I say that functions with that type signiture are called `reducing functions`?
 
 So, `mapping` / `filterting` are the same things as `append` and `add`.
 This is the moment we have been waiting for. Get excited...
*/

// Let's put a `filtering` where the reducing function should go.
// mapping(f: incr)(C, B) -> (C))

/*:
 Turns out `incrAndFilterEvens` is also a reducing type.
 This means we can keep on composing functions until we drop.
 */

let incrAndFilterEvens = mapping(f: incr)(filtering(f: isEven)(append))
let transducerRes = (1...20).reduce([], incrAndFilterEvens)

let oldRes = (1...20).map(incr).filter(isEven)
transducerRes == oldRes


/*:
 This is cool but little bit messy. So let's make the process of combining functions a little
 more pretty by making it functional.
 */

// (f |> g)(x) = f(g(x))
infix operator ==> : AdditionPrecedence
func ==> <A, B> (x: (A), f: (A) -> (B)) -> (B) {
    return f(x)
}

// (f ==> g)(x) = f(g(x))
func ==> <A, B, C> (f: @escaping (A) -> (B), g: @escaping (B) -> C) -> (A) -> C {
    return { g(f($0)) }
}


func ap<T>(to accum: [T], with input: T) -> [T] {
    print(accum)
    return accum + [input]
}

let ftw = ap ==> mapping(f: incr) ==> mapping(f: double) ==> filtering(f: isEven)
let res = (1...20).reduce([], ftw)
// Check out the output console below to see that the range was iterated only n times
