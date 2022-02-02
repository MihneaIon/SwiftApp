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
            Text("\(ConstantName.type) : \(detailViewModel.type)")
                .foregroundColor(.backgroundColor)
            Text("\(ConstantName.price): \(detailViewModel.price)")
                .foregroundColor(.backgroundColor)
            Text("\(ConstantName.participation): \(detailViewModel.paricipants)")
                .foregroundColor(.backgroundColor)
        }
        .padding()
        .onAppear(perform: {
            detailViewModel.onAppear(homeData: homeViewModel)
        })
        .navigationTitle(ConstantName.detailTitle)
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        .background(detailViewModel.backgroundColor)
        
    }
}

struct BoredDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
