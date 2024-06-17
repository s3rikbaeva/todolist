//
//  ProfileView.swift
//  ToDoList
//
//  Created by Аружан Серикбаева on 21.05.2024.
//

import SwiftUI

struct ProfileViewDraft: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("back")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.white)
                        .aspectRatio(contentMode: .fit)
                }
                
                VStack {
                    Spacer()
                    
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
                    
                    
                    Spacer()
                    
                    // Info: name, email, Member since
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Name: ")
                                .bold()
                            
                            Text("Aru Serikbayeva")
                        }
                        .padding()
                        
                        HStack {
                            Text("Email: ")
                                .bold()
                            Text("rnserikbaevaa@gmail.com")
                        }
                        .padding()
                        
                        HStack {
                            Text("Member since: ")
                                .bold()
                            Text("25.08.24")
                        }
                        .padding()
                    }
                    .padding()
                    
                    Spacer()
                    
                    // Sign out
                    Button("Log Out") {
                        // action
                    }
                    .tint(.red)
                    .padding()
                    
                    Spacer()
                }
                Spacer()
            }
            
//            .navigationTitle("Profile")
            
            }
        }
    }


#Preview {
    ProfileViewDraft()
}
