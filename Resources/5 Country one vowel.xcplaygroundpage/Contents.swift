//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "countries", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let countries = content.components(separatedBy: "\n")

func countryHasOnlyOneVowel() {
    var countryWithA: [String] = []
    
    for country in countries {
        let countryLowercase = country.lowercased()
        let hasA = countryLowercase.contains("a")
    
//        let hasOtherVowels = !country.contains("E") && !country.contains("I") && !country.contains("O") && !country.contains("U") && !country.contains("e") && !country.contains("i") && !country.contains("o") && !country.contains("u")
        
//      if (hasA && hasLowercaseA) && hasOtherVowels { (Happens first) && Then this
//        countryWithA.append(country)
//      }
    
        let nonAVowels: [Character] = ["e", "i", "o", "u"]
        let hasNonA = countryLowercase.contains(nonAVowels[0]) || countryLowercase.contains(nonAVowels[1]) || countryLowercase.contains(nonAVowels[2]) || countryLowercase.contains(nonAVowels[3])
        
        if hasA && hasNonA {
            
            countryWithA.append(country)
        }
    }
}
//countryHasOnlyOneVowel()

//Version solved for a

func countryHasOnlyOneVowel2() {

    var countriesWithA: [String] = []
    
    for country in countries {
        
        let lowercaseCountry = country.lowercased()
        let hasA = lowercaseCountry.contains("a")
        let hasOtherVowels = !lowercaseCountry.contains("e") && !lowercaseCountry.contains("i") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
        
        if hasA && hasOtherVowels {
            countriesWithA.append(country)
        }
    }
}
countryHasOnlyOneVowel2()

    func containsAllVowels(word: String) -> Bool{
    let lowerCaseWord = word.lowercased()
    return lowerCaseWord.contains("a") && lowerCaseWord.contains("e") && lowerCaseWord.contains("i") && lowerCaseWord.contains("o") && lowerCaseWord.contains("u")
    
}



//func countryHasOnlyOneVowel3() -> [String] {
//    var contriesWithOneVowel: [String] = []
//
//    for country in countries {
//        let lowercaseCountry = country.lowercased()
//        let hasA = lowercaseCountry.contains("a")
//        let hasNoOtherRemainingVowelsA = !lowercaseCountry.contains("e") && !lowercaseCountry.contains("i") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
//
//        let hasE = lowercaseCountry.contains("e")
//        let hasNoOtherRemainingVowelsE = !lowercaseCountry.contains("a") && !lowercaseCountry.contains("i") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
//
//        let hasI = lowercaseCountry.contains("i")
//        let hasNoOtherRemainingVowelI = !lowercaseCountry.contains("a") && !lowercaseCountry.contains("e") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
//
//        if hasA == true{
//            contriesWithOneVowel.append(country)
//
//        } else if (hasE && hasNoOtherRemainingVowelsE){
//            contriesWithOneVowel.append(country)
//
//        } else if (hasI && hasNoOtherRemainingVowelI) {
//            contriesWithOneVowel.append(country)
//        }
//    }
//    print(contriesWithOneVowel.count)
//        return contriesWithOneVowel
//}
//countryHasOnlyOneVowel3()

func hasAVowelOnly(country: String) -> Bool  {
    let lowercaseCountry = country.lowercased()
    let hasA = lowercaseCountry.contains("a")
    let hasNoOtherRemainingVowelsA = !lowercaseCountry.contains("e") && !lowercaseCountry.contains("i") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
    return hasA && hasNoOtherRemainingVowelsA
}

func hasEVowelOnly(country: String) -> Bool  {
    let lowercaseCountry = country.lowercased()
    let hasE = lowercaseCountry.contains("e")
    let hasNoOtherRemainingVowelsE = !lowercaseCountry.contains("a") && !lowercaseCountry.contains("i") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
    return hasE && hasNoOtherRemainingVowelsE
}

func hasIVowelOnly(country: String) -> Bool  {
    let lowercaseCountry = country.lowercased()
    let hasI = lowercaseCountry.contains("i")
    let hasNoOtherRemainingVowelI = !lowercaseCountry.contains("a") && !lowercaseCountry.contains("e") && !lowercaseCountry.contains("o") && !lowercaseCountry.contains("u")
    return hasI && hasNoOtherRemainingVowelI
}

func countryHasOnlyOneVowel3() -> [String] {
    var contriesWithOneVowel: [String] = []
    
    for country in countries {
        let lowercaseCountry = country.lowercased()
        
        let hasA = hasAVowelOnly(country: lowercaseCountry)
        let hasE = hasEVowelOnly(country: lowercaseCountry)
        let hasI = hasIVowelOnly(country: lowercaseCountry)
        
        if hasA == true{
            contriesWithOneVowel.append(country)
            
        } else if (hasE == true) {
            contriesWithOneVowel.append(country)
            
        } else if (hasI == true) {
            contriesWithOneVowel.append(country)
        }
    }
    print(contriesWithOneVowel.count)
        return contriesWithOneVowel
}
countryHasOnlyOneVowel3()
