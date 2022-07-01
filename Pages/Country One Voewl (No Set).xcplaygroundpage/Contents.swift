//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "countries", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let countries = content.components(separatedBy: "\n")


//Using 2 helper func
func findCountriesWithOneVowel (countries: [String]) -> [String] {
    var wordsWithOneVowel: [String] = []
   
    for country in countries {
        let lowercaseWord = country.lowercased()
        let letters = Array(lowercaseWord) //each letter in array
        let vowelLetters = letters.filter { isVowel($0) } //grab vowels
        let vowelsNoDuplicates = removeDuplicatesFrom4(String(vowelLetters))
        if vowelsNoDuplicates.count == 1 {
            wordsWithOneVowel.append(country)
        }
    }
    print(wordsWithOneVowel)
    return wordsWithOneVowel
}

func isVowel(_ character: Character) -> Bool {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    return vowels.contains(character)
}

func removeDuplicatesFrom4(_ str: String) -> String {
    var usedChar = String()
    str.forEach { if !usedChar.contains($0) { usedChar.append($0) }}
    return usedChar
}




//No helper func (using guards)
func countriesWithOneVowel2(countries: [String]) -> [String] {
    var wordsWithOneVowel: [String] = []
    let vowels: [Character] = ["a", "e", "i", "o", "u"]



    for country in countries {

        if country == "" {
            continue
        }

        var matched = true
        var foundVowel: Character?
        for letter in country.lowercased() {
            guard vowels.contains(letter) else {
                continue
            }
            guard let vowel = foundVowel else {
                foundVowel = letter
                continue
            }
            if letter == vowel {
                continue
            }
            matched = false
            break
        }
        if matched {
            wordsWithOneVowel.append(country)
        }
    }
    return wordsWithOneVowel
}

//Using only if and no guards:

func countriesWithOneVowel3(countries: [String]) -> [String] {
    var wordsWithOneVowel: [String] = []
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    for country in countries {
        
        if country.isEmpty {
            continue
        }
        
        var matched = true
        var foundVowel: Character?
        
        for letter in country.lowercased() {
            if vowels.contains(letter) == false {
                continue
            }
            
            if let vowel = foundVowel {
                if letter == vowel {
                    continue
                }
                matched = false
                break
            }
            foundVowel = letter
        }
        if matched {
            wordsWithOneVowel.append(country)
        }
    }
    return wordsWithOneVowel
}
