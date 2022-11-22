//
//  Guide2View.swift
//  QuizApp
//
//  Created by Ardi Jorganxhi on 21.11.22.
//

import SwiftUI

struct GuideView: View {
    
    let systemImageName: String
    let title: String
    let caption: String
    var body: some View {
        
        VStack(spacing: 20){
            
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.black)
            
            Text(title)
                .font(.title).bold()
            
            Text(caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 40)
    }
}

struct Guide2View: View {
 
    var body: some View {
        TabView{
            GuideView(systemImageName: "questionmark", title: "Questions", caption: "There are 3 questions in total")
            GuideView(systemImageName: "plus", title: "Points", caption: "Each question is 1 point in value, for every correct answer you will get 1 point.")
            GuideView(systemImageName: "clock", title: "Time", caption: "You don't have any clock limit, so feel free to solve it.")
            StartQuizView()
          
            
        }
       
      
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        
    }
}

struct Guide2View_Previews: PreviewProvider {
    static var previews: some View {
        Guide2View()
    }
}
