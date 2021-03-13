//
//  ContentView.swift
//  Essential Lift
//
//  Created by Marc on 3/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            NavigationView{
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            NavigationView{
                WorkoutBuilderView()
            }
            .tabItem {
                Image(systemName: "hammer.fill")
                Text("Build Workout")
            }

            NavigationView{
                WorkoutView()
            }
            .tabItem {
                Image(systemName: "figure.walk")
                Text("Workout")
            }
            NavigationView{
                HistoryView()
            }
            .tabItem {
                Image(systemName: "list.dash")
                Text("History")
            }
            NavigationView{
                SettingsView()
            }
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
