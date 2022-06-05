//
//  FifthView.swift
//  Lab6
//
//  Created by Marcin Klisz on 04/06/2022.
//

import SwiftUI
import RealmSwift

class LocalOnlyQsTask: Object {
    @Persisted var name: String = ""
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

let localRealm = try! Realm()

struct taskListView: View {
    let savedTask = localRealm.objects(LocalOnlyQsTask.self)
    var body: some View {
        let taskCount = savedTask.count
        if taskCount > 0{
            List{
                ForEach(0...taskCount-1, id: \.self) { id in
                    Text(savedTask[id].name)
                }
            }
        } else{
            Text("No task saved in database")
        }
    }
}

struct FifthView: View {
    @State private var task = ""
    @State private var showList = false
    var body: some View {
        NavigationView{
            HStack{
                TextField("New Task", text: $task)
                    .textFieldStyle(.roundedBorder)
                Button{
                    if task.isEmpty == false {
                        try! localRealm.write {
                            localRealm.add(LocalOnlyQsTask(name: task))
                        }
                    }
                } label: {
                    Image(systemName: "plus.circle")
                }
                Button {
                    try! localRealm.write{
                        localRealm.deleteAll()
                    }
                } label: {
                    Image(systemName: "trash")
                }
            }
            .padding()
        }
        .toolbar{
            ToolbarItem(placement: .primaryAction){
                NavigationLink(destination: taskListView()){
                    Text("Show task list")
                }
            }
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
