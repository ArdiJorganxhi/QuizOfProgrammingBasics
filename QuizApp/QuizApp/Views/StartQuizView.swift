//
//  StartQuizView.swift
//  QuizApp
//
//  Created by Ardi Jorganxhi on 21.11.22.
//

import SwiftUI

struct StartQuizView: View {
    @State var inputName: String = ""
    @State var inputName2: String = ""
   
    var body: some View {
        NavigationStack{
            
            VStack{
                Spacer()
                Text("Please enter your name:")
                    .font(.title).bold().padding(.bottom, 50.0)
                TextField("", text: $inputName)
                    .frame(width: 300.0)
                    
                    Divider()
                    .frame(width: 300, height: 2)
                    .overlay(.black)
                
                
                
                
                
               
                
                if(!inputName.isEmpty){
                    
                    NavigationLink(destination:QuestionView(username: $inputName).navigationBarBackButtonHidden(true)){
                        Image(systemName: "arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 100)
                            .foregroundColor(.black)
                    }
                    
                    
                }
                else{
                    
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 100)
                        .foregroundColor(.black)
                    
                }
                
                
               
               
                   
                    
                
                
                
              
                    
                    
                    
                    
                
                
                
                
                
                Spacer()
                
                
                
                
                
                
                
            }
        
        }
      
        
        
    }
}

struct StartQuizView_Previews: PreviewProvider {
    static var previews: some View {
        StartQuizView()
    }
}
