//
//  LoginPage.swift
//  FantasyVolleyball
//
//  Created by Chris Martinez on 1/25/23.
//

import SwiftUI

struct LoginPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var wrongUsername: Bool = false
    @State private var wrongPassword: Bool = false
    @State private var screens: [String] = []
    
    var body: some View {
        NavigationStack(path: $screens) {
            ZStack {
                Color.purple
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Fantasy Volleyball")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: wrongUsername ? 2.0 : .zero)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: wrongPassword ? 2.0 : .zero)
                    Button("Login") {
                        wrongUsername = false
                        wrongPassword = false
                        authenticateUser(username: username, password: password)
                    }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.purple)
                        .cornerRadius(10)
                    Button("Forgot password") {
                        screens.append("Forgot password")
                    }
                        .foregroundColor(.purple)
                }
            }
            .toolbar(.hidden)
            .navigationDestination(for: String.self) { screen in
                switch screen {
                case "Login":
                    LandingPage()
                case "Forgot password":
                    ForgotPasswordPage()
                default:
                    ErrorPage()
                }
            }
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "chris24" {
            wrongUsername = false
            if password.lowercased() == "test123" {
                wrongPassword = false
                screens.append("Login")
            }
            else {
                wrongPassword = true
            }
        }
        else {
            wrongUsername = true
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
