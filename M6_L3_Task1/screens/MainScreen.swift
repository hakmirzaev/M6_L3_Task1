//
//  MainScreen.swift
//  M6_L3_Task1
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

struct MainScreen: View {
    @ObservedObject var setting = UserSetting()
    var body: some View {
        NavigationView{
            VStack{
                TextField("User ID", text: $setting.userid)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("User PW", text: $setting.userpw)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink(destination: SecondScreen(setting: setting), label: {
                    Text("Show").frame(maxWidth: .infinity, maxHeight: 45)
                        .background(.blue).foregroundColor(.white)
                        .cornerRadius(8)
                })
            }.padding()
                .navigationBarTitle("Observable Object", displayMode: .inline)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
