
//
//  ContentView.swift
//  onZen
//
//  Created by Christopher Woods on 10/2/23.
//
//
//  ContentView.swift
//  onZen4
//
//  Created by Christopher Woods on 9/21/23.
//

//testing my repo
//this is chris on alberts laptop test
//testing repo DJ


import SwiftUI

enum ActiveSheet: Identifiable {
    case first, second, who, none
    
    var id: Int {
        hashValue
    }
}



struct ContentView: View {
    @State var activeSheet: ActiveSheet?
    @State var inputText: String
    @State var isReflect = false
    
    
    
    var body: some View {
        ZStack{
            
            Color(isReflect ? .backgroundReflect :  .backgroundRelease)
                .ignoresSafeArea()
                
                

                HomeView(activeSheet: $activeSheet, isReflect: $isReflect, inputText: $inputText)
            }
        
        .sheet(item: $activeSheet) { item in
            switch item {
            case .first:
                sheetView(activeSheet: $activeSheet)
            case .second:
                infoSheet(isReflect: $isReflect,activeSheet: $activeSheet)
            case .who:
                screen2(activeSheet: $activeSheet, inputText: $inputText)
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.automatic)
            case .none:
                ContentView(inputText: "")
            }}


        
        
        
        
        
        
    }
}


#Preview{
    ContentView(inputText: "")
}

struct ToggleView: View {
    @Binding var isReflect: Bool
    var body: some View {
        HStack(){
            
            Spacer().frame(width:22)
            Text("Release")
                .foregroundColor(isReflect ? .gray : .releaseToggle)
                .onTapGesture{
                    if isReflect{
                        isReflect.toggle()
                    }
                }
                .font(Font.custom("SFProRounded-Bold", size: 28))
            Spacer().frame(width:5)
            
            Toggle("", isOn: $isReflect)
                .toggleStyle(SymbolToggleStyle(systemImage: "heart", activeColor: .backPink))
                .padding()
            
            Spacer().frame(width:41)
            
            Text("Reflect")
                .foregroundColor(isReflect ? .releaseToggle : .gray)
                .onTapGesture{
                    if !isReflect{
                        isReflect.toggle()
                    }
                }
                .font(Font.custom("SFProRounded-Bold", size: 28))
            Spacer().frame(width:5)
            
            Spacer().frame(width:22)
        }
    }
}





struct HomeView: View {
    @Binding var activeSheet: ActiveSheet?
    @Binding var isReflect: Bool
    @Binding var inputText: String
    
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                InfoButton(activeSheet: $activeSheet)
                Spacer().frame(width: 20)
                
            }

            Image(isReflect ? "releaseLogo" : "reflectLogo")

                .resizable()
                .frame(width: 270, height: 150)
            
            
            
            ToggleView(isReflect: $isReflect)
            
            Spacer()
            VStack{
                QuestionButton(inputText: $inputText, isReflect: $isReflect, activeSheet: $activeSheet, label: "Who?", question: isReflect ?
                               "Who inspired you to want to reflect?":
                                "Who's responsible for this madness?")
                QuestionButton(inputText: $inputText, isReflect: $isReflect,activeSheet: $activeSheet,
                               label: "What?", question: isReflect ?
                    "What are some things you are grateful for?":
                    "What did they do and/or say to you?")
                QuestionButton(inputText: $inputText,isReflect: $isReflect,activeSheet: $activeSheet, label: "When?", question: isReflect ?
                    "When did you realize this?":
                    "When do these moments usually arise?"
                    
                )
                QuestionButton(inputText: $inputText, isReflect: $isReflect,activeSheet: $activeSheet, label: "Where?", question: isReflect ?
                    "Where do you see yourself in the future, near and far?":
                    "Where do you find peace when you feel this way?")
                QuestionButton(inputText: $inputText, isReflect: $isReflect,activeSheet: $activeSheet, label: "Why?", question: isReflect ?
                    "Why/How is it important to reflect on your day?":
                    "Why/How is it good to release your bad thoughts?")
            
                
            }
            
            
            
            
            
            
            Spacer()
            AffirmButton(activeSheet: $activeSheet)
            Spacer().frame(height: 40)
            
            
            
            
        }
    }
}


