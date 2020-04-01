//
//  TestAlert.swift
//  Welcome_View
//
//  Created by chauveau on 31/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct TestAlert: View {
    @State private var showingAlert = false

    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Rendez-vous dans la rubrique Mon compte."), message: Text("Vous devez être connecté pour profiter de toutes les fonctionnalités offertes par DEPOSIT."), dismissButton: .default(Text("J'ai compris")))
        }
    }
}

struct TestAlert_Previews: PreviewProvider {
    static var previews: some View {
        TestAlert()
    }
}
