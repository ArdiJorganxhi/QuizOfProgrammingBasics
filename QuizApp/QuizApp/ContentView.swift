//
//  ContentView.swift
//  QuizApp
//
//  Created by Ardi Jorganxhi on 21.11.22.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        
    NavigationStack{
                VStack{
                    Spacer()
                    VStack{
                      
                        
                        Text("Welcome")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            
                        }
                    
                   
                    
                        
                    
                    NavigationLink(destination: Guide2View()){
                        
                        Image(systemName: "arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.black)
                            
                    }
                    
                    Spacer()
                }
              
            }
      
        
            
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
