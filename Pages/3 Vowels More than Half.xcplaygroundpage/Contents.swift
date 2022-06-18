//: [Previous](@previous)

import Foundation

let sowpods2: [String] = ["Apple", "Eat", "Absteinous", "Adventitious", "Puppy", "Uganda", "Ugandu", "Aaeppp", "Nik"]


func areVowelsMoreThanHalf() -> [String] {
    var wordsMoreThanHalfVowels: [String] = []
    for word in sowpods2 {
        let lowercaseWord = word.lowercased()
        //            var lowercaseWordDivided: Double = Double(lowercaseWord.count / 2)
        //            lowercaseWordDivided.round(.up)
        let letters = Array(lowercaseWord) //each letter in array
        let vowelLetters = letters.filter { isVowel($0) } //grab vowels
        if vowelLetters.count > lowercaseWord.count / 2  {
            wordsMoreThanHalfVowels.append(word)
        }
    }
    
    return wordsMoreThanHalfVowels
}

func isVowel(_ character: Character) -> Bool {
    let vowels: [Character] = ["A", "E", "I", "O", "U"]
    
    return vowels.contains(character)
}

areVowelsMoreThanHalf()
