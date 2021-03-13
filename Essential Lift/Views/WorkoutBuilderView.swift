//
//  WorkoutBuilderView.swift
//  Essential Lift
//
//  Created by Marc on 3/13/21.
//

import SwiftUI

struct WorkoutBuilderView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(entity: WorkoutType.entity(), sortDescriptors: []) var workoutTypes: FetchedResults<WorkoutType>
    
    var body: some View {
        
        VStack {
            List{
                ForEach(workoutTypes, id: \.id) { workoutType in
                    Text(workoutType.name ?? "unknown")
                }
            }
            
            Button("Add") {
                let workouts = ["pushups", "pullups", "squats", "lunges"]
                
                let randomWorkoutType = workouts.randomElement()
                
                let workoutType = WorkoutType(context: self.moc)
                workoutType.id = UUID()
                workoutType.name = randomWorkoutType
                
                try? self.moc.save()
            }
            .padding()
        }
    }
}

struct WorkoutBuilderView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutBuilderView()
    }
}
