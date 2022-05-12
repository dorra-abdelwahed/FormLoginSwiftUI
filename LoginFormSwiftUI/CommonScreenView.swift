//
//  CommonScreenView.swift
//  LoginFormSwiftUI
//
//  Created by Dorra Ben Abdelwahed on 12/5/2022.
//

import SwiftUI

struct CommonScreenView: View {
    
    @State var showSignUp: Bool = false
    
    var body: some View {
        
        
        VStack{
            
        GeometryReader{ proxy -> AnyView in
            let height = proxy.frame(in: .global).height
            
            return AnyView(
            
                ZStack{
                   
                    Circle()
                        .fill(Color("blue"))
                        .offset(x: -50, y: -height / 3.0)
                        .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    
                    
                    
                    VStack(alignment: .leading, spacing: -30){
                        
                    Text(showSignUp ? "Hello," : "Welcome Back.")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .offset(x: -90,y: -120)
                    
                    Text(showSignUp ? "Sign Up!" : "Log In!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: -90,y: -80)
                    }
                                        
                  
                }
               
            )
            
           
        }
        .frame(maxHeight: getRect().width)
        
                if showSignUp {
                   SignUpScreenView()
                }else {
                    LoginScreenView()
                }
                
                NavigationLink {
                    
                } label: {
                    
                    Text(showSignUp ? "Sign Up" : "Login")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        
                }
                .frame(width: 200, height: 40, alignment: .center)
                .background( LinearGradient(colors: [Color("purpleBlue"),.blue,Color("blue")], startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .padding(.top, 50)
                
                Button {
                    withAnimation {
                        showSignUp.toggle()
                    }
                } label: {
                    Text(showSignUp ? "Login" : "Sign Up")
                        .fontWeight(.medium)
                        .foregroundColor(Color("blue"))
                        
                }

            
            
            
        }
    }
}

struct CommonScreenView_Previews: PreviewProvider {
    static var previews: some View {
        CommonScreenView()
    }
}

//get Screen Size
extension CommonScreenView{
    func getRect()-> CGRect{
        return UIScreen.main.bounds
    }
}
