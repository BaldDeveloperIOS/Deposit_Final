//
//  ContentView.swift
//  partenaire
//
//  Created by kherfani on 01/04/2020.
//  Copyright © 2020 kherfani. All rights reserved.
//

import SwiftUI

struct PartnersList: View {
    var body: some View {
        
        NavigationView
            {

        List {
            HStack  {
                Image("Casino")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("50 m")
                    }
            HStack  {
                Image("Lidl")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("70 m")
                    }
            HStack {
                Image("Spar")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("100 m")
                    }
             HStack {
                Image("Al Market")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("200 m")
                    }
            HStack {
                Image("Geant")
                Spacer()
                padding()
                padding()
                Image("Marche")
                Spacer()
                Text ("250 m")
                    }
          HStack{
                Image("Carrefour")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                  Text ("300 m")
                  }
            HStack{
                Image("Market")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("325 m")
                  }
            HStack{
                Image("Go Market")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("1 Km")
                  }
            HStack{
                Image("Leclerc")
                Spacer()
                padding()
                Image("Marche")
                Spacer()
                Text ("5 km")
                  }
}
            .navigationBarTitle("Partenaires")
            .navigationBarItems(leading:
                           Button(action: {
                               print("")
                           }) {
                            Image(systemName: "chevron.left");Text( "retour")}
                   )
    }
}

struct PartnersList_Previews: PreviewProvider {
    static var previews: some View {
        PartnersList()
    }
}
}
