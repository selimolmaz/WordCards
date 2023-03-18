//
//  GermanWords.swift
//  WordSlider
//
//  Created by Selim Olmaz on 18.03.2023.
//

import Foundation

struct GermanWord: Codable {
    let Number: Int
    let German: String
    let inEnglish: String
}

func jsonFileReader() -> [GermanWord] {
    if let path = Bundle.main.path(forResource: "Words", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            let words = try decoder.decode([GermanWord].self, from: data)
            return words
        } catch let error {
            print("Error: \(error)")
        }
    }
    return []
}
