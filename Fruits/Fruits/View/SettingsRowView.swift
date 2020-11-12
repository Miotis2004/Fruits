//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Field Employee on 11/12/20.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDesitination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDesitination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDesitination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Ronnie")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
