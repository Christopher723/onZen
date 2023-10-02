//
//  infoSheet.swift
//  onZenFeedback2
//
//  Created by Christopher Woods on 9/14/23.
//

import SwiftUI

struct infoSheet: View {
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
        Text("Preview Sheet with all the info you need")
                    .font(Font.system(size: 50))
                
                }
                         
            }
        }
    }






#Preview{
    infoSheet()
}
