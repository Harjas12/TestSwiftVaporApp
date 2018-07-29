//
//  HomeController.swift
//  App
//
//  Created by Harjas Monga on 7/29/18.
//

import Vapor

class HomeController {
	
	func index(_ req: Request) -> String {
		return "This is my first server side swift application written using the vapor framewor"
	}
	
}
