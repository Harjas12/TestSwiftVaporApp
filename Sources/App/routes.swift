import Vapor

public func routes(_ router: Router) throws {

	let homeController = HomeController()
	router.get("/", use: homeController.index)
	
}
