//
//  HomePageView.swift
//  FitnessApp
//
//  Created by Jeremy Jackman on 3/28/23.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack{
                Spacer()
                VStack{
                    Spacer()
                    NavigationLink(destination: WarmUpPageView()) {
                        Image("warm-ups")
                            .resizable()
                            .frame(height: 350)
                            .frame(width: 400)
                            .cornerRadius(50)
                            .clipped()
                            .shadow(radius: 20)
                            .padding(.top, -230)
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.top, 40)
                    
                    HStack {
                        Button {
                            print("🟢 Workout Added! 🟢")
                        } label: {
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(Color.green)
                                .font(.system(size: 50))
                                .frame(height: 50)
                                .frame(width: 50)
                        }
                        
                        Spacer()
                        
                        Text("Weekly Workout Plan")
                        Spacer()
                        Spacer()
                    }
                    .padding()
                    
                    Spacer()
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        ZStack {
                            HStack {
                                Text("Workout")
                            }
                        }
                    })
                }
                .padding()
            }
        }
        .navigationTitle("Home Page View")
        .padding()
    } 
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
