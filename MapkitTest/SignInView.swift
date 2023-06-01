//
//  SignInView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/15/23.
//

import SwiftUI

struct OutlinedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical)
            .padding(.horizontal, 20)
                   .background(
                    Color(.white))
                   .clipShape(Capsule(style: .continuous))
                   .padding(5)
                   
    }
    
}

struct SignInView: View {
        @State private var email = ""
        @State private var password = ""
        @State private var preferredName = ""
    
    var body: some View {
//        Color("Tan")
//            .ignoresSafeArea()
//            .overlay {
        NavigationStack {
            
            ZStack {
                Color ("Tripdblue")
                    .ignoresSafeArea(.all)
                
                
                VStack {
                    Image ("TripdOut")
                        .resizable()
                        .scaledToFit()
                        .padding()
//                    Spacer()
//                        .frame(height: 80)
                    
                    Text("Sign In")
                        .font(.system(.largeTitle, design: .rounded)).fontWeight(.semibold)
                    
                    Group {
                        TextField("Email", text: $email)
                        TextField("Password", text: $password)
                    }
                    .textFieldStyle(OutlinedTextFieldStyle())
                    .padding(.horizontal, 20)
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    HStack{
                        
                        Text("Don't have an account?")
                            .font(.callout)
                            .foregroundColor(.secondary)
                        
                        NavigationLink("Sign Up", destination: TabScreen())
                            .foregroundColor(Color(.blue))
                        
                        
                    }
                    
                    VStack {
                        
                        
                        
                        NavigationLink("Skip for now", destination: DashboardView())
                            .foregroundColor(Color(.blue))
                            .padding()
                        
                    }
                    Spacer()
                        .frame(height: 80)
                    
                }
            }
                
            }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
