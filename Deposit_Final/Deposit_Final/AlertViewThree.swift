//
//  AvertissementsView.swift
//  DepositScroll
//
//  Created by melono on 30/03/2020.
//  Copyright © 2020 melono. All rights reserved.
//

import SwiftUI

struct AlertViewThree: View {
    
    var body: some View {
        VStack {
            Text("Notre concept")
                .foregroundColor(Color.black)
            Divider()
            Spacer()
            Text("Pour profiter de tout ces avantages et fonctionnalités, vous pouvez créer un compte dès à présent !")
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .lineLimit(51)
                .padding()
            
            Spacer()
            
            VStack {
                
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("JE CRÉE MON COMPTE MAINTENANT! ")
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(height: 76.0)
                    .accentColor(Color.white)
                    .background(/*@START_MENU_TOKEN@*/Color("GreenForButtons")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/19.0/*@END_MENU_TOKEN@*/)
            }
            //
                Button(action: {}) {
                Text("M'identifier plus tard")
                    .underline()
                    .fontWeight(.light)
                    .padding()
                    .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            }
            }
            
            Spacer()
            //
            Text("Vous ne souhaitez pas vous enregistrer ?                        Pas de problème ! Vous pouvez tout de même voir quels conteneurs sont disponibles près de chez vous. ")
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
        }
    }
}


struct AlertViewThree_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewThree()
    }
}
