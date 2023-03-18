//
//  Language.swift
//  WordSlider
//
//  Created by Selim Olmaz on 18.03.2023.
//

import Foundation

struct GermanWord: Codable {
    let name: String
    let id: Int
    let inEnglish: String
}

class JsonFileReader {
    func readJSONFile() -> [GermanWord]? {
        var words: [GermanWord]?
        if let path = Bundle.main.path(forResource: "Words", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                words = try JSONDecoder().decode([GermanWord].self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        return words
    }
}
