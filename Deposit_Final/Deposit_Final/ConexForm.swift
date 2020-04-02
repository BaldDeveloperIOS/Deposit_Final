//
//  ContentView.swift
//  ConnexionForm
//
//  Created by chauveau on 26/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsername = "Romain"
let storedPassword = "Test"


struct ConexForm: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var authenticationDidFail: Bool = false
    @State var authentificationDidSucceed : Bool = false
    @State var authentificationSucceded: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                UserImage()
                HelloText()
                UserName(username: $username)
                Password(password: $password)
                if authenticationDidFail {
                    Text("Vos informations de connexion sont incorrectes. Veuillez réessayer.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    if self.username == storedUsername && self.password == storedPassword {
                        self.authentificationDidSucceed = true
                        self.authenticationDidFail = false
                        self.authentificationSucceded = true
                    } else {
                        self.authenticationDidFail = true
                        self.authentificationDidSucceed = false
                    }
                }) {
                    LoginButtonContent()
                }
            }
            .padding()
          if authentificationDidSucceed {
               /* Text("Connexion réussie ")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.yellow)
                    .cornerRadius(20.0)
                    .animation(Animation.default)
            } */
            
        }
        }
    }
}
    
struct ConexForm_Preview: PreviewProvider {
    static var previews: some View {
        ConexForm()
    }
}

struct HelloText: View {
    var body: some View {
        Text("Connexion")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
    }
}

struct UserImage: View {
    var body: some View {
         Image("Logo")
                   .resizable()
                   .frame(width: 210, height: 50)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Connexion")
            .padding()
            .frame(width: 250, height: 60)
            .background(Color("GreenForButtons"))
            .foregroundColor(.white)
            .cornerRadius(15.0)
            .font(.headline)
            .shadow(color: .black, radius: 5)
    }
}

struct UserName: View {
    
    @Binding var username: String
    var body: some View {
        TextField("Votre pseudo", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}

struct Password: View {
    @Binding var password: String
    var body: some View {
        SecureField("Mot de passe", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}

