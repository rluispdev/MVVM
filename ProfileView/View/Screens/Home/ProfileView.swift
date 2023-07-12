//
//  ContentView.swift
//  ProfileView
//
//  Created by Rafael Gonzaga on 10/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        
        ZStack {
            
            BackgroundView()
            
            VStack {
                
                ProfileDataView()
                ActionView()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            
            TextClubView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(ProfileViewModel())
    }
}
