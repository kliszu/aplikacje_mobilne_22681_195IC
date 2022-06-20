//
//  PendingTaskView.swift
//  Lab7
//
//  Created by Marcin Klisz on 20/06/2022.
//

import SwiftUI
import CoreData

struct PendingTaskView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var tasks: FetchedResults<Task>
    @State private var taskName = ""
    var body: some View {
        VStack{
            HStack{
                TextField("Add Task", text: $taskName)
                    .textFieldStyle(.roundedBorder)
                Button{
                    let task = Task(context: moc)
                    task.id = UUID()
                    task.name = taskName
                    taskName.removeAll()
                    task.date = Date.now
                    task.isDone = false
                    try? moc.save()
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
            .padding()
            List(tasks) { task in
                if !task.isDone {
                    VStack{
                        Text(task.name ?? "Unkonown")
                        Text(task.date!.formatted())
                            .font(.caption2)
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Done"){
                            task.isDone = true
                            try? moc.save()
                            PendingTaskView()
                        }
                    }
                    .tint(.green)
                    .swipeActions(edge: .leading){
                        Button {
                            moc.delete(task)
                            PendingTaskView()
                        } label: {
                            Text("Delete")
                            Image(systemName: "trash")
                        }
                    }
                    .tint(.red)
                }
            }
        }
    }
}
