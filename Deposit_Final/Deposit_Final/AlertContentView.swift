//
//  ContentView.swift
//  DepositScroll
//
//  Created by melono on 30/03/2020.
//  Copyright © 2020 melono. All rights reserved.
//

import SwiftUI

struct AlertContentView: View {
    var body: some View {
       ScrollView(.horizontal) {
            HStack(spacing: 20) {
                AlertViewOne()
                .frame(width: UIScreen.main.bounds.width, height: 750)
                //
                AlertViewTwo()
                .frame(width: UIScreen.main.bounds.width, height: 750)
                //
                AlertViewThree()
                .frame(width: UIScreen.main.bounds.width, height: 750)
            }
        }
    }
}

struct AlertContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlertModalSheet()
    }
}

struct AlertModalSheet: View {
    @State var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show Detail")
        }.sheet(isPresented: $showingDetail) {
            AlertContentView()
        }
    }
}
