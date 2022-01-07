//
//  MyListDetail.swift
//  MotionCodelab
//
//  Created by Andika on 06/01/22.
//

import SwiftUI

struct MyListDetail: View {
    // Data yang mau dibawa
    var university: University
    
    // View utama
    var body: some View {
        VStack {
            Image(university.image)
                .resizable()
                .frame(width: 100, height: 100)
            
            Text(university.name)
                .bold()
                .padding(.bottom)
            
            Text(university.place)
        }
    }
}

struct MyListDetail_Previews: PreviewProvider {
    static var previews: some View {
        MyListDetail(university: University.dummies()[0])
    }
}
