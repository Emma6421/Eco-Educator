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
            VStack {

                Text("EcoEducator")
                    .font(.title)
                    .fontWeight(.bold)
                
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
