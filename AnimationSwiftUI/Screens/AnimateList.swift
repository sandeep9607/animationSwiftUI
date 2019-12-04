//
//  AnimateList.swift
//  AnimationSwiftUI
//
//  Created by rootmacmini on 04/12/19.
//  Copyright © 2019 rootmacmini. All rights reserved.
//

import SwiftUI

struct AnimateList: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: TrasformView()) {
                    Text("Trasform")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40,alignment: .leading)
                        .foregroundColor(.gray)
                }

                Divider()
                
                NavigationLink(destination: ScaleView()) {
                    Text("Scale")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40,alignment: .leading)
                        .foregroundColor(.gray)
                }

                Divider()
                NavigationLink(destination: RotateView()) {
                    Text("Rotate")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40,alignment: .leading)
                        .foregroundColor(.gray)
                }
                Divider()
                Spacer()
            }.padding(.leading, 20)
                .padding(.trailing, 20)
                .navigationBarTitle("Animations List", displayMode: .inline)
        }
        
    }
}

struct AnimateList_Previews: PreviewProvider {
    static var previews: some View {
        AnimateList()
    }
}
