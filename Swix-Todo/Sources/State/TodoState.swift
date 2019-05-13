//
//  TodoState.swift
//  Swix-Todo
//
//  Created by Francesco Chiusolo on 11/05/2019.
//  Copyright © 2019 Francesco Chiusolo. All rights reserved.
//

import Foundation

struct TodoState {

	let todos: [Todo]
	let newTodo: Todo
	let currentRoute: Route

}

extension TodoState {

	static func initial() -> TodoState {
		return TodoState(todos: [],
						 newTodo: Todo(title: "", description: "", completed: false),
						 currentRoute: .todosList)
	}

}
