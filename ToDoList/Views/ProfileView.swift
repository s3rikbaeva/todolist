//
//  ProfileView.swift
//  ToDoList
//
//  Created by Аружан Серикбаева on 21.05.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewVIewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color.white)
                .frame(width: 150, height: 150)
            
            Image(systemName: "person.crop.square.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.pink)
                .frame(width: 125, height: 125)
                .padding()
        }
        
        // Info: name, email, Member since
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            
            HStack {
                Text("Member since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding()
        
        // Sign out
        Button("Log Out") {
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }

}


#Preview {
    ProfileView()
}
