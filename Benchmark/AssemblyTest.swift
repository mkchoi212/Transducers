 let _ = (1...100000).map{ $0 + 1 }.filter{ $0 % 2 == 0 }.reduce(0, (+))

//var res = 0
//var temp = 0
//
//for i in (1...100000) {
//  temp = i + 1  
//  if (temp % 2) == 0 {
//    res += temp
//  }
//}
