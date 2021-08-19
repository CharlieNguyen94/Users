//
//  ContentView.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import SwiftUI

struct UsersView: View {
    
    @ObservedObject var viewModel: UsersViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.users.data) { user in
                
                NavigationLink(
                    destination: UsersRouter.destinationForTappedUser(user: user)
                ) {
                    Text(user.firstName)
                }
            }.navigationTitle("Users")
        }.onAppear(perform: {
            viewModel.onAppear()
        })
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView(viewModel: UsersViewModel())
    }
}
