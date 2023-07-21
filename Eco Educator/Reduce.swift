//
//  Reduce.swift
//  Eco Educator
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Reduce: View {
    @State private var info1 = false
    @State private var info2 = false
    @State private var info3 = false
    @State private var info4 = false
    var body: some View {
        ZStack{
            Color("g")
                .ignoresSafeArea()
            VStack{
                Text("Take Action")
                    //.font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("darkGreen"))
                    .padding()
                    .font(.custom("Fresca", size: 40))


                    .multilineTextAlignment(.center)
                Text("We can reduce our carbon footrpints at home in many different ways. Click each button to learn more about how to help in that field.")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color("darkGreen"))
                    .multilineTextAlignment(.center)
                    .font(.custom("Fresca", size: 17))

                HStack {
                    Image("ecolightbulb")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    Image("watuh")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                }
                HStack {
                    Button("Energy Efficiency") {
                        info1 = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    .font(.custom("Fresca", size: 17))

                    //Spacer()
                    
                   

                       
                    Button("Water Conservation") {
                        info3 = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    .font(.custom("Fresca", size: 17))

                    
                }
                HStack {
                    Image("bike")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    Image("recycling-symbol-clipart-md")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                }
                
                HStack {
                    Button("Transportation") {
                        info2 = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    .font(.custom("Fresca", size: 17))

                    //Spacer()
                    
            

                       
                    Button("Reduce Reuse Recycle") {
                        info4 = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    .font(.custom("Fresca", size: 17))

                }
                
                .alert("Here are a few ways you can reduce your carbon footprint by being more energy efficient: switch to energy-efficient LED lights, unplug chargers from ports when not in use, turn off lights when not in use", isPresented: $info1, actions: {})
                .alert("Here are a few ways you can reduce your carbon footpring in transportation: switch to electric cars, carpool or use public transport, utilize walking and biking rather than driving", isPresented: $info2, actions: {})
                .alert("Here are a few ways you can reduce your carbon footprints by conserving water: fix leaks in sinks, bathtubs, toilets, and any other place that could waste water, take shorter showers, and save and utilize cooking water or cold shower water", isPresented: $info3, actions: {})
                .alert("Here is a brief overview of reducing, reusing and recycling. Reducing is limiting the amount of single-use products you purchase. Reusing is repurposing products instead of discarding them and donating ones you are no longer using. Recycling is conserving resources by recycling paper, plastic, glass, and metal", isPresented: $info4, actions: {})

            }
        }
    }
}

struct Reduce_Previews: PreviewProvider {
    static var previews: some View {
        Reduce()
    }
}
