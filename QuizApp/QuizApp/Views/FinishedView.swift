//
//  FinishedView.swift
//  QuizApp
//
//  Created by Ardi Jorganxhi on 22.11.22.
//

import SwiftUI

struct FinishedView: View {
    
    @Binding var result: Int
    var body: some View {
        VStack(spacing: 20){
            
            Image(systemName: "checkmark.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.black)
            
            Text("Quiz is completed!")
                .font(.title).bold()
            
            Text("You scored" + " " + String(result) + " " + "out of 3")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 40)
    }
    }


struct FinishedView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedView(result: .constant(0))
    }
}
