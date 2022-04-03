//
//  ReminderListViewController+Action.swift
//  Today
//
//  Created by Abdur Rachman Wahed on 03/04/22.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton){
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
