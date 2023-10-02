//
//  InfoButton.swift
//  onZen4
//
//  Created by Christopher Woods on 9/22/23.
//

import SwiftUI




struct InfoButton: View {
    @Binding var activeSheet: ActiveSheet?
    var body: some View {
        Button{
            activeSheet = .second
        }label: {
            Image(systemName: "questionmark.circle.fill" )
                .resizable()
                .frame(width:40, height:40)
                .foregroundColor(.blue)
            
        }
    }
}
