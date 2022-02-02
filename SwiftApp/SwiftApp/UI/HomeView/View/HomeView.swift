//
//  HomeView.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack{
            Text(homeViewModel.bored?.activity ?? "Loading...")
                .padding()
            Spacer()
            Button {
                homeViewModel.onAppear()
            } label: {
                Text("Get new activities")
                    .padding()
            }
        }
        .onAppear {
            homeViewModel.onAppear()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
