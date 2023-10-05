//
//  infoSheet.swift
//  onZenFeedback2
//
//  Created by Christopher Woods on 9/14/23.
//

import SwiftUI

struct infoSheet: View {
    @Binding var isReflect: Bool
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    @Binding var activeSheet: ActiveSheet?
    

    
    var body: some View {
        ZStack{
            
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            sheetDismiss(activeSheet: $activeSheet)
            
            
            VStack{
            
                    
                HStack {
                    
                    Image(systemName: "peacesign")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(colors.randomElement())
                    
                    
                    Text("You're OnZen")
                        .foregroundColor(.infoSheetText)
                        .font(Font.system(size: 40))
                        .padding(5)
                    Image(systemName: "peacesign")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(colors.randomElement())
                }
                
                Text("Anzen")
                    .foregroundColor(.infoSheetText)
                    .font(Font.system(size:25))
                
                Text("(Japanese Word for Safety)")
                    .foregroundColor(.infoSheetText)
               
                    
                
                Text("OnZen is a calm and welcoming safe space that allows users to explore their thoughts without saving them. A secure place to speak your truth with a peace of mind.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.infoSheetText)
                    .padding(5)
                Text("OnZen can be used for both reflecting and/or releasing your feelings.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.infoSheetText)
                Text("Start by clicking on a text box and type away what's on your mind. Let it out, good and/or bad. OnZen is always here for you.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.infoSheetText)
                    .padding(5)
                Text("OnZen does not save or share any personal information and data. We guarantee that your privacy is secure OnZen. It's for you and your eyes only.")
                    .multilineTextAlignment(.center)
                    .padding(5)
                    .foregroundColor(.infoSheetText)
                Text("Please remember")
                    .foregroundColor(.infoSheetText)
                Text("YOU MATTER")
                    .foregroundColor(.infoSheetText)
                    
                Text("If you ever need to reach out...")
                    .padding(2)
                    .foregroundColor(.infoSheetText)
                Text("Text HOME to 741741 to connect to a volunteer crisis counselor.")
                    .multilineTextAlignment(.center)
                    .padding(5)
                    .foregroundColor(.infoSheetText)
                Text("For the YouthLine hotline CALL (877-968-8491) or text teen2teen to 839863")
                    .multilineTextAlignment(.center)
                    .padding(5)
                    .foregroundColor(.infoSheetText)
                Text("For more resources and information please visit")
                    .foregroundColor(.infoSheetText)
                Text("https://blog.opencounseling.com/hotlines-us/")
                    
                
                
                
                
                    
                
                Spacer()
                }
                         
            }
        }
    }






#Preview{
    infoSheet(isReflect: .constant(false), activeSheet: .constant(nil))
}
