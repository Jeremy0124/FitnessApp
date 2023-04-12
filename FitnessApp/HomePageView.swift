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
            ZStack{
                VStack{
                    Spacer()
                    NavigationLink(destination: warmUpPageView()) {
                        Image("warm-ups")
                            .resizable()
                            .frame(height: 300)
                            .cornerRadius(50)
                            .clipped()
                            .shadow(radius: 20)
                            .padding(.top, -230)
                            .aspectRatio( contentMode: .fit)
                    }
                    Spacer()
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        ZStack {
                            HStack {
                                    
                            }
                        }
                    })
                }
                .padding()
            }
        }
            .navigationTitle("Home Page")
        
    }
    
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
