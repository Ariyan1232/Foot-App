//
//  Login.swift
//  Foot
//
//  Created by Ariyan Nagratha on 2023-04-29.
//

import SwiftUI

@MainActor
final class LoginModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserData)
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
}

struct Login: View {
    @StateObject private var viewModel = LoginModel()
    var body: some View {
        //Foot
        ZStack {
        Color(red: 0.32549020648002625, green: 0.6196078658103943, blue: 0.5411764979362488)
            .ignoresSafeArea()
            VStack {
                //LogoMakr-5DQ6Mt 2
                Image(uiImage: #imageLiteral(resourceName: "footLogo"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 86, height: 200)
                    .clipped()
                    .frame(width: 86, height: 200)
                //Username
                Text("Username").font(.custom("Inter Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding()
                //Personal Use Bevel
                TextField("Email...", text: $viewModel.email)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.8980392217636108, green: 0.7764706015586853, blue: 0.7411764860153198, alpha: 1)))
                    .cornerRadius(10)
                //Password
                Text("Password").font(.custom("Inter Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding()
                //Personal Use Box
                SecureField("Password...", text: $viewModel.password)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.8980392217636108, green: 0.7764706015586853, blue: 0.7411764860153198, alpha: 1)))
                    .cornerRadius(10)
                
                Button {
                    viewModel.signIn()
                } label: {
                    Text("Sign In")
                        .padding()
                        .font(.headline)
                        .background(Color(#colorLiteral(red: 0.8980392217636108, green: 0.7764706015586853, blue: 0.7411764860153198, alpha: 1)))
                        .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Login()
        }
    }
}
