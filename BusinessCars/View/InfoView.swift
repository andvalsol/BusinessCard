//
//  InfoView.swift
//  BusinessCars
//
//  Created by Andrey Solera on 10/7/21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageSrc: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.white)
            .frame(width: 250, height: 30, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: imageSrc).foregroundColor(.green)
                    Text(text)
                })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Number: 4321", imageSrc: "phone.fill").previewLayout(.sizeThatFits)
    }
}
