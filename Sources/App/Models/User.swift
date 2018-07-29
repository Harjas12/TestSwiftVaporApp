//
//  User.swift
//  App
//
//  Created by Harjas Monga on 7/28/18.
//

import Vapor
import FluentSQLite

final class User: SQLiteModel, Migration, Content, Parameter {
	
	var id: Int?
	var name: String
	var password: String
	
	init(id: Int? = nil, name: String, password: String) {
		self.id = id
		self.name = name
		self.password = password
	}
	
}
