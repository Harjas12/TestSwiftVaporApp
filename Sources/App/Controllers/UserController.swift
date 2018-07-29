//
//  UserController.swift
//  App
//
//  Created by Harjas Monga on 7/28/18.
//

import Vapor
import FluentSQLite


class UserController {
	
	func index(_ req: Request) -> Future<[User]> {
		return User.query(on: req).all()
	}
	
	func create(_ req: Request) throws -> Future<HTTPStatus> {
		let user = try req.content.decode(User.self)
		return user.save(on: req).transform(to: HTTPStatus.created)
	}
	
	func getById(_ req: Request) throws -> Future<User> {
		let user = try req.parameters.next(User.self)
		return user
	}
	
	func getByName(_ req: Request) throws -> Future<User> {
		let name = try req.parameters.next(String.self)
		let user = User.query(on: req).filter(\.name == name).first().unwrap(or: Abort(HTTPStatus.notFound))
		return user
	}
	
	func deleteUser(_ req: Request) throws -> Future<HTTPStatus> {
		let user = try req.parameters.next(User.self)
		return user.delete(on: req).transform(to: HTTPStatus.ok)
	}
	
	

	
}
