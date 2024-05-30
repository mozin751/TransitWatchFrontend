//
//  TabEnum.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import Foundation

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case report
    case schedule
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .report:
            return "Report Faults"
        case .schedule:
            return "Manage Schedule"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "HomeIcon"
        case .report:
            return "ReportIcon"
        case .schedule:
            return "ScheduleIcon"
        }
    }
}
