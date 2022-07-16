//
//  SwiftUIView.swift
//  Tip Calculator
//
//  Created by Randy Martinez on 7/16/22.
//

import SwiftUI
import UIKit
struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //Color.red
                    LinearGradient(colors: [Color.blue , Color.purple], startPoint: .bottom, endPoint: .top  ))
                .frame(width: 300, height: 100
                )
            }
        }
        
     
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
