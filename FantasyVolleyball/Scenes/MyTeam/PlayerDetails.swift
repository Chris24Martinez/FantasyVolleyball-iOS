//
//  PlayerDetails.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 1/25/23.
//

import SwiftUI

struct PlayerDetails: View {
    var player: Player
    
    var body: some View {
        VStack {
            Text(player.name)
                .font(.title)
                .padding(.bottom)
            Text("Position: \(player.position)")
                .font(.body)
                .italic()
                .padding(.bottom)
            Text("School: \(player.school)")
                .font(.body)
                .padding()
        }
    }
}

struct PlayerDetails_Previews: PreviewProvider {
    static var previews: some View {
        let examplePlayer = Player(id: 0, name: "Example", position: "Ace", school: "UGA")
        PlayerDetails(player: examplePlayer)
    }
}
