//
//  Sheet.swift
//  OnZenDemo
//
//  Created by Christopher Woods on 9/12/23.
//

import SwiftUI




struct sheetView: View {
    let date = Date()
    let df = DateFormatter()
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
    @Binding var activeSheet: ActiveSheet?
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            sheetDismiss(activeSheet: $activeSheet)
                .padding()
           
            VStack{
                
                VStack(spacing: 50){
                    
                    Spacer()
                    HStack{
                        Text(numbers.randomElement() ?? "")
                            .padding()
                            .font(.system(size: 40, weight: .heavy))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    
                    HStack{
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(colors.randomElement())
                            .frame(width: 50, height: 40)
                        
                        
                    }
                    Spacer()
                    HStack{
                        Text(Date(), style: .date)
                            .foregroundColor(.white)
                            .font(.title2)
                        
                    }
                    
                }
            
               
                
            }
            
        }
        
    }
    
}
#Preview{
    sheetView(activeSheet: .constant(nil))
}
