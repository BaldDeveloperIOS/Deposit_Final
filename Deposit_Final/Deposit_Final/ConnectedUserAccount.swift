//
//  ContentView.swift
//  Test
//
//  Created by Peltier Romain on 26/03/2020.
//  Copyright © 2020 Peltier Romain. All rights reserved.
//

import SwiftUI

struct ConnectedUserAccount: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                Text("Bonjour Romain")
                    
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color("GreenForButtons"))
            } .padding()
            
            ZStack {
                
                VStack(spacing: 0){
                    Text("Votre cagnotte de réduction est de")
                        .font(.system(size: 20))
                    
                    
                    HStack {
                        
                        Text("17.32")
                            .font(.system(size: 35))
                            .bold()
                            .foregroundColor(.blue)
                        
                        
                        Text("EUR")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.blue)
                    }
                    VStack {
                    Text("Faites scanner ce code-barre")
                        Text("par votre commerçant")
                    }
                        .font(.system(size: 15))
                        .fixedSize(horizontal: false, vertical: true)
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
                
                
                
                
                
                
                
            }
            
            /**
             Caroussel
             */
            SomeCaroussel()
            
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
                
                Spacer().frame(height: 15)
                
                Button(action: {}) {
                    Spacer()
                    Text("Mes scans en attente").padding()
                    Spacer()
                    
                    VStack {
                        Image(systemName: "1.circle.fill")
                            .foregroundColor(.red)
                        
                    }
                    
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
                
                Button(action: {}) {
                    Spacer()
                    Text("Nos partenaires") .padding()
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
                
                Spacer().frame(height: 15)
                
                Button(action: {}) {
                    Spacer()
                    Text("Qui sommes-nous ?")
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
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 140)
                .background(Color.white)
                .cornerRadius(5)
                .shadow(color: .black, radius: 3)
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
