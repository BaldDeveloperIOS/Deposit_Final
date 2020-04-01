//
//  ContentView.swift
//  Welcome_View
//
//  Created by chauveau on 25/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { geometry in
                    
                    VStack {
                        
                        Spacer()
                        
                        Image("Logo_Trash")
                        
                        Image("Logo")
                        
                        Spacer()
                        
                        Text("LES BONNES PRATIQUES ENFIN RECOMPENSÉES")
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("GreenForButtons")/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        ZStack (alignment: .top){
                            
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: 280)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3)
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(height: 200)
                                    .foregroundColor(.white)
                                
                                VStack {
                                    NavigationLink(destination: ConexForm()) {
                                        
                                        Button(action: {}) {
                                            Text("Connexion")
                                        }
                                        .padding()
                                        .frame(width: 250, height: 60)
                                        .background(Color.white)
                                        .foregroundColor(.black)
                                        .cornerRadius(15.0)
                                        .font(.headline)
                                        .shadow(color: .black, radius: 5)
                                    }
                                    
                                    Spacer().frame(height: 20)
                                    
                                    NavigationLink(destination: InscriptionForm()) {
                                        Button(action: {}) {
                                            Text("Inscription")
                                        }
                                        .padding()
                                        .frame(width: 250, height: 60)
                                        .background(Color("GreenForButtons"))
                                        .foregroundColor(.white)
                                        .cornerRadius(15.0)
                                        .font(.headline)
                                        .shadow(color: .black, radius: 5)
                                    }
                                }
                            }
                        }
                    } .edgesIgnoringSafeArea(.bottom)
                }
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodee()
    }
}

struct QRCodee: View {
    @State var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show Detail")
        }.sheet(isPresented: $showingDetail) {
            ContentView()
        }
    }
}

