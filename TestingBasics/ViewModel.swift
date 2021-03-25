//
//  ViewModel.swift
//  TestingBasics
//
//  Created by Greg Price on 25/03/2021.
//

struct ViewModel {
    
    private let items: [String]
    private let alertTitle: String
    private let oddIndexMessage: String
    private let evenIndexMessage: String
    
    init(items: [String],
         alertTitle: String,
         oddIndexMessage: String,
         evenIndexMessage: String) {
        
        self.items = items
        self.alertTitle = alertTitle
        self.oddIndexMessage = oddIndexMessage
        self.evenIndexMessage = evenIndexMessage
    }
    
    var numberOfRows: Int {
        return items.count
    }
    
    func item(at index: Int) -> String {
        items[index]
    }
    
    func alert(for index: Int) -> (title: String, message: String) {
        return createAlertMessage(for: item(at: index), at: index)
    }
    
    private func createAlertMessage(for string: String, at index: Int) -> (title: String, message: String) {
        if let intValue = Int(string) {
            let message = intValue % 2 == 0 ? evenIndexMessage : oddIndexMessage
            return (title: alertTitle, message: message)
        } else {
            return (title: alertTitle, message: string)
        }
    }
}
