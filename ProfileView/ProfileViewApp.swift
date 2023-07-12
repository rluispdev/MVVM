//
//  ProfileViewApp.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 10/07/23.
//

import SwiftUI

@main
struct ProfileViewApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileView()
                .environmentObject(ProfileViewModel())
        }
       
    }
}
