//
//  ContentView.swift
//  QRCodeView
//
//  Created by chauveau on 26/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Votre panier de recyclage est prêt.")
                .bold()
            
            Image("QRCode")
            
            VStack(alignment: .leading) {
                HStack {
                    Text("1.")
                    .font(.system(size: 20))
                    .bold()
                    Text("Scannez le QR Code à l'aide du lecteur prévu à cet effet sur la benne.")
                    .fixedSize(horizontal: false, vertical: true)
                } .padding()
                
                HStack {
                    Text("2.")
                    .font(.system(size: 20))
                    .bold()
                    Text("Déposez vos bouteilles.")
                } .padding()
                
                HStack {
                    Text("3.")
                        .font(.system(size: 20))
                        .bold()
                    Text("Voyez votre bon d'achat directement crédité sur votre compte.")
                    .fixedSize(horizontal: false, vertical: true)
                } .padding()
                
            } .padding()
            
            HStack {
                Text("Retrouvez votre QR Code dans la rubrique")
                    .bold()
                Image(systemName: "person.circle.fill").resizable()
                    .frame(width: 25.0, height: 25.0)
                    .foregroundColor(Color("GreenForButtons"))
                Text(".")
            }
        }
    }
}

struct QRCode: View {
    @State var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show Detail")
        } .sheet(isPresented: $showingDetail) {
            DetailView()
        }
    }
}

struct QRCode_Previews: PreviewProvider {
    static var previews: some View {
        QRCode()
    }
}
