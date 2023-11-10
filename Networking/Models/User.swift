import Foundation

struct User: Decodable {
    let id: Int
    let uid: String
    let password: String
    let firstName: String
    let lastName: String
    let username: String
    let email: String
    let avatar: String
    let gender: String
    let phoneNumber: String
    let socialInsuranceNumber: String
    let dateOfBirth: String
    let employment: Employment
    let address: Address
    let creditCard: CreditCard
    let subscription: Subscription
    
    private enum CodingKeys: String, CodingKey {
        case id, uid, password
        case firstName = "first_name"
        case lastName = "last_name"
        case username, email, avatar, gender, phoneNumber
        case socialInsuranceNumber = "social_insurance_number"
        case dateOfBirth = "date_of_birth"
        case employment, address, creditCard, subscription
    }
}

struct Employment: Decodable {
    let title: String
    let keySkill: String
}

struct Address: Decodable {
    let city: String
    let streetName: String
    let streetAddress: String
    let zipCode: String
    let state: String
    let country: String
    let coordinates: Coordinates
}

struct Coordinates: Decodable {
    let lat: Double
    let lng: Double
}

struct CreditCard: Decodable {
    let ccNumber: String
    
    private enum CodingKeys: String, CodingKey {
        case ccNumber = "cc_number"
    }
}

struct Subscription: Decodable {
    let plan: String
    let status: String
    let paymentMethod: String
    let term: String
}

