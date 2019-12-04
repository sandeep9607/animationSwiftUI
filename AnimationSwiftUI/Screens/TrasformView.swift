//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by rootmacmini on 04/12/19.
//  Copyright © 2019 rootmacmini. All rights reserved.
//

import SwiftUI

struct TrasformView: View {
    
    @State private var vwX : CGFloat = 5
    @State private var vwColor : Color = .red
    
    let size = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            Spacer()
            Group {
                Text("")
                    .frame(width: 100, height: 100)
                    .background(vwColor)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100, alignment: .leading)
                .frame(alignment: .leading)
            .padding(.leading, vwX)

            Spacer()
            
            Button(action: {
                withAnimation(.easeInOut(duration: 2)) {
                    // animate code here
                    self.vwX = self.vwX == 5 ? (self.size.width - 105) : 5
                    self.vwColor = self.vwColor == Color.red ? Color.yellow : Color.red
                }
            }){
                Text("Click Me!")
                    .frame(width: 100, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrasformView()
    }
}
