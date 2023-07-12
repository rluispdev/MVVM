//
//  TextClubView.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 11/07/23.
//

import SwiftUI

struct TextClubView: View {
    
    @EnvironmentObject var viewModel: ProfileViewModel
    
    var body: some View {
        
        VStack {
            
            Image(!viewModel.isFollwing ? " " : "psg copy")
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Text( !viewModel.isFollwing ?  " " : "Bem Vindo ao Perfil do Neymar do PSG!")
                .font(.subheadline)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
    }
}

struct TextClubView_Previews: PreviewProvider {
    static var previews: some View {
        TextClubView()
            .environmentObject(ProfileViewModel())
    }
}
