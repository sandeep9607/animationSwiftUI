//
//  RotateView.swift
//  AnimationSwiftUI
//
//  Created by rootmacmini on 04/12/19.
//  Copyright © 2019 rootmacmini. All rights reserved.
//

import SwiftUI

struct RotateView: View {
    
    @State private var vwColor : Color = .green
    @State private var degree : Double = 0
    let size = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            Spacer()
            Group {
                Text("")
                    .frame(width: 200, height: 200)
                    .background(vwColor)
                }
            .frame(width: 200, height: 200)
            .rotationEffect(.init(degrees: degree))
            .padding(.leading, 10)
            
            Spacer()
            
            Button(action: {
                withAnimation(.easeInOut(duration: 2)) {
                    self.vwColor = self.vwColor == Color.green ? Color.yellow : Color.green
                    self.degree = self.degree == 0 ? 360 : 0
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


struct RotateView_Previews: PreviewProvider {
    static var previews: some View {
        RotateView()
    }
}
