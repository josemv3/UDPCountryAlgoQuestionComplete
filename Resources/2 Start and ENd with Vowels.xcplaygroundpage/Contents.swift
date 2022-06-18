//: [Previous](@previous)

import Foundation

let sowpods2: [String] = ["Apple", "Eat", "Absteinous", "Adventitious", "Puppy", "Uganda", "Ugandu", "Aaeppp", "Nik"]

func getCounbtriesStartEndWithVowel() -> [String] {
    var wordsArray: [String] = []
    for word in sowpods2 {
        if word.starts(with: "A") || word.starts(with: "E") || word.starts(with: "I") || word.starts(with: "O") || word.starts(with: "U"), word.hasSuffix("a") || word.hasSuffix("e") || word.hasSuffix("i") || word.hasSuffix("o") || word.hasSuffix("u"){
            wordsArray.append(word)
        }
    }
    return wordsArray
}
//first version didnt work because I added a comma after each suffix instead of just or ||


getCounbtriesStartEndWithVowel()
