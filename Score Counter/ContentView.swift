//
//  ContentView.swift
//  Score Counter
//
//  Created by Mathias Johnsson on 2021-12-12.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @StateObject var progress = ScoreKeeper()
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient (gradient: Gradient(colors:[Color("Blue"),Color("Purple")]),startPoint: .leading,endPoint: .trailing)
                                //Extend the screen to all edges
                                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("\(progress.score)")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.bottom, 0)
                HStack {
                    ForEach(progress.scores, id: \.self) { item in
                        Text("\(item) ")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.all, 0)
                    }
                }
                .frame(height: 30)
                .padding(.vertical, 0)
                
                NumbersView(progress: progress)
                
                Spacer()
            }
        .ignoresSafeArea()
        }
        
        
    }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
