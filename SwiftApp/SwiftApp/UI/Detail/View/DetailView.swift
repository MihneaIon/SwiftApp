//
//  BoredDetailView.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 02.02.2022.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var detailViewModel: DetailViewModel
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack{
            Text("\(type) : \(detailViewModel.type)")
                .foregroundColor(.backgroundColor)
            Text("\(price): \(detailViewModel.price)")
                .foregroundColor(.backgroundColor)
            Text("\(participation): \(detailViewModel.paricipants)")
                .foregroundColor(.backgroundColor)
        }
        .padding()
        .onAppear(perform: {
            detailViewModel.onAppear(homeData: homeViewModel)
        })
        .navigationTitle(detailTitle)
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        .background(detailViewModel.backgroundColor)
        .onDisappear {
            detailViewModel.stopAudioEffect(homeData: homeViewModel)
        }
    }
}

struct BoredDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
