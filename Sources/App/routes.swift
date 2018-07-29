import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
	
	let userController = UserController()
	router.post("user", use: userController.create)
	router.get("user", use: userController.index)
	router.get("user", User.parameter, use: userController.getById)
	router.get("user", "name", String.parameter, use: userController.getByName)
	router.delete("user", User.parameter, use: userController.deleteUser)

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
