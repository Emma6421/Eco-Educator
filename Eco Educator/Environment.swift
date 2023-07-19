//
//  Environment.swift
//  Eco Educator
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Environment: View {
    @State private var presentAlert = false
    @State private var presentAlert2 = false
    @State private var presentAlert3 = false
    @State private var presentAlert4 = false
    
    var body: some View {
        
        ZStack {
            Color("darkBlue")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Environment")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Text("The term 'environment' refers to the overall surroundings or conditions in which living organisms, including humans, exist. Climate change has wide-ranging impacts on the environment, affecting various ecosystems, natural resources, and the delicate balance of biodiversity. Click on each button to learn how climate change impacts environments:")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                
               
                HStack{
                    Image("coralbleaching")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    Image("drought")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                
                HStack {
                    Button("Coral Bleaching") {
                        presentAlert = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    Spacer()
                    
                    .underline()

                       
                    Button("Precipitation Interruption") {
                        presentAlert3 = true
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .underline()
                    
                }
                
                HStack {
                    Image("wildfire")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    Image("iceberg")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                
                
                HStack {
                    Button("Extreme Weather Events") {
                        presentAlert2 = true
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    Spacer()
                    .underline()
                    
                    
                    Button("Melting Ice") {
                        presentAlert4 = true
                    }
                    .underline()
                    .padding()
                    .foregroundColor(Color.white)
                    
                }
                
            }
        }
        .alert("The increased ocean temperatures caused by climate change lead to coral bleaching, which has far-reaching implications for marine ecosystems, biodiversity, and coastal communities.", isPresented: $presentAlert, actions: {})
        .alert("Climate change disrupts precipitation patterns, leading to more intense rainfall in some regions and prolonged droughts in others. This affects the environment by impacting water availability, soil moisture, and ecosystem functioning.", isPresented: $presentAlert3, actions: {})
        .alert("Climate change is associated with an increase in the frequency and intensity of extreme weather events such as hurricanes, storms, and wildfires. These events impact the environment by causing destruction, altering ecosystems, and threatening human lives and infrastructure.", isPresented: $presentAlert2, actions: {})
        .alert("Rising temperatures caused by climate change lead to the melting of glaciers and ice caps in polar regions and mountain ranges. This results in the loss of freshwater reserves and contributes to rising sea levels, impacting coastal environments and communities.", isPresented: $presentAlert4, actions: {})



    }
    
    struct Environment_Previews: PreviewProvider {
        static var previews: some View {
            Environment()
        }
    }
}
