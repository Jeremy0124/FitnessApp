//
//  ContentView.swift
//  FitnessApp
//
//  Created by Jeremy Jackman on 3/27/23.
//

import SwiftUI

struct FirstLaunchView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Image("Bimg")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                VStack {
                    Section {
                        Group {
                            TextField("Email Address", text: $email)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .autocorrectionDisabled(true)
                                .autocapitalization(.none)
                                .background(Color(.secondarySystemBackground))
                                .cornerRadius(15)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.pink))
                                .padding([.horizontal], 5)
                                .padding([.vertical], 15)
                            
                            
                            SecureField("Password", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .autocorrectionDisabled(true)
                                .autocapitalization(.none)
                                .background(Color(.secondarySystemBackground))
                                .cornerRadius(15)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.pink))
                                .padding([.horizontal], 5)
                                .padding([.vertical], 2)
                        }
                        .font(Font.system(size: 30, design: .default))
                        
                        NavigationLink("LOG IN", destination: HomePageView())
                            .frame(width: 140, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.pink)
                            .cornerRadius(10)
                            .padding()
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstLaunchView()
    }
}



