//
//  Sheet.swift
//  OnZenDemo
//
//  Created by Christopher Woods on 9/12/23.
//

import SwiftUI


let numbers = ["Asking for help is a sign of self-respect and self-awareness.", "Youre the best","You got this","Test", "Youre goated"]

struct sheetView: View {
    let date = Date()
    let df = DateFormatter()
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
           
            VStack{
                VStack(spacing: 50){
                    
                    Spacer()
                    HStack{
                        Text(numbers.randomElement() ?? "")
                        
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                    }
                    
                    
                    HStack{
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(.red)
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
    sheetView()
}
