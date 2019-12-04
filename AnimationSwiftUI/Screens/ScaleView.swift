//
//  ScaleView.swift
//  AnimationSwiftUI
//
//  Created by rootmacmini on 04/12/19.
//  Copyright © 2019 rootmacmini. All rights reserved.
//

import SwiftUI

struct ScaleView: View {
    
    @State private var vwColor : Color = .green
    @State private var heightWidth : CGFloat = 100
    let size = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            Spacer()
            Group {
                Text("")
                    .frame(width: heightWidth, height: heightWidth)
                    .background(vwColor)
            }
            .frame(width: 100, height: 100)
            .padding(.leading, 10)
            
            Spacer()
            
            Button(action: {
                withAnimation(.easeInOut(duration: 2)) {
                    self.vwColor = self.vwColor == Color.green ? Color.yellow : Color.green
                    self.heightWidth = self.heightWidth == 100 ? 300 : 100
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


struct ScaleView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleView()
    }
}
