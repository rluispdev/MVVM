//
//  ProfileViewModel.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 11/07/23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
@Published var isFollwing = false
@Published var userFollowers = String()
    
    var user = User(picture: "neymar",
                    name: "Neymar Jr",
                    nick: "@neymar.jr",
                    follwers: 210999999)

    init() {
        loadFollwers()
    }
    
     func loadFollwers() {
        self.userFollowers = customizeNumber(value: user.follwers)
    }
    
    func customizeNumber(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "pt_BR")
        let shorten = formatter.string(for:value) ?? "0"
        return "\(shorten)M"
    }
    
      func followToogle() {
        self.isFollwing.toggle()
        self.isFollwing ? (self.user.follwers += 1) : (self.user.follwers -= 1)
        loadFollwers()
    }
}
