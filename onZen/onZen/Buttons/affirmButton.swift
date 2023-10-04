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
        Image("zenCircle")
            .resizable()
            .frame(width:66, height:66 )

            .onTapGesture{
            activeSheet = .first
            }
    }
}

