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
                Image("photo1")
                    .resizable()
                    .ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    Spacer()
                    Section {
                        Group {
                            TextField("Email Address", text: $email)
                                .padding(8)
                                .autocorrectionDisabled(true)
                                .autocapitalization(.none)
                                .foregroundColor(Color.white)
                                .background(LinearGradient(colors: [.pink, .pink.opacity(0.55)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(10)
                            
                            SecureField("Password", text: $password)
                                .padding(8)
                                .autocorrectionDisabled(true)
                                .autocapitalization(.none)
                                .foregroundColor(Color.white)
                                .background(LinearGradient(colors: [.pink, .pink.opacity(0.55)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(10)
                        }
                        .font(Font.system(size: 20, design: .default))
                        
                        HStack {
                            NavigationLink("Create Account", destination: CreateAccountView())
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .foregroundColor(Color.white)
                                .background(Color.pink)
                                .cornerRadius(10)
                            
                            NavigationLink("LOG IN", destination: HomePageView())
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .foregroundColor(Color.white)
                                .background(Color.pink)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                    Spacer()
                    
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



