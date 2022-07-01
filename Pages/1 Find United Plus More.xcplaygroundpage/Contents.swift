import UIKit

let fileURL = Bundle.main.url(forResource: "countries", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let countries = content.components(separatedBy: "\n")

var sowpods: [String] = ["United States", "United Emerits", "Panama", "Mexico"]

func findUnited() -> [String] {
    
    var wordsUnitedArray: [String] = []
    for word in countries {
        if word.contains("United") {
            wordsUnitedArray.append(word)
        }
    }
    print(wordsUnitedArray)
    return wordsUnitedArray
}
findUnited()

