//
//  Test.swift
//  Example
//
//  Created by jhmac on 2019/12/25.
//  Copyright © 2019 iTBoyer. All rights reserved.
//

import SwiftUI

struct Test: View {
    let datas = testDatas
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("添加cell").padding(.all, 8.0).background(Color.purple)
                List(datas) { item in
                    VStack {
                        NavigationLink(destination: Text("Detail")) {
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.purple)
                                Text(item.subtitle)
                                Text(item.date)
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                }.navigationBarItems(trailing: Text("设置"))
                Spacer()
            } .background(Color.blue)
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

///数据源
struct TestModel: Identifiable {
    var id = UUID()
    var title:String
    var subtitle:String
    var date:String
}

let testDatas = [
        TestModel(title: "test1", subtitle: "test1 描述", date: "2019-09-09"),
        TestModel(title: "test1", subtitle: "test1 描述", date: "2019-09-09"),
        TestModel(title: "test1", subtitle: "test1 描述", date: "2019-09-09"),
        TestModel(title: "test1", subtitle: "test1 描述", date: "2019-09-09")
]
