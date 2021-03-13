//
//  HomeView.swift
//  Essential Lift
//
//  Created by Marc on 3/13/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            
            Button(action: {
                print("last workout")
            }) {
                HStack {
                    Image(systemName: "plus.square.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                    Text("Last Workout")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(.blue)
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 1)
            )

            Button(action: {
                print("next workout")
            }) {
                HStack {
                    Image(systemName: "plus.square.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                    Text("Next Workout")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(.blue)
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 1)
            )
            
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
