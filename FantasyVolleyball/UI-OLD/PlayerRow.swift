//
//  PlayerRow.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 1/25/23.
//

import SwiftUI

struct PlayerRow: View {
    var player: Player
    
    var body: some View {
        HStack {
            Text(player.name)
            Spacer()
            Text("Position: \(player.position)")
            Spacer()
            Text("School: \(player.school)")
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        let examplePlayer = Player(id: 0, name: "Example", position: "Ace", school: "UGA")
        PlayerRow(player: examplePlayer)
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
