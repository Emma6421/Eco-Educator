//
//  ContentView.swift
//  Eco Educator
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("darkGreen")
                    .ignoresSafeArea()
                VStack {
                    //                    .background(Rectangle() .foregroundColor(Color(hue: 0.369, saturation: 0.647, brightness: 0.423, opacity: 0.0)))
                    HStack {
                        Image("miniIcon2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                           
                            
                        Text("Environment • Animals • Alleviation • Art • Trivia • Facts")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                           
                
   
                    }
                    Image("iconReal")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(360)
                    
                    Text("At EcoEducator, we aim to raise awareness about the impact of climate change on the environment and the well-being of animals, inspiring people to become informed advocates for sustainable practices and conservation efforts. Join us in our mission to create a cleaner future for all species on planet earth.")
                        .foregroundColor(Color.white)
                        .padding()
                    
                    
                    //                    .toolbar{
                    //                        ToolbarItemGroup(placement:.status) {
                    HStack{
                        NavigationLink(destination: ClimateChange()) {
                            Text("Climate \n Change")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .frame(width: 120.0, height: 100.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Environment()) {
                            Text("Environment")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .frame(width: 120.0, height: 100.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                        }
                        
                    }
                    HStack{
                        NavigationLink(destination: Animals()) {
                            Text("Animals")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .frame(width: 120.0, height: 100.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                        }
                        NavigationLink(destination: Reduce()) {
                            Text("Take \n Action")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .frame(width: 120.0, height: 100.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                        }
                    }
                    HStack{
                        NavigationLink(destination: Art()) {
                            Text("Art")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .frame(width: 120.0, height: 100.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            NavigationLink(destination: Trivia()) {
                                Text("Trivia")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                                    .frame(width: 120.0, height: 100.0)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.478, saturation: 0.902, brightness: 0.721)/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(10)
                                
                            }
                            //.padding()
                        }
                    }
                    //            .navigationTitle("Home")
                    //            .navigationBarTitleDisplayMode(.inline)
                    //            .navigationBarHidden(false)
                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
}
