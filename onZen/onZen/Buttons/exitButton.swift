//
//  exitButton.swift
//  onZen4
//
//  Created by Christopher Woods on 9/22/23.
//

import SwiftUI

struct exitTextButton: View {
    var body: some View {
        Button{
            
        }label: {
            Text("Complete")
                .frame(width:240, height:50 )
                .background(.blue)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold, design: . default))
            .cornerRadius(40)}
    }
}
