//
//  ContentView.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var homeView = HomeViewModel()
    @StateObject var detailVeiwModel = DetailViewModel()
    @StateObject var newVeiwModel = NewHomeViewModel()
    
    var body: some View {
        HomeView()
            .environmentObject(homeView)
            .environmentObject(detailVeiwModel)
            .environmentObject(newVeiwModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
