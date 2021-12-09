//
//  Tab1View.swift
//  MotionCodelab
//
//  Created by Andika on 09/12/21.
//

import SwiftUI

struct Tab1View: View {
    @State var showAlert: Bool = false
    @State var showDialog: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Navigate to Detail")
                }).padding(.bottom)
                
                Button(action: {
                    showAlert.toggle()
                }, label: {
                    Text("Show Alert")
                }).alert(isPresented: $showAlert, content: {
                    Alert(
                        title: Text("I'm an alert"),
                        message: Text("I'm an alert message"),
                        dismissButton: .default(Text("OK"), action: {
                            debugPrint("Tapped OK")
                        })
                    )
                }).padding(.bottom)
                
                Button(action: {
                    showDialog.toggle()
                }, label: {
                    Text("Show Dialog")
                }).confirmationDialog(Text("A Dialog"), isPresented: $showDialog, actions: {
                    Button(action: {
                        // Misal delete...
                    }, label: {
                        Text("Action #1")
                    })
                    
                    Button(action: {
                        // Misal update...
                    }, label: {
                        Text("Action #2")
                    })
                })
                
            }.navigationTitle(Text("Tab 1"))
        }
    }
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View()
    }
}
