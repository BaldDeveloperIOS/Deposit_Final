//
//  Avertissements0View.swift
//  DepositScroll
//
//  Created by melono on 30/03/2020.
//  Copyright © 2020 melono. All rights reserved.
//

import SwiftUI

struct AlertViewOne: View {
    var body: some View {
        ZStack (alignment: .bottom){
            VStack {
            HStack {
                Text("Notre concept")
            }
            Divider()
            Spacer()
            Text("DEPOSIT est une application qui vous récompense lorsque vous recyclez vos emballages plastiques !")
                .bold()
                .padding()
                .multilineTextAlignment(.center)
            
            Spacer().frame(height: 40)
            Image("Logo_Trash")
            Spacer()
                Image("dot1").resizable()
                    .frame(width: 40, height: 15)
                .padding()
        }
            
           /* HStack (alignment: .center, spacing: 3.0) {
                Circle()
                    .frame(width: 8.0, height: 10.0)
            .foregroundColor(Color.black)
            
                Circle()
                    .foregroundColor(Color.gray)
                .frame(width: 8.0, height: 10.0)
            
                Circle()
                    .foregroundColor(Color.gray)
                .frame(width: 8.0, height: 10.0)
            
                Spacer()
            
        }  .padding() */
        }
        
    }
}

struct AlertViewOne_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewOne()
    }
}

