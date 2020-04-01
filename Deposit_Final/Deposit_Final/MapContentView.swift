//
//  ContentView.swift
//  Map
//
//  Created by chauveau on 26/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI



struct MapContentView: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing){
        MapView()
            .edgesIgnoringSafeArea(.vertical)
            VStack {
            VStack {
                
                    VStack (alignment: .center) {
                    Image("Vert")
                    Text("Disponible")
                        .font(.system(size: 10))
                        .foregroundColor(Color.black)
                }
                
                VStack (alignment: .center) {
                    Image("Rouge")
                    Text("Indisponible")
                    .font(.system(size: 10))
                    .foregroundColor(Color.black)
                    }
                
                VStack (alignment: .center) {
                    Image("Bleu")
                    Text("Commerçant")
                        .font(.system(size: 10))
                    .foregroundColor(Color.black)
                    }
                
            } .padding(10)
                .background(Color.white)
                    .cornerRadius(10)
                .shadow(radius: 5)
                } .padding(10)
        }
}
}

struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView()
    }
}
