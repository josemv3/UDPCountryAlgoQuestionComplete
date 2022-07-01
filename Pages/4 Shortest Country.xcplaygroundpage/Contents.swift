//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "countries", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let countries = content.components(separatedBy: "\n")

let sowpods2: [String] = ["Apple", "Eat", "Absteinous", "Adventitious", "Puppy", "Uganda", "Ugandu", "Aaeppp", "Nik"]

//var shortestCountry = findShortestCountry()
//// While index < sowpods2
//func findShortestCountry () -> String {
//    var shortestCountry = ""
//    var index = 0
//
//    while index < sowpods2.count {
//        if shortestCountry.count == 0 {
//            shortestCountry = sowpods2[index]
//            index += 1
//        }
//        else if sowpods2[index].count < shortestCountry.count {
//            shortestCountry = countries[index]
//        }
//        index += 1
//    }
//    print(shortestCountry)
//    return shortestCountry
//}
//
//func findAllShortestCountries () -> [String]{
//    var allShortestCountries: [String] = []
//
//    for word in sowpods2 {
//        if shortestCountry.count == word.count{
//            allShortestCountries.append(word)
//        }
//
//    }
//    print(allShortestCountries)
//    return allShortestCountries
//}
//findShortestCountry()
//findAllShortestCountries()


var shortestWord = countries[0]

func findShortestCountry2() {
    
    for country in countries {
        
        if country == "" {
            print("empty found")
        }
        else if shortestWord.count > country.count {
            shortestWord = country
        }
    }
    print(shortestWord)
    print(shortestWord.count)
}

func findAllShortestCountries() {
    
    var allShortestCountries: [String] = []
    for country in countries {
        if shortestWord.count == country.count {
            allShortestCountries.append(country)
        }
    }
    print(allShortestCountries)
}
findShortestCountry2()
findAllShortestCountries()
