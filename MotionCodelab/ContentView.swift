//
//  ContentView.swift
//  MotionCodelab
//
//  Created by Andika on 09/12/21.
//

import SwiftUI

enum Tab {
    case tab1
    case tab2
}

struct ContentView: View {
    @State var pilihanTab: Tab = .tab1
    
    var body: some View {
        TabView(selection: $pilihanTab) {
            Tab1View()
                .tabItem {
                    Image(systemName: pilihanTab == .tab1 ? "house.fill" : "house")
                    Text("Tab 1")
                }.tag(Tab.tab1)
            
            Text("Hello 2")
                .tabItem {
                    Image(systemName: pilihanTab == .tab2 ? "house.fill" : "house")
                    Text("Tab 2")
                }.tag(Tab.tab2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
