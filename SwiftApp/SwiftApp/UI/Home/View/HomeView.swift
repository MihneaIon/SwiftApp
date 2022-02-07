//
//  HomeView.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var homeViewModel: HomeViewModel
    @EnvironmentObject var newHomeViewModel: NewHomeViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                Text(newHomeViewModel.customData?.activity ?? "A")
                Text(homeViewModel.bored?.activity ?? loadingMessage)
                    .padding()
                NavigationLink(destination: DetailView(), label: {
                    Text(buttonName)
                        .bold()
                        .contentShape(Capsule(style: .continuous))
                        .frame(width: 100, height: 30, alignment: .center)
                        .foregroundColor(.backgroundColor)
                        .background(RoundedRectangle(cornerRadius: 4).stroke())
                })
                Spacer()
                Button {
                    homeViewModel.updateIsPressed();
                    homeViewModel.takeActivities()
                } label: {
                    Text(refreshButton)
                        .padding()
                }
            }
            .onAppear {
//                homeViewModel.takeActivities()
                newHomeViewModel.fetch()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
