//
//  NewTodoViewController.swift
//  Swix-Todo
//
//  Created by Francesco Chiusolo on 10/05/2019.
//  Copyright © 2019 Francesco Chiusolo. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController {

	@IBOutlet weak var titleField: UITextField!
	@IBOutlet weak var descriptionField: UITextField!

	weak var delegate: NewTodoDelegate?

}

// MARK: - Lifecycle
extension NewTodoViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

}

// MARK: - Actions
extension NewTodoViewController {

	@IBAction func cancel(_ sender: UIBarButtonItem) {
		delegate?.didCancelNewTodo()
		dismiss(animated: true)
	}

	@IBAction func save(_ sender: UIBarButtonItem) {
		if let title = titleField.text, let description = descriptionField.text {
			delegate?.didAddNew(todo: Todo(title: title, description: description, completed: false))
		}
		dismiss(animated: true)
	}

}
