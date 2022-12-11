//
//  TabBarController.swift
//  KBTU WSP
//
//  Created by Arman on 11.12.2022.
//

import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        build()
    }
    
    private func build(configration: AppConfigurationInputModel? = nil) {
        let newsModule = NewsModuleAssembly().assemble()
        let attendanceModule = AttendanceModuleAssembly().assemble()
        let scheduleModule = ScheduleModuleAssembly().assemble()
        let journalModule = JournalModuleAssembly().assemble()
        
        let modules: [UIViewController] = [
            UINavigationController.generate(
                rootViewController: newsModule,
                image: UIImage(systemName: "house.fill") ?? UIImage(),
                title: "Главная"
            ),
            
            UINavigationController.generate(
                rootViewController: attendanceModule,
                image: UIImage(systemName: "clock.arrow.circlepath") ?? UIImage(),
                title: "Посещаемость"
            ),
            
            UINavigationController.generate(
                rootViewController: scheduleModule,
                image: UIImage(systemName: "calendar") ?? UIImage(),
                title: "Расписание"
            ),
            
            UINavigationController.generate(
                rootViewController: journalModule,
                image: UIImage(systemName: "magazine.fill") ?? UIImage(),
                title: "Журнал"
            ),
        ]
        
        self.viewControllers = modules
    }
}
