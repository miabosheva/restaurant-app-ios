import Foundation

protocol DefaultObject {
    var title: String { get set }
    var description: String { get set }
    var image: String? { get set }
}

struct Drink: DefaultObject {
    var title: String
    var description: String
    var type: DrinkType
    var image: String?
}

enum DrinkType {
    case Alcoholic
    case NonAlcoholic
}

struct Food: DefaultObject {
    var title: String
    var description: String
    var type: FoodType
    var image: String?
}

enum FoodType {
    case Breakfast
    case Lunch
    case Dinner
}

class ModelObjects: ObservableObject {
    
    @Published var drinks: [Drink]
    @Published var foods: [Food]
    
    init() {
        self.drinks = [
            Drink(title: "Mojito", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: DrinkType.Alcoholic, image: nil),
            Drink(title: "Gin Tonic", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: DrinkType.Alcoholic, image: nil),
            Drink(title: "Wine", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: DrinkType.Alcoholic, image: nil),
            Drink(title: "Orange Juice", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: DrinkType.NonAlcoholic, image: nil)
        ]
        
        self.foods = [
            Food(title: "Lasagna", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: FoodType.Dinner, image: ""),
            Food(title: "Eggs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: FoodType.Breakfast, image: ""),
            Food(title: "Toast", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: FoodType.Breakfast, image: nil),
            Food(title: "Candy", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: FoodType.Lunch, image: nil),
            Food(title: "Ceasar Salad", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla neque, laoreet quis laoreet eget, finibus eleifend orci. Suspendisse potenti. Praesent accumsan ex tellus, ac consectetur augue malesuada sed. Proin accumsan lacinia volutpat. Nulla mi tellus, aliquet in mauris vitae, elementum vehicula urna. Nulla facilisi. Nullam ac ante eget magna tristique semper. Etiam vestibulum euismod arcu, at ornare nisi porttitor rhoncus. Nunc sit amet mattis mi.", type: FoodType.Lunch, image: nil)
        ]
    }
}
