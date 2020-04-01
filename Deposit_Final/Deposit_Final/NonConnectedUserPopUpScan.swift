//
//  NonConnectedUserPopUpScan.swift
//  Welcome_View
//
//  Created by chauveau on 30/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct NonConnectedUserPopUpScan: View {
@State var showPopup = false
    
var body: some View {
    
    ZStack {
        Image("")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                withAnimation { self.showPopup.toggle() }
        }
        VStack {
            Text ("SCANNEZ LE CODE BARRE")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.top,400)
            
            //
            Button(action: {
                withAnimation
                { self.showPopup.toggle() } //Ecran de Nicolas
            }) {
                VStack{
                    Spacer()
                    Text("JE VALIDE MON PANIER")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("GreenForButtons"))
                        .cornerRadius(20)
                }
            }
            Spacer().frame(height:15)
        }
        //
        if showPopup {
            VStack {
                Spacer()
                CustomActionSheet(show: $showPopup)
                    .offset(y:self.showPopup ? 0 : UIScreen.main.bounds.height)
                    .padding(.top, 100.0)
            }
        }
    }        .animation(.default)
}



struct CustomActionSheet : View {
    @Binding var show : Bool
    @State var showingDetail = false
    
    var body: some View {
        
        NavigationView {
        
   VStack {
        Text("Pour profiter de toutes les fonctionnalités de votre application DEPOSIT et cumuler des bons d'achat, veuillez créer votre compte utilisateur.")
            .fixedSize(horizontal: false, vertical: true)
            .font(.headline)
            .multilineTextAlignment(.center)
            .padding()
    
    Spacer().frame(height: 10)
    
        Button(action: {self.showingDetail.toggle()}) {
        Text("JE CRÉE MON COMPTE MAINTENANT !")
        .foregroundColor(.white)
        .fontWeight(.light)
        .padding()
        .background(Color("GreenForButtons"))
        .cornerRadius(10)
    } .sheet(isPresented: $showingDetail) {
    ContentView()
    
    
   }
    .padding(.bottom,UIApplication.shared.windows.last?.safeAreaInsets.bottom)
    .background(Color.white)
    .cornerRadius(5)
    } .navigationBarTitle("")
}
}
}
}

struct NonConnectedUserPopUpScan_Previews: PreviewProvider {
    static var previews: some View {
        NonConnectedUserPopUpScan()
    }
}
