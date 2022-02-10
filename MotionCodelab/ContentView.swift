//
//  ContentView.swift
//  MotionCodelab
//
//  Created by Andika on 03/02/22.
//

import SwiftUI

struct ContentView: View {
    // View Model
    @ObservedObject var vm = UniversityViewModel.shared
    
    var body: some View {
        NavigationView {
//            Group {
//
//            }
            
            if vm.isLoading {
                VStack {
                    Spacer()
                    
                    ProgressView()
                        .progressViewStyle(.circular)
                    
                    Spacer()
                }
            } else if vm.isError {
                Text("Uh Oh :(")
            } else {
                // Identifiable of ID!
                // MUST BE UNIQUE
                List(vm.universities, id: \.name) { university in
                    Text(university.name)
                }
            }
            
            
        }.onAppear {
            if vm.universities.isEmpty {
                vm.getUniversities()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
