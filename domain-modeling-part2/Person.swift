import Foundation

class Person : CustomStringConvertible {
    let firstName : String?
    let lastName : String?
    let currentAge : Int?
    var job : Job?
    var spouse : Person?
    
    init(first: String?, last : String?, currentJob : Job?, currentSpouse : Person?, ageNow : Int?) {
        firstName = first
        lastName = last
        currentAge = ageNow
        job = currentJob
        spouse = currentSpouse
    }
    
    var description : String {
        if (firstName != nil && lastName != nil && currentAge != nil && job != nil && spouse != nil) {
            if (job == nil && spouse == nil) {
                return "\(firstName!) \(lastName!) is \(currentAge!), has no job and spouse"
            } else if (job == nil) {
                return "\(firstName!) \(lastName!) is \(currentAge!), has no job and married to \(spouse!.firstName!) \(spouse!.lastName!)"
            } else if (spouse == nil) {
                return "\(firstName!) \(lastName!) is \(currentAge!), works as a \(job!.jobTitle!) and has no spouse"
            } else {
                return "\(firstName!) \(lastName!) is \(currentAge!), works as a \(job!.jobTitle!) and married to \(spouse!.firstName!) \(spouse!.lastName!)"
            }
        } else {
             return " "
        }
    }
    
    func updateSpouse(spouseIdentity : Person) {
        spouse = spouseIdentity
    }
    
    func printString() {
        if (firstName != nil && lastName != nil && currentAge != nil) {
            print("\(firstName!) \(lastName!) is \(currentAge!)")
            if (currentAge >= 16) {
                if (job != nil) {
                    print(" Job = \(job!.jobTitle!)")
                } else {
                    print(" No Job")
                    job = nil
                }
            } else {
                print(" Not old enough for a job")
            }
            if (currentAge >= 18) {
                if (spouse != nil) {
                    print(" Spouse = \(spouse!.firstName!) \(spouse!.lastName!)")
                } else {
                    print(" No Spouse")
                    spouse = nil
                }
            } else {
                print(" Not old enough for a spouse")
            }
        } else {
            print("One of the properties is Nil")
        }
    }
}