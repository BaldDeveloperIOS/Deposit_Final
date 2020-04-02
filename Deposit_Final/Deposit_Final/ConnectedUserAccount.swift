//
//  ContentView.swift
//  Test
//
//  Created by Peltier Romain on 26/03/2020.
//  Copyright © 2020 Peltier Romain. All rights reserved.
//

import SwiftUI



// REGIS BRICOLAGE

struct ConnectedUserAccount: View {
    var body: some View {
        
        VStack {
            
            
            
            /**
             Titre
             */
            
            
            HStack {
                
                Text("Bonjour Romain, ")
                    
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color("GreenForButtons"))
            } .padding()
            
            Spacer().frame(height: 35)
            /**
             Le bloc rectangle blanc
             */
            ZStack {
                
                /*  RoundedRectangle(cornerRadius: 30)
                 .frame(width: 380, height: 300)
                 .foregroundColor(.white)
                 .shadow(color: .black, radius: 3)*/
                
                
                VStack(spacing: 0){
                    Text("Votre cagnotte de réduction est de ")
                        .font(.system(size: 20))
                    
                    
                    HStack {
                        
                        Text("16.40")
                            .font(.system(size: 35))
                            .bold()
                            .foregroundColor(.blue)
                        
                        
                        Text("EUR")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.blue)
                    }
                    
                    Text("Faites scanner ce code-barre à votre commerçant")
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 15))
                        .padding([.bottom, .top])
                    
                    
                    Image("code")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 50)
                        .mask(RoundedRectangle(cornerRadius: 10.0))
                    
                }
                .padding(40)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3)
                )
                    .padding(.bottom)
                
                
                
                
                
                
                
            } .padding()
            
            Spacer().frame(height: 35)
            /**
             Caroussel
             */
            SomeCaroussel()
            
            Spacer().frame(height: 35)
            /**
             Liste de buttons
             */
            VStack {
                
                Button(action: {}) {
                    Spacer()
                    Text("Mes informations").padding()
                    Spacer()
                    
                    
                    Image(systemName: "chevron.right")
                    
                }
                .padding()
                .frame(width: 390, height: 40)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(15.0)
                .font(.headline)
                .shadow(color: .black, radius: 3)
                
                Spacer().frame(height: 25)
                
                
                
                Button(action: {}) {
                    Spacer()
                    Text("Mes scans en attente").padding()
                    Spacer()
                    
                    Image(systemName: "1.circle.fill")
                    .foregroundColor(.red)
                    Image(systemName: "chevron.right")
                    
                }
                    
                .padding()
                .frame(width: 390, height: 40)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(15.0)
                .font(.headline)
                .shadow(color: .black, radius: 3)
                
                Spacer().frame(height: 15)
                
            }
            
            
        }
        
    }
}

struct ConnectedUserAccount_Previews: PreviewProvider {
    static var previews: some View {
        ConnectedUserAccount()
    }
}







//CAROUSSEL


struct SomeCaroussel: View {
    private var items = ["stat1","stat2","stat3"]
    
    @State private var index = 0
    
    var body: some View {
        VStack {
            Image(items[index])
                .resizable()
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 180)
                .background(Color.white)
                .cornerRadius(5)
                .padding([.leading, .trailing], 40)
            
            
            HStack{
                ForEach(0...items.count - 1, id: \.self) {
                    i in
                    Button(action: {
                        self.index = i
                    }, label: {
                        Circle()
                            .fill(self.index == i ?
                                
                                Color.black : Color.gray)
                            .frame(width: 8, height: 30)
                        
                    })
                }
            }
            
            
        }
    }
    
}
