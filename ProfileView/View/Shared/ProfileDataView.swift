//
//  ProfileDataView.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 11/07/23.
//

import SwiftUI

//COMPOSING VIEW - Sub Views
struct ProfileDataView: View {
    @EnvironmentObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack{
            //Perfil
            Image(viewModel.user.picture)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 175)
                .padding(.bottom, 0)
                .clipShape(Circle())
                .background {
                    
                    Circle()
                        .fill(!viewModel.isFollwing ? .gray : .orange)
                        .frame(height: 180)
                        .shadow(color: .blue, radius: 5, x: 1, y: 2)
                }
            
            Text(viewModel.user.name)
                .foregroundColor(.white)
                .font(.system(size: 45, weight: .bold))
                .shadow(radius: 10)
            
            Text(viewModel.user.nick)
                .font(.system(size:23, weight: .regular))
                .foregroundColor(!viewModel.isFollwing ? .white : .gray)
                .bold()
            
            Text(viewModel.userFollowers)
                .font( !viewModel.isFollwing ?  .system(size: 20, weight: .semibold) : .system(size: 45, weight:.bold))
                .foregroundColor(.white)
                .padding(viewModel.isFollwing ? 10: 5)
                .background(viewModel.isFollwing ? Color.clear : Color.accentColor)
                .shadow(color: .blue, radius: 2, x: 1, y: 2)
              
                .cornerRadius(30)
            
            
                
            
        }
    }
}


struct ProfileDataView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDataView()
            .environmentObject(ProfileViewModel())
    }
}
