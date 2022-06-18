//: [Previous](@previous)

import Foundation


let sowpods2: [String] = ["Apple", "Eat", "Absteinous", "Adventitious", "Puppy", "Uganda", "Ugandu", "Aaeppp", "Nik"]

var shortestCountry = findShortestCountry()
// While index < sowpods2
func findShortestCountry () -> String {
    var shortestCountry = ""
    var index = 0
    
    while index < sowpods2.count {
        if shortestCountry.count == 0 {
            shortestCountry = sowpods2[index]
            index += 1
        }
        else if sowpods2[index].count < shortestCountry.count {
            shortestCountry = sowpods2[index]
        }
        index += 1
    }
    return shortestCountry
}

func findAllShortestCountries () -> [String]{
    var allShortestCountries: [String] = []
    
    for word in sowpods2 {
        if shortestCountry.count == word.count{
            allShortestCountries.append(word)
        }
           
    }
    return allShortestCountries
}
findShortestCountry()
findAllShortestCountries()
