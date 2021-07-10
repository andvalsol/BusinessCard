//
//  ContentView.swift
//  BusinessCars
//
//  Created by Andrey Solera on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("andrey-pic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.stroke(Color.white, lineWidth: 2.0))
                Text("Carlos Valverde")
                    .fontWeight(.bold)
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .foregroundColor(.white)
                Text("Tech Lead")
                    .font(Font.custom("Pacifico-Regular", size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "Number: 1234", imageSrc: "iphone.fill")
                InfoView(text: "Email: example@.com", imageSrc: "iphone.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
