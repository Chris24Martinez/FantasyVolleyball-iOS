//
//  Player.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 1/25/23.
//

import Foundation

struct Player: Identifiable, Codable {
    var id: Int
    var name: String
    var position: String
    var school: String
    
    init(id: Int = 0, name: String = "", position: String = "", school: String = "") {
        self.id = id
        self.name = name
        self.position = position
        self.school = school
    }
}
