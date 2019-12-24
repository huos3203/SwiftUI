//
//  FirstView.swift
//  Example
//
//  Created by jhmac on 2019/12/24.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View{
        VStack(alignment: .center) {
            Text("Hello, World!")
            .font(.title)
            .fontWeight(.bold)
            .padding(.all,10)
            .foregroundColor(.gray)
            
            Text("你好").font(.subheadline).foregroundColor(.white).padding(.top,8)
            Text.init("团结").font(.headline).foregroundColor(.yellow).padding(.bottom,8)
            Image("g")
                .resizable()
                .frame(width: 200.0, height: 130.0)
        }
        .background(Color.black)
        .cornerRadius(20)

    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
