//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "countries", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let countries = content.components(separatedBy: "\n")

let sowpods2: [String] = ["Apple", "Eat", "Absteinous", "Adventitious", "Puppy", "Uganda", "Ugandu", "Aaeppp", "Nik"]

//            var lowercaseWordDivided: Double = Double(lowercaseWord.count / 2)
//            lowercaseWordDivided.round(.up)


func areVowelsMoreThanHalf() -> [String] {
    var wordsMoreThanHalfVowels: [String] = []
    for word in countries {
        let lowercaseWord = word.lowercased()
        
        let letters = Array(lowercaseWord) //each letter in array
        let vowelLetters = letters.filter { isVowel($0) } //grab vowels
        if vowelLetters.count > lowercaseWord.count / 2  {
            wordsMoreThanHalfVowels.append(word)
        }
    }
    print(wordsMoreThanHalfVowels)
    return wordsMoreThanHalfVowels
}

func isVowel(_ character: Character) -> Bool {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    return vowels.contains(character)
}

areVowelsMoreThanHalf()
