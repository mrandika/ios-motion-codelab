//
//  MyInputView.swift
//  MotionCodelab
//
//  Created by Andika on 06/01/22.
//

import SwiftUI

struct MyInputView: View {
    @State var name: String = ""
    @State var isOn: Bool = false
    
    var body: some View {
        List {
            Section(header: Text("Section 1")) {
                // Text Field
                TextField("Nama", text: $name)
                Text(name)
            }
            
            Section(header: Text("Section 2")) {
                if (isOn) {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                } else {
                    Rectangle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                }
                
                Toggle("Is On?", isOn: $isOn)
            }
        }
    }
}

struct MyInputView_Previews: PreviewProvider {
    static var previews: some View {
        MyInputView()
    }
}
