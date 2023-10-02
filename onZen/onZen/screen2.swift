//
//  screen2.swift
//  onZen4
//
//  Created by Christopher Woods on 9/22/23.
//

import SwiftUI


struct screen2: View{
    @Binding var activeSheet: ActiveSheet?
    @State private var test: String = ""
    @FocusState private var isUsernameFocused: Bool
    @Binding var inputText: String
    
    
    var body: some View{
        VStack{

            
            Spacer()
            Text("\(inputText)")
                .font(.system(size: 23, weight: .heavy))
            Spacer()

            HStack(spacing:20){
                Spacer()
                TextField("", text:$test, axis: .vertical)
                    .lineLimit(8, reservesSpace: true)
                    .focused($isUsernameFocused)
                    
                    
                
                
            }.onAppear{
                isUsernameFocused = true
            }
           
            
            
            
            Spacer()
                        
        }

    }
}


