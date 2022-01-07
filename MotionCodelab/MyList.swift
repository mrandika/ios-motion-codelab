//
//  MyList.swift
//  MotionCodelab
//
//  Created by Andika on 06/01/22.
//

import SwiftUI

struct MyList: View {
    let data = University.dummies()
    
    var body: some View {
        NavigationView {
            List(data, id: \.id) { university in
                NavigationLink(
                    destination: MyListDetail(university: university),
                    label: {
                        MyUniversityComponent(university: university)
                })
            }
        }
    }
}

struct MyListComponent: View {
    // Binding -> data akan berubah di dalam komponen
    // Var biasa -> data tidak akan berubah di dalam komponen
    var number: Int
    
    var body: some View {
        // Padding
        // Kiri -> .leading
        // Kanan -> .trailing
        HStack {
            Text(String(number))
                .bold()
                .font(.title)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text("Im on number \(number)")
                Text("Im the \(number) element in this list!")
            }
        }
    }
}

struct MyUniversityComponent: View {
    var university: University
    
    var body: some View {
        HStack {
            Image(university.image)
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 8)
            
            VStack(alignment: .leading) {
                Text(university.name)
                    .bold()
                
                Text(university.place)
            }
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
