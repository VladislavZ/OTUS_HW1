//
//  ContentView.swift
//  SUI
//
//  Created by Vladyslav Zubkov on 08.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        TabView(selection: $router.selection) {
            GeneralScreen()
                .tabItem {
                    VStack {
                        Image(systemName: "globe")
                        Text("General")
                    }
                }
                .tag(0)
            ListScreen()
                .tabItem {
                    VStack {
                        Image(systemName: "filemenu.and.cursorarrow")
                        Text("List")
                    }
                }
                .tag(1)
            AboutScreen()
                .tabItem {
                    VStack {
                        Image(systemName: "graduationcap")
                        Text("About")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
