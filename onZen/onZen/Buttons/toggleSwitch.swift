//
//  toggleSwitch.swift
//  onZen
//
//  Created by Daijiro Tsushima on 10/4/23.
//

import SwiftUI

struct SymbolToggleStyle: ToggleStyle {
 
    var systemImage: String = "checkmark"
    var activeColor: Color = .green
 
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
 
            Spacer()
 
            RoundedRectangle(cornerRadius: 30)
                .fill(configuration.isOn ? activeColor : Color(.backBlue))
                .overlay {
                    Circle()
                        .fill(.white)
                        .padding(3)
                        .overlay {
                            Image(systemName: systemImage)
                                .foregroundColor(configuration.isOn ? activeColor : Color(.backPink))
                        }
                        .offset(x: configuration.isOn ? 10 : -10)
 
                }
                .frame(width: 50, height: 32)
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}



 

