//
//  LandingPage.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 10/31/22.
//

import SwiftUI

struct LandingPage: View {    
    let interactionHandler = InteractionHandler()
    
    var body: some View {
        NavigationView {
            List(interactionHandler.providePlayers()) { player in
                NavigationLink {
                    PlayerDetails(player: player)
                } label: {
                    PlayerRow(player: player)
                }
            }
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
