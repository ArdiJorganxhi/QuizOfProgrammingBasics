//
//  Question1View.swift
//  QuizApp
//
//  Created by Ardi Jorganxhi on 21.11.22.
//

import SwiftUI


struct selectionTab {
    
    @State var selectionTab = 1
    
    
    
    
}

struct QuestionView: View {
    
    @State var index = 1
    
    
    @State var playerPoints = 0
    
    
    
    var questionArray: [String] = ["What is Java?", "Which one is correct in Python?", "Which one isn't used in mobile development?"]
    
    var choicesArray: [String] = ["Java is a programming language", "Java is a browser", "Java is an operating system", "Java is a hardware inside of PC", "lnprint('Hello World')", "System.out.println()", "print('Hello World')", "cout('Hello World')", "Flutter", "React Native", "Swift", "React.js"]
    
   
    
    
    
    
    
    
    @State var questionIndex = 0
    @State var choicesIndex = 0
    @State var moveToResult = false
    @Binding var username: String
    
    
    
    
    var body: some View{
        
        
        
        
        NavigationStack{
            
            
            
            NavigationLink(destination: FinishedView(result: $playerPoints), isActive: $moveToResult){
                
                
            
            VStack(spacing: 60){
                
                HStack{
                    Spacer()
                    Text(username)
                        .font(.body)
                        .bold()
                        .foregroundColor(.black)
                    Spacer()
                    Text("Score:" + String(playerPoints))
                        .font(.body)
                        .bold()
                        .foregroundColor(.black)
                    Spacer()
                }
                
                
                Spacer()
                
             
              
                Text(questionArray[questionIndex])
                    .font(.title).bold()
                    .foregroundColor(.black)
                
                
                
                VStack(spacing: 35){
                    
                    
                    
                    Button(action: {
                      
                        if(choicesArray[choicesIndex] == "Java is a programming language" || choicesArray[choicesIndex] == "print('Hello World')" ||
                           choicesArray[choicesIndex] == "React.js"){
                            
                            playerPoints += 1
                        }
                        
                        if(questionIndex < questionArray.count - 1){
                            
                            questionIndex += 1
                        }
                        else{
                            moveToResult = true
                        }
                        
                        if(choicesIndex < choicesArray.count - 4){
                            
                            choicesIndex += 4
                        }
                        else{
                            moveToResult = true
                        }
                        
                      
                        
                        
                        
                    }, label: {
                        Text(choicesArray[choicesIndex])
                            .foregroundColor(Color.black)
                    }).padding(.vertical, 10.0)
                        .padding(.horizontal)
                        .frame(width: 300)
                        .border(Color.black, width: 2)
                    
                    Button(action: {
                        
                        if(choicesArray[choicesIndex + 1] == "Java is a programming language" || choicesArray[choicesIndex + 1] == "print('Hello World')" ||
                           choicesArray[choicesIndex + 1] == "React.js"){
                            
                            playerPoints += 1
                        }
                        if(questionIndex < questionArray.count - 1){
                            
                            questionIndex += 1
                        }
                        else{
                            moveToResult = true
                        }
                        if(choicesIndex < choicesArray.count - 4){
                            
                            choicesIndex += 4
                        }
                        else{
                            moveToResult = true
                        }
                        
                       
                        
                    }, label: {
                        Text(choicesArray[choicesIndex + 1])
                            .foregroundColor(Color.black)
                    }).padding(.vertical, 10.0)
                        .padding(.horizontal)
                        .frame(width: 300)
                        .border(Color.black, width: 2)
                    Button(action: {
                        if(choicesArray[choicesIndex + 2] == "Java is a programming language" || choicesArray[choicesIndex + 2] == "print('Hello World')" ||
                           choicesArray[choicesIndex + 2] == "React.js"){
                            
                            playerPoints += 1
                        }
                        if(questionIndex < questionArray.count - 1){
                            
                            questionIndex += 1
                        }
                        else{
                            moveToResult = true
                        }
                        if(choicesIndex < choicesArray.count - 4){
                            
                            choicesIndex += 4
                        }
                        else{
                            moveToResult = true
                        }
                       
                    }, label: {
                        Text(choicesArray[choicesIndex + 2])
                            .foregroundColor(Color.black)
                    }).padding(.vertical, 10.0)
                        .padding(.horizontal)
                        .frame(width: 300)
                        .border(Color.black, width: 2)
                    
                    
                    Button(action: {
                        if(choicesArray[choicesIndex + 3] == "Java is a programming language" || choicesArray[choicesIndex + 3] == "print('Hello World')" ||
                           choicesArray[choicesIndex + 3] == "React.js"){
                            
                            playerPoints += 1
                        }
                        if(questionIndex < questionArray.count - 1){
                            
                            questionIndex += 1
                        }
                        else{
                            moveToResult = true
                        }
                        if(choicesIndex < choicesArray.count - 4){
                            
                            choicesIndex += 4
                        }
                        else{
                            moveToResult = true
                        }
                      
                        
                        
                    }, label: {
                        Text(choicesArray[choicesIndex + 3])
                            .foregroundColor(Color.black)
                    }).padding(.vertical, 10.0)
                        .padding(.horizontal)
                        .frame(width: 300)
                        .border(Color.black, width: 2)
                    
                }
                
                
                
                Spacer()
                
               
                
                
            }
         
                
            }
        }
    }
    
    
    
    
    
    struct QuestionView_Previews: PreviewProvider {
        static var previews: some View {
            QuestionView(username: .constant(""))
        }
    }
    
}
