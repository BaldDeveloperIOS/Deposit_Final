//
//  ContentView.swift
//  TabBar
//
//  Created by chauveau on 26/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.

import SwiftUI

struct TabBar: View {
    var isUserConnected: Bool = true
    var firstConnexion: Bool = false
    
    var body: some View {
        
        TabView {
        
            if firstConnexion == true {
                AlertModalSheet()
                .tabItem {
                        Image(systemName: "camera.fill")
                            .font(.title)
                        Text("Scan")
                }
            } else {
                ScanView()
                .tabItem {
                        Image(systemName: "camera.fill")
                            .font(.title)
                        Text("Scan")
                }
            }
            
           // TestAlert()
               // NonConnectedUserPopUpScan()
                 /*.tabItem {
                    Image(systemName: "camera.fill")
                        .font(.title)
                    Text("Scan")
            } */
            
            MapContentView()
                .tabItem {
                    Image(systemName: "map")
                        .font(.title)
                    Text("Carte")
            }
            
            if isUserConnected == false {
               
                    ContentView()
                .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.title)
                        Text("Mon compte")
                }
            } else {
                ConnectedUserAccount()
                .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.title)
                        Text("Mon compte")
                }
            }
        } .accentColor(Color("GreenForButtons"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
