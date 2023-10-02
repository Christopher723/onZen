//
//  affirmButton.swift
//  onZen4
//
//  Created by Christopher Woods on 9/22/23.
//

import SwiftUI


struct AffirmButton: View {
    @Binding var activeSheet: ActiveSheet?
    var body: some View {
        Button{
            activeSheet = .first
            
        }label: {
            Text("Complete")
                .frame(width:240, height:50 )
                .background(.blue)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold, design: . default))
            .cornerRadius(40)}
    }
}

