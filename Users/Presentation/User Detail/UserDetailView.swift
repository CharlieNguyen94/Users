//
//  UserDetailView.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import SwiftUI
import Combine

struct UserDetailView: View {
    
    @ObservedObject var viewModel: UserDetailViewModel
    
    let screenWidth = UIScreen.main.bounds.width
    
    @State private var showingModalSheet = false
    
    var body: some View {
        VStack {
            Image(uiImage: viewModel.avatar)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screenWidth * 0.2,
                       height: screenWidth * 0.2,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                .padding()
            
            HStack {
                Text(viewModel.user.firstName)
                Text(viewModel.user.lastName)
            }
            
            Button(action: {
                showingModalSheet.toggle()
            }) {
                Text("Get more info")
                    .padding()
                    .frame(width: screenWidth * 0.6)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(16)
            }
            .sheet(isPresented: $showingModalSheet, content: {
                UserDetailRouter.destinationForMoreInfoAction(user: viewModel.user)
            })
            .padding(.top, 20)
            Spacer()
        }
        .navigationTitle(viewModel.user.firstName)
        .onAppear(perform: {
            self.viewModel.onAppear()
        })
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(
            viewModel: UserDetailViewModel(
                user: User.fakeUser()))
    }
}
