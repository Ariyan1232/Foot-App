//
//  ContentView.swift
//  Foot
//
//  Created by Ariyan Nagratha on 2023-03-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                //Foot
                Color(red: 0.32549020648002625, green: 0.6196078658103943, blue: 0.5411764979362488)
                    .ignoresSafeArea()
                VStack {
                    Text("Foot").font(.custom("Inter Regular", size: 60)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        
                    //LogoMakr-5DQ6Mt 1
                    Image(uiImage: #imageLiteral(resourceName: "footLogo"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 86, height: 200)
                        .clipped()
                        .frame(width: 86, height: 200)
                    //Cheesy Quote
                    Text("Decreasing human impact one step at a time").font(.custom("Inter Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding()
                    ZStack {
                        //Personal Use Bevel
                        NavigationLink(destination: Login()) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.8013455867767334, green: 0.6719616651535034, blue: 0.6343985795974731, alpha: 1)))
                                .frame(width: 253, height: 55)
                        }
                        Text("Login")
                            .font(.title3)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    
                    ZStack {
                        //Professional Use Bevel
                        NavigationLink(destination: SignUp()) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.800000011920929, green: 0.6705882549285889, blue: 0.6352941393852234, alpha: 1)))
                                .frame(width: 253, height: 55)
                        }
                        Text("Sign Up")
                            .font(.title3)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
