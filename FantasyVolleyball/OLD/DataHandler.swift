//
//  DataHandler.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 1/25/23.
//

import Foundation

public class DataHandler {
    
    func populatePlayers() -> [Player] {
        let jsonData = pullData()
        let players = convertData(jsonData: jsonData)
        return players
    }
    
    private func pullData() -> Data {
        if let path = Bundle.main.path(forResource: "SamplePlayers", ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return jsonData
            } catch {
                
            }
        }
        
        return Data()
    }
    
    private struct PlayersData: Codable {
        let players: [Player]
    }
    
    private func convertData(jsonData: Data) -> [Player] {
        let jsonDecoder = JSONDecoder()
        
        do {
            let playersData = try jsonDecoder.decode(PlayersData.self, from: jsonData)
            return playersData.players
        } catch {
            
        }
        
        return []
    }
}
