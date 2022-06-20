//
//  CompletedTaskView.swift
//  Lab7
//
//  Created by Marcin Klisz on 20/06/2022.
//

import SwiftUI

struct CompletedTaskView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var tasks: FetchedResults<Task>
    var body: some View {
        VStack{
            Text("Completed Tasks")
                .bold()
            List(tasks) { task in
                if task.isDone {
                    VStack{
                        Text(task.name ?? "Unkonown")
                        Text(task.date!.formatted())
                            .font(.caption2)
                    }
                    .swipeActions(edge: .leading){
                        Button {
                            moc.delete(task)
                            CompletedTaskView()
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

struct CompletedTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedTaskView()
    }
}
