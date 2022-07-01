//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "countries", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let countries = content.components(separatedBy: "\n")


let testwo = ["United States", "United Arab Emerits", "Panama", "Mexico","Apple", "Eat", "Absteinous", "Adventitious", "Puppy", "Uganda", "Ugandu", "Aaeppp", "Nik", "Nikpinto", "Emerits", "Papua New Guinea", "Equatorial Guinea", "Guinea-Bissau", "Guinea"]

//let countries2 : [String] =
//["Congo",
//  "Czech Republic",
//  "Democratic People's Republic of Korea",
//  "Korea",
//  "Democratic Republic of the Congo",
//  "Dominica",
//  "Dominican Republic",
//  "Guinea",
//  "Guinea-Bissau",
//  "Lao People's Democratic Republic",
//  "Micronesia (Federated States of)",
//  "Papua New Guinea",
//  "Equatorial Guinea",
//  "Republic of Korea",
//  "Saudi Arabia",
//  "South Africa",
//  "United Arab Emirates",
//  "United Kingdom",
//  "United States of America",]
//
//
//
//func findCountryNameDuplicated3() {
//
//    var duplicateNamesFound: [String] = []
//
//        let targetName = "Guinea"
//        
//        
//        for country in countries2 {
//
//            let text = targetName//Was "Guinea"
//            
//            if country == text {
//                print("All Satisfy \(text) - \(country)")
//                
//            } else if duplicateNamesFound.contains(text) {
//                print("Duplicate found in array \(text)")
//                
//            } else {
//                let countrAllSpaces = country.replacingOccurrences(of: "-", with: " ")
//                let wordList = countrAllSpaces.components(separatedBy: " ")
//                
//                if (wordList.contains(where: { text.contains($0) })) {
//                    duplicateNamesFound.append(country)
//                    print("Origin \(text)")
//                    print("... \(country)")
//                    }
//
//            }
//
//        }//for
//print(duplicateNamesFound)
//    }
//findCountryNameDuplicated3()

// THE WINNER!

func findCountryNameDuplicated6() {
    
    var duplicateNamesFound: [String] = []
    
    for country in countries {
        
        let targetName = country
        
        for country in countries {
            
            if country == targetName {
                print ("Duplicate \(targetName) - \(country)")
            } else if country.contains(targetName) {
                duplicateNamesFound.append(country)
                print("Origin \(targetName)")
                print("... \(country)")
            }
        }
    }
    print(duplicateNamesFound)
}
findCountryNameDuplicated6()

