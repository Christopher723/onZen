
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
    case first, second, who
    
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
                sheetView()
            case .second:
                infoSheet()
            case .who:
                screen2(activeSheet: $activeSheet, inputText: $inputText)
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.automatic)
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
            
            Spacer().frame(width:35)
            Text("Release")
                .font(.system(size: 23, weight: isReflect ? .regular : .heavy))
                .foregroundColor(isReflect ? .gray : .buttonPink)
                .onTapGesture{
                    if isReflect{
                        isReflect.toggle()
                    }
                }
            Spacer()
            
            Toggle("", isOn: $isReflect)
                .tint(.buttonBlue)
                .toggleStyle(SwitchToggleStyle(tint: .buttonBlue))
            
            
            Spacer().frame(width:65)
            
            Text("Reflect")
                .font(.system(size: 23, weight: isReflect ? .heavy : .regular))
                .foregroundColor(isReflect ? .buttonBlue : .gray)
                .onTapGesture{
                    if !isReflect{
                        isReflect.toggle()
                    }
                }
            Spacer().frame(width:35)
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
            
            Image(isReflect ? "test2" : "test")
            
            
            
            ToggleView(isReflect: $isReflect)
            
            Spacer()
            VStack{
                QuestionButton(inputText: $inputText, isReflect: $isReflect, activeSheet: $activeSheet, label: "Who", question: isReflect ?
                               "Who did something nice for you today":
                                "Who hurt you")
                QuestionButton(inputText: $inputText, isReflect: $isReflect,activeSheet: $activeSheet,
                               label: "What", question: isReflect ?
                    "What was the best part of your day":
                    "What happened")
                QuestionButton(inputText: $inputText,isReflect: $isReflect,activeSheet: $activeSheet, label: "When", question: isReflect ?
                    "When was the best part of your day":
                    "When did this happened"
                    
                )
                QuestionButton(inputText: $inputText, isReflect: $isReflect,activeSheet: $activeSheet, label: "Where", question: isReflect ?
                    "Where is somewhere you had fun":
                    "Where did this happened")
                QuestionButton(inputText: $inputText, isReflect: $isReflect,activeSheet: $activeSheet, label: "Why", question: isReflect ?
                    "Why did you have such a good day":
                    "Why did this happened")
            
                
            }
            
            
            
            
            
            
            Spacer()
            AffirmButton(activeSheet: $activeSheet)
            Spacer().frame(height: 40)
            
            
            
            
        }
    }
}


