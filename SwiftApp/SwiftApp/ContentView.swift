//
//  ContentView.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var homeView = HomeViewModel()
    
    var body: some View {
        HomeView()
            .environmentObject(homeView)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
