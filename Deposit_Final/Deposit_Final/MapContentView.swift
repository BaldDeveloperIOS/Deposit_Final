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
        MapView()
            .edgesIgnoringSafeArea(.vertical)
    }
}

struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView()
    }
}
