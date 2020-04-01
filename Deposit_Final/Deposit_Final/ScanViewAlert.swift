//
//  ContentView.swift
//  TEST
//
//  Created by kherfani on 28/03/2020.
//  Copyright © 2020 kherfani. All rights reserved.
//

import SwiftUI

struct ScanViewAlert: View {
    @State var showPopup = false
    @State private var IsActive: Bool = false
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("bouteillescan")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture
                    { self.IsActive = true }
                VStack {
                    Text ("Placez le code-barre dans le repère")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .offset(x: 0, y: -36)
                        .padding(.top,400)
                }
                .sheet(isPresented: $IsActive, content: { AlertContentView()})
                
                VStack{
                    Spacer().frame(height: 600)
                    Text("Je valide mon panier")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("GreenForButtons"))
                        .cornerRadius(20)
                        .onTapGesture {
                            self.IsActive.toggle()
                    }
                }
                if showPopup {
                    VStack {
                        Spacer()
                        CustomActionSheetAlert(show: $showPopup)
                            .offset(y:self.showPopup ? 0 : UIScreen.main.bounds.height)
                            .padding(.top, 100.0)
                    }
                }
            }
            .animation(.default)
        }
    }
}

struct ScanViewAlert_Previews: PreviewProvider {
    static var previews: some View {
        ScanViewAlert()
    }
}

//
struct CustomActionSheetAlert : View {
    @State var count = 0
    private var reductionPrice : Double {
        return Double(self.count) * 0.12
    }
    @Binding var show : Bool
    
    var body: some View {
        VStack {
            Text("Votre Bon de reduction pour :")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                Text ("\(self.count) Bouteille(s) ")
                    .padding()
                Stepper("",  onIncrement: {
                    self.count += 1
                }, onDecrement: {
                    self.count -= 1
                })
            }
            
            Text("\( String(format : "%.2f", self.reductionPrice)) € ")
                .font(.headline)
                .padding(.init(top: 0, leading: 0, bottom: 50, trailing: 0))
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("OK")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color("GreenForButtons"))
                    .cornerRadius(10)
            }
        }
        .padding(.bottom,UIApplication.shared.windows.last?.safeAreaInsets.bottom)
        .background(Color.white)
        .cornerRadius(25)
    }
}
