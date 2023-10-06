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
                Spacer().frame(height: 20)
                HStack{
                    Text("Done")
                        .padding(EdgeInsets(top: 70, leading: 10, bottom: 0, trailing: 10))
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(.blue)
                        .onTapGesture {
                            isUsernameFocused.toggle()
                        }
                    sheetDismiss(activeSheet: $activeSheet, xColor: .black)
                        .padding(EdgeInsets(top: 70, leading: 10, bottom: 0, trailing: 10))
                }
                Text(inputText)
                    .font(.system(size: 25, weight: .heavy))
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: -10, leading: 10, bottom: 0, trailing: 10))
                    .foregroundColor(.black)
                
                
                
                
                
                
                
                
                
                Spacer().frame(height:15)
                
                HStack(){
                    Spacer()
                    TextField("", text:$test, axis: .vertical)
                        .font(.system(size: 33, weight: .heavy))
                        .lineLimit(8, reservesSpace: true)
                        .focused($isUsernameFocused)
                        .padding()
                        .foregroundColor(.black)
                    
                    
                    
                }.onAppear{
                    isUsernameFocused = true
                }
                
                
                
                
                Spacer()
                
            }
        }
    }
}


#Preview {
    screen2(activeSheet: .constant(nil), inputText: .constant("WHOHURTYOUTEST BUT T"))
}
