import UIKit
import Darwin

var sowpods: [String] = ["United States", "United Emerits", "Panama", "Mexico"]

func findUnited() -> [String] {
    var wordsUnitedArray: [String] = []
    for word in sowpods {
        if word.contains("United") {
            wordsUnitedArray.append(word)
        }//
    }
    return wordsUnitedArray
}
findUnited()

