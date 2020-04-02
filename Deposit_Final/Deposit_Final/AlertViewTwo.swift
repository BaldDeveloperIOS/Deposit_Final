//
//  Avertissements1View.swift
//  DepositScroll
//
//  Created by melono on 30/03/2020.
//  Copyright © 2020 melono. All rights reserved.
//


import SwiftUI

struct AlertViewTwo: View {
    var body: some View {
        VStack {
            HStack {
                Text("Notre concept")
            }
            Divider()
            Spacer().frame(height: 50)
           
            VStack {
                Image("SCAN").resizable()
                    .frame(width: 300, height: 175.0)
                .cornerRadius(20.0)
            Text("Scannez les codes barres de vos bouteilles et emballages en plastique à recycler.")
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
            }
            
            Spacer().frame(height: 40)
            
            VStack {
                Image("MAPS").resizable()
                .frame(width: 300, height: 175.0)
                .cornerRadius(20.0)
            Text("Repérez les conteneurs dédiés au plastique disponibles près de chez vous.")
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
            }
                
            Spacer().frame(height: 130)
            
            VStack {
            Text("Cumulez des bons d'achat à dépenser chez nos commerçants partenaires !")
                .multilineTextAlignment(.center)
                .frame(height: -126.0)
                .background(Color("GreenForButtons"))
                .cornerRadius(20)
                .padding()
            } .padding()
            
            Spacer()
            
            Image("dot2").resizable()
                .frame(width: 40, height: 15)
            .padding()
            
        }
    }
}

struct AlertViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewTwo()
    }
}

