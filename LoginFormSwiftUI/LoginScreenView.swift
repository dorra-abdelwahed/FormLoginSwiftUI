//
//  ContentView.swift
//  LoginFormSwiftUI
//
//  Created by Dorra Ben Abdelwahed on 12/5/2022.
//

import SwiftUI

struct LoginScreenView: View {
    
    @State var email = ""
    @State var password = ""
    @State var rememberMe = false
    
    var body: some View {
        
        VStack{
            
            //MARK: Email TextField
            TextField("Email Address",text: $email)
                .textFieldStyle(
                GradientTextFieldBackground(systemImageString: "envelope")
                )
                .padding(.bottom)
            
            //MARK: password TextField
            SecureField("Password",text: $password)
                .textFieldStyle(
                GradientTextFieldBackground(systemImageString: "lock")
                )
            
            HStack{
                Toggle("Remember Me", isOn: $rememberMe)
                    .font(.caption)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .frame(width: 150,alignment: .leading)
                
                Spacer()
                
                Text("Forgot Password?")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .padding(.top)
           
           

        }
        .padding()
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
