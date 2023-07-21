//
//  ClimateChange.swift
//  Eco Educator
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ClimateChange: View {
    var body: some View {
        ZStack {
            Color("green")
                .ignoresSafeArea()
            VStack {
                Text("Climate Change")
                    //.font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.custom("Fresca", size: 40))

                Text("Climate change refers to long-term shifts in weather patterns and average temperatures on Earth. It is primarily caused by the increase in greenhouse gases in the atmosphere, which trap heat and contribute to the warming of the planet. It is caused by greenhouse gas emissions, deforestation, methane emissions, and industrial processes.")
                    //.font(.body)
                    .foregroundColor(Color.white)
                    .padding()
                    .font(.custom("Fresca", size: 20))

                HStack {
                    Image("emissions")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Image("deforestation")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                Text("Learn more about how climate change impacts the animals and environment by clicking the buttons:")
                    .foregroundColor(Color.white)
                    .padding()
                    .font(.custom("Fresca", size: 20))

                HStack {
                    NavigationLink(destination: Environment()) {
                        Text("Environment")
                            //.font(.title3)
                            .foregroundColor(Color.white)
                            .frame(width: 120.0, height: 100.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .font(.custom("Fresca", size: 17))

                        
                        NavigationLink(destination: Animals()) {
                            Text("Animals")
                                //.font(.title3)
                                .foregroundColor(Color.white)
                                .frame(width: 120.0, height: 100.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .font(.custom("Fresca", size: 17))

                        }
                    }
                }
            }
        }
    }
    
    struct ClimateChange_Previews: PreviewProvider {
        static var previews: some View {
            ClimateChange()
        }
    }
}
