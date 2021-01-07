//
//  alarmClass.swift
//  finalProject
//
//  Created by RaheelUser on 1/5/21.
//

import Foundation
class alarm{
    var name:String
    var date:Date
    var time:Timer
    
    init(name:String, date:Date, time:Timer) {
        self.name=name
        self.time=time
        self.date=date
    }

}
