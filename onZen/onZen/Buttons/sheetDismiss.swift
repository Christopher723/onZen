//
//  sheetDismiss.swift
//  onZen
//
//  Created by Christopher Woods on 10/4/23.
//

import SwiftUI

struct sheetDismiss: View{
    @Binding var activeSheet: ActiveSheet?
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    activeSheet = Optional.none
                    
                }
            label:{
                Image(systemName:"xmark")
                    .foregroundColor(Color(.white))
                    .imageScale(.large)
                    .frame(width:44, height:44)
            }
            }
            Spacer()
        }
    }
    
}
