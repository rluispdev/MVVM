//
//  ActionView.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 11/07/23.
//

import SwiftUI

struct ActionView: View {
    
    @EnvironmentObject var viewModel: ProfileViewModel
    
    var body: some View {
        
        VStack {
            //Seguir
            Button {viewModel.followToogle()} label: {
                
                Label(!viewModel.isFollwing ? "follow" : "unfollow",
                      systemImage: !viewModel.isFollwing ?
                      "person.crop.circle.fill.badge.plus" : "person.crop.circle.fill.badge.minus")
                .font(.title3)
                .frame(maxWidth: .infinity)
            }
            
            //Enviar Mensagem
            Button {} label: {
                Label("enviar mensagem", systemImage: "paperplane.fill")
                    .font(.title3)
                    .frame(maxWidth: .infinity)
            }
            .disabled(!viewModel.isFollwing)
            
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .tint(!viewModel.isFollwing ? .blue : .orange)
        .padding(20)
        
    }
    
}

struct ActionView_Previews: PreviewProvider {
    static var previews: some View {
        ActionView()
            .environmentObject(ProfileViewModel())
    }
}
