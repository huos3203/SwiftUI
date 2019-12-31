//
//  Test.swift
//  Example
//
//  Created by jhmac on 2019/12/25.
//  Copyright © 2019 iTBoyer. All rights reserved.
//

import SwiftUI
import Combine

struct Test: View {
    var datas = testDatas
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("添加cell").padding(.all, 8.0).background(Color.purple)
                    VStack {
                        List(datas) { item in
                        NavigationLink(destination: Text("Detail")) {
                            HStack {
                                VStack {
                                    Spacer()
                                    Image(systemName: "moon.fill")
                                        .foregroundColor(Color.red)
                                    Text("icon")
                                        .font(.footnote)
                                        .foregroundColor(Color.gray)
                                        .padding(.bottom)
                                }
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.red)
                                    
                                    Text(item.subtitle)
                                        .font(.body)
                                        .lineLimit(1)
                                        .foregroundColor(.red)
                                        .padding([.top, .trailing],12)

                                    Text(item.date)
                                        .font(.footnote)
                                        .foregroundColor(Color.gray)
                                        .multilineTextAlignment(.leading)
                                }
                            }
                        }
                    }
                }.navigationBarItems(trailing: Button(action: {}) {
                Text("设置")
                })
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
        TestModel(title: "test1", subtitle: "ttest1 描述test1 描述test1 描述test1 描述test1 描述est1 描述", date: "2019-09-09"),
        TestModel(title: "test1", subtitle: "test1 描述test1 描述test1 描述test1 描述test1 描述", date: "2019-09-09"),
        TestModel(title: "test1", subtitle: "test1 描述", date: "2019-09-09"),
        TestModel(title: "test1", subtitle: "test1 描述", date: "2019-09-09")
]

