//
//  welcome.swift
//  Foot
//
//  Created by Ariyan Nagratha on 2023-04-29.
//

import SwiftUI

struct welcome: View {
    var body: some View {
        ZStack {
            Color(red: 0.32549020648002625, green: 0.6196078658103943, blue: 0.5411764979362488)
                .ignoresSafeArea()
            VStack {
                //Welcome To Foot
                Text("Welcome To\nFoot").font(.custom("Inter Regular", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                //LogoMakr-5DQ6Mt 3
                Image(uiImage: #imageLiteral(resourceName: "footLogo"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 86, height: 200)
                    .clipped()
                .frame(width: 86, height: 200)
                //Cheesy Quote
                Text("Your journey of reducing your environmental impact begins ").font(.custom("Inter Medium", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                ZStack {
                //Go Back
                    Text("Go Back").font(.custom("Inter Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)

                //Personal Use Box
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.8980392217636108, green: 0.7764706015586853, blue: 0.7411764860153198, alpha: 1)))
                    .frame(width: 253, height: 55)

                //Personal Use Bevel
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.800000011920929, green: 0.6705882549285889, blue: 0.6352941393852234, alpha: 1)))
                    .frame(width: 253, height: 55)
                }
            }
        }
    }
}
struct welcome_Previews: PreviewProvider {
    static var previews: some View {
        welcome()
    }
}
