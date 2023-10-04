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
        ZStack{
            Color(.pageBack)
                .ignoresSafeArea()
            
            VStack{
                
                
                Spacer().frame(height: 25)
                Text("\(inputText)")
                    .font(.system(size: 23, weight: .heavy))
                    .lineLimit(2, reservesSpace: true)

                Spacer().frame(height:15)
                
                HStack(){
                    Spacer()
                    TextField("", text:$test, axis: .vertical)
                        .font(.system(size: 33, weight: .heavy))
                        .lineLimit(8, reservesSpace: true)
                        .focused($isUsernameFocused)
                        .padding()
                    
                    
                    
                    
                }.onAppear{
                    isUsernameFocused = true
                }
                
                
                
                
                Spacer()
                
            }
        }
    }
}

