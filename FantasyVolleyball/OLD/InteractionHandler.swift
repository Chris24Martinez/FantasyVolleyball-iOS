//
//  InteractionHandler.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 1/25/23.
//

import Foundation

public class InteractionHandler {
    
    func providePlayers() -> [Player] {
        let dataHandler = DataHandler()
        let players: [Player]
        players = dataHandler.populatePlayers()
        return players
    }
    
    func onRowClick(player: Player) -> PlayerDetails {
        return PlayerDetails(player: player)
    }
}
