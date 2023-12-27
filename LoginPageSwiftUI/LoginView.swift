//
//  LoginView.swift
//  LoginPageSwiftUI
//
//  Created by User01 on 22/12/23.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome Back").font(.largeTitle).fontWeight(.black).padding(.bottom, 42)
            VStack(spacing: 16) {
                InputFieldView(data: $username, title: "Username")
                InputFieldView(data: $password, title: "Password")
            }.padding(.bottom, 16)
            Button(action: {}) {
                Text("Sign In").fontWeight(.heavy).font(.title3).frame(maxWidth: .infinity).padding().foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(40)
            }
            HStack{
                Spacer()
                Text("Forgotten Password?").fontWeight(.thin).foregroundColor(Color.blue).underline()
            }.padding(.top, 16)
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
