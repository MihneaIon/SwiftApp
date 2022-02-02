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
    
    var body: some View {
        HomeView()
            .environmentObject(homeView)
            .environmentObject(detailVeiwModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
