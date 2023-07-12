//
//  BackgroundView.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 11/07/23.
//

import SwiftUI

struct BackgroundView: View {
    @EnvironmentObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            if viewModel.isFollwing == false {
                LinearGradient(colors: [.blue, .black, .blue, .black,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            } else {
                LinearGradient(colors: [.black, .blue, .orange, .blue,.black], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
            .environmentObject(ProfileViewModel())
    }
}
