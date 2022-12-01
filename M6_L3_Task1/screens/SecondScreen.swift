//
//  SecondScreen.swift
//  M6_L3_Task1
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

struct SecondScreen: View {
    @ObservedObject var setting: UserSetting
    var body: some View {
        VStack{
            Text("User ID: \(setting.userid)").padding()
            Text("User PW: \(setting.userpw)").padding()
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(setting: UserSetting())
    }
}
