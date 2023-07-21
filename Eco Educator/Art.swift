//
//  Art.swift
//  Eco Educator
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct Art: View {
    var body: some View {
        ZStack {
            Color("darkBlue")
                .ignoresSafeArea()
            VStack {
                Text("Art")
                    //.font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.custom("Fresca", size: 40))

                Text("Awareness and Reusing")
                    .foregroundColor(Color.white)
                    .font(.custom("Fresca", size: 20))

                HStack {
                    Text("Art can depict the impacts of climate change, such as rising sea levels, extreme weather events, deforestation, and melting ice caps, through paintings, photographs, sculptures, and installations. These visual representations make the issue more tangible and accessible to the audience.")
                        //.font(.body)
                        .foregroundColor(Color.white)
                        .padding()
                        .font(.custom("Fresca", size: 18))

                    
                    Image("Betterhourglass")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .frame(width: 120.0)
                }
                Text("Reusing materials that would otherwise be thrown away is not only environmentally friendly but also a fantastic way to create unique and innovative art. Here's how reusing discarded items can be used to make art: ")
                    //.font(.body)
                    .foregroundColor(Color.white)
                    .padding()
                HStack {
                    Image("artTree")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .font(.custom("Fresca", size: 19))

                       
                    
                    Image("recycledTurtle")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                       
                }
            }
        }
    }
    
    struct Art_Previews: PreviewProvider {
        static var previews: some View {
            Art()
        }
    }
    
}
