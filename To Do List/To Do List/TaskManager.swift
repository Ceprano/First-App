//
//  TaskManager.swift
//  To Do List
//
//  Created by Joe Chang on 21/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "none"
    var desc = "none"
}

class TaskManager: NSObject {
    
   var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
}

