//
//  ContentView.swift
//  MotionCodelab
//
//  Created by Andika on 06/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var number: Int = 0
    
    var body: some View {
        Group {
            // Vertical Stack
            MyVerticalComponent()
            
            // Z (Depth-based) Stack
            ZStack {
                Text("5")
                
                Text("6")
            }
            
            // State of View
            VStack {
                // Horizontal Stack
                MyHorizonalComponent(number: $number)
                
                Text(String(number))
                    .padding(.bottom)
                
                Button("Increment", action: {
                    number += 1
                }).padding(.bottom, 4)
                
                Button("Decrement", action: {
                    number -= 1
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyHorizonalComponent: View {
    @Binding var number: Int
    
    var body: some View {
        HStack {
            Text(String(number))
            
            Text("4")
        }
    }
}

struct MyVerticalComponent: View {
    var body: some View {
        VStack {
            Text("1")
            
            Text("2")
        }
    }
}
