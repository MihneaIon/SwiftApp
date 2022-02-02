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
        NavigationView{
            VStack{
                Text(homeViewModel.bored?.activity ?? "Loading...")
                    .padding()
                NavigationLink(destination: DetailView(), label: {
                    Text(ConstantName.buttonName)
                        .bold()
                        .contentShape(Capsule(style: .continuous))
                        .frame(width: 100, height: 30, alignment: .center)
                        .foregroundColor(.backgroundColor)
                        .background(RoundedRectangle(cornerRadius: 4).stroke())
                })
                Spacer()
                Button {
                    homeViewModel.updateIsPressed();
                    homeViewModel.onAppear()
                } label: {
                    Text(ConstantName.refreshButton)
                        .padding()
                }
            }
            .onAppear {
                homeViewModel.onAppear()
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
