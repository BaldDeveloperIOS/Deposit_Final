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
        VStack {
            HStack {
                Text("Avertissement")
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
        }
    }
}

struct AlertViewOne_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewOne()
    }
}


