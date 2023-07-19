//
//  Animals.swift
//  Eco Educator
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Animals: View {
    @State private var presentAlert = false
    @State private var presentAlert2 = false
    @State private var presentAlert3 = false
    @State private var presentAlert4 = false
    var body: some View {
        ZStack {
            Color("darkbrown")
                .ignoresSafeArea()
            VStack {
                
                Text("Animals")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("Climate change has affected numerous animal species across the world. Click each button for examples:")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                
               
                HStack{
                    Image("cuteelephant")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                    Image("PandA 1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                }
                
                HStack {
                    Button("Elephants") {
                        presentAlert = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    Spacer()
                    
                    .underline()

                       
                    Button("Pandas") {
                        presentAlert3 = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    
                }
                
                HStack {
                    Image("seaturtle")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                    Image("polarbear")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                }
                
                
                HStack {
                    Button("Sea Turtles") {
                        presentAlert2 = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    Spacer()
                    .underline()
                    
                    
                    Button("Polar Bears") {
                        presentAlert4 = true
                    }
                    /*.padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(Color.white)
                    .underline()*/
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)

                    
                }
                
            }
        }
        .alert("Changes in rainfall patterns impact vegetation growth and the availability of water sources, causing changes in the distribution and abundance of food resources for elephants. This can potentially lead to conflicts with humans as they search for alternative food and water sources.", isPresented: $presentAlert, actions: {})
        .alert("Changes in ocean currents disrupt sea turtles' ability to disperse and find food sources, while coral reef degradation reduces access to foraging grounds. Warmer temperatures can lead to imbalanced sex ratios in hatchlings, affecting population dynamics.", isPresented: $presentAlert2, actions: {})
        .alert("Bamboo, a vital part of the panda's diet, is sensitive to changes in temperature and precipitation patterns. Alterations in these factors can affect the growth, quality, and availability of bamboo and therefore impacts the panda population.", isPresented: $presentAlert3, actions: {})
        .alert("As sea ice melts due to rising temperatures, polar bears lose their hunting platforms and access to prey, affecting their ability to find food and raise their young.", isPresented: $presentAlert4, actions: {})



    }
    
    struct Animals_Previews: PreviewProvider {
        static var previews: some View {
            Animals()
        }
    }
}
