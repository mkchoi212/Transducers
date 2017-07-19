# Transducers in Swift
This repo contains a `.playground` file and various benchmarking files that attempt to explain what transducers are and how to implement them in Swift.

The markdown view in Playground be toggled by switching `Editor -> Show Rendered Markup || Show Raw Markup`
 in the Xcode menus.

## Benchmark
The `Benchmark` directory contains the Attabench Xcode project file that was used to generate all the performance graphs used in the blog.

In addition, assembly code of all versions are available for a more in depth comparison.
The file used to generate the assembly is `AssemblyTest.swift`. If you want to
play around with it, use the following command to generate your own `.asm` files

```
xcrun -sdk macosx swiftc -emit-assembly main.swift > result.asm
```

## Blog Post
If you want to check out what this Playground is about but don't want to download it, [here](http://sickaf.xyz/2017/07/transducers) a link to my blog post that is basically its copy.

## Reddit Thread
Got something to say? Get on Reddit!

[Reddit Link Pt. 1](https://www.reddit.com/r/swift/comments/6nrk3b/transducers_in_swift/)

[Reddit Link Pt. 2](https://www.reddit.com/r/swift/comments/6nzp7l/transducers_in_swift_part_2_performance/)

## License
This project is licensed under the terms of the MIT license. See the license file.