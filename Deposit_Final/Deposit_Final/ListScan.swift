//
//  ListScan.swift
//  Welcome_View
//
//  Created by chauveau on 01/04/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ListScan: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            List
                {
                    VStack{
                        Button(action:{}){
                            HStack{
                                Image("S.PelleGrino")
                                    .resizable()
                                    .frame(width:50.0,height:80.0)
                                VStack(alignment: .leading){
                                    Text("S.Pellegrino 1L")
                                    Text("X 6" )
                                        .fontWeight(.bold)
                                }
                                Spacer()
                                Text("Modifier")
                                Image(systemName:"chevron.right")
                                    .padding(.bottom,1)}}
                    }
                    Button(action:{}){
                        HStack{
                            Image("Evian")
                                .resizable()
                                .frame(width:50.0,height: 80.0)
                            VStack(alignment: .leading){
                                Text("Evian 1L")
                                Text("X 2" )
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            Text("Modifier")
                            Image(systemName:"chevron.right")
                                .padding(.bottom,1)}
                    }
                    Button(action:{}){
                        HStack{ Image("Cristaline")
                            .resizable()
                            .frame(width:50.0,height: 80.0)
                            VStack(alignment: .leading){
                                Text("Cristaline 1L")
                                Text("X 1" )
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            Text("Modifier")
                            Image(systemName:"chevron.right")
                                .padding(.bottom,1)
                        }}
                    
                    Button(action:{}){
                        HStack{ Image("Volvic")
                            .resizable()
                            .frame(width:50.0,height: 80.0)
                            VStack(alignment: .leading){
                                Text("Volvic 1L")
                                Text("X 3" )
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            Text("Modifier")
                            Image(systemName:"chevron.right")
                                .padding(.bottom,1)
                        }}
                    
                    Button(action:{}){
                        HStack{ Image("Vittel")
                            .resizable()
                            .frame(width:50.0,height: 80.0)
                            VStack(alignment: .leading){
                                Text("Vittel 1L")
                                Text("X 2" )
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            Text("Modifier")
                            Image(systemName:"chevron.right")
                                .padding(.bottom,1)
                        }
                    }
            }
            .navigationBarTitle("Panier")
            .navigationBarItems(leading:
                
                
                Button(action:{self.presentationMode.wrappedValue.dismiss()}){
                        Image(systemName: "chevron.left");Text( "Retour")
                    },
                                trailing:
        
        NavigationLink(destination: DetailView()) {
            
                    Text("Valider");Image(systemName: "chevron.right")
            
                })
        }
    }
    
    struct ListScan_Previews: PreviewProvider {
        static var previews: some View {
            ListScan()
        }
}
}
