//
//  NumbersView.swift
//  Score Counter
//
//  Created by Mathias Johnsson on 2021-12-12.
//

import SwiftUI

struct NumbersView: View {
    @ObservedObject var progress: ScoreKeeper
    
    
    private let threeColumnGrid = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            // DIGITS
            Button {
                progress.scores.append(10)
                progress.score += 10
            } label: {
                Text("10")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .modifier(ButtonModifier())

            LazyVGrid(columns: threeColumnGrid) {
                ForEach((1...9).reversed(), id: \.self) { num in
                    Button {
                        if progress.scores.count < 6 {
                            progress.scores.append(num)
                            progress.score += num
                        }
                    } label: {
                        Text("\(num)")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    .modifier(ButtonModifier())
                }
            }
            
            // RESET BUTTON
            Button {
                progress.scores = []
                progress.score = 0
            } label: {
                Text("Reset")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    
                    .padding()
            }
            .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.orange, lineWidth: 5)
                )
            .font(.title)
            
        }
        .padding(.horizontal)
        
    }
}

//MARK: - PREVIEW
struct NumbersView_Previews: PreviewProvider {
    let progress = ScoreKeeper()
    static var previews: some View {
        NumbersView(progress: ScoreKeeper())
            .previewLayout(.fixed(width: 320, height: 365))
            .background(Color("Purple"))
    }
}
