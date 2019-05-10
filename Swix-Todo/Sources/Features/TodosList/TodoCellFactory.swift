//
//  TodoCell.swift
//  Swix-Todo
//
//  Created by Francesco Chiusolo on 10/05/2019.
//  Copyright © 2019 Francesco Chiusolo. All rights reserved.
//

import UIKit

class TodoCellFactory {
	
	static func fill(cell: UITableViewCell, withTodo todo: Todo) -> UITableViewCell {
		cell.textLabel?.text = todo.title
		cell.detailTextLabel?.text = todo.description
		cell.accessoryType = todo.completed ? .checkmark : .disclosureIndicator
		return cell
	}
	
}
