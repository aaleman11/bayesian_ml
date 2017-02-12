//: Playground - noun: a place where people can play

/*
 Conditional Probability:
 P(A|B) = P(A and B)/P(B)
 Read as: The probability of A given B = Probability of A and B divided by the Probability of B
 
 Bayes Rule:
 P(A|B) = P(B|A) * P(A) / P(B)
 
 P(theta|D) = P(D|theta) * P(theta) / P(data)
 
 If events A and B are not independent, then the probability of the intersection of A and B (the probability that both events occur) is defined by
 
 P(A and B) = P(A)*P(B|A)
 P(B|A) = P(A and B)/P(A)
 
 1 pounds = 0.453592 kilograms
 
 P(Weight Input|1RM) = P(Weight Input and 1RM)/P(1RM)
 
 
 3 x 10 @ 75% - Three sets of 10 reps at 75% of the 1RM
 8/80%, 6/85%, 6/85%, 4/90% - Eight reps at 80%, two sets of six reps at 85%, and four reps at 90% of the 1RM

 ---Heaviest Weight You Can Lift 4-6 times---
 Upper Body 1RM(kg) = (Heaviest Weight (kg) X 1.1307) + 0.6998
 Lower Body 1RM(kg) = (Heaviest Weight (kg) x 1.09703) + 14.2546
 
 */

import UIKit

/*
 Upper Body: Calculations for 1RM
 Upper Body 1RM(kg) = (Heaviest Weight (kg) X 1.1307) + 0.6998
*/
func oneRepMaxInKgUpper(currMaxRep: Double) -> Int {
    
    let oneRepMax = round((currMaxRep * 1.1307) + 0.6998)
    
    return Int(oneRepMax)
    
}

let oneRepMaxKgUpper = oneRepMaxInKgUpper(currMaxRep: 60)

print(oneRepMaxKgUpper)

func oneRepMaxInLbsUpper(currMaxRep: Double) -> Int {
    
    let currMaxRepKg = (currMaxRep * 0.453592)
    
    let oneRepMax = round((currMaxRepKg * 1.1307) + 0.6998)
    
    let oneRepMaxLbs = round(oneRepMax / 0.453592)
    
    return Int(oneRepMaxLbs)
    
}

let oneRepMaxLbsUpper = oneRepMaxInLbsUpper(currMaxRep: 132.277)

print(oneRepMaxLbsUpper)


/*
 Lower Body: Calculations for 1RM
  Lower Body 1RM(kg) = (Heaviest Weight (kg) x 1.09703) + 14.2546
 */
func oneRepMaxInKgLower(currMaxRep: Double) -> Int {
    
    let oneRepMax = round((currMaxRep * 1.09703) + 14.2546)
    
    return Int(oneRepMax)
    
}

let oneRepMaxKgLower = oneRepMaxInKgLower(currMaxRep: 60)

print(oneRepMaxKgLower)

func oneRepMaxInLbsLower(currMaxRep: Double) -> Int {
    
    let currMaxRepKg = (currMaxRep * 0.453592)
    
    let oneRepMax = round((currMaxRepKg * 1.09703) + 14.2546)
    
    let oneRepMaxLbs = round(oneRepMax / 0.453592)
    
    return Int(oneRepMaxLbs)
    
}

let oneRepMaxLbsLower = oneRepMaxInLbsLower(currMaxRep: 132.277)

print(oneRepMaxLbsLower)

//---End of Functions to Determine 1RM for Upper and Lower Body----

/*
 Recommended Exercises Based on 1RM
 */

func recommendedSetsKg(currMaxRepKg: Int) -> String {
    
//    3 x 10 @ 75% - Three sets of 10 reps at 75% of the 1RM
//    8/80%, 6/85%, 6/85%, 4/90% - Eight reps at 80%, two sets of six reps at 85%, and four reps at 90% of the 1RM
    
    let seventyFivePercent : String = String(round(Double(currMaxRepKg) * 0.75))
    let eightyPercent : String = String(round(Double(currMaxRepKg) * 0.80))
    let eightyFivePercent : String = String(round(Double(currMaxRepKg) * 0.85))
    let ninetyPercent : String = String(round(Double(currMaxRepKg) * 0.90))
    
    
    let recommendedSet = "For best results do:\n3x10 of " + seventyFivePercent + " kg,\n"
            + "3x8 of " + eightyPercent + " kg,\n" + "3x6 of " + eightyFivePercent + " kg,\n"
            + "3x4 of " + ninetyPercent + " kg"
    
    return recommendedSet
}

let recommendedSetKg = recommendedSetsKg(currMaxRepKg: oneRepMaxKgUpper)

print(recommendedSetKg)
print()

func recommendedSetsLbs(currMaxRepLbs: Int) -> String {
    
    //    3 x 10 @ 75% - Three sets of 10 reps at 75% of the 1RM
    //    8/80%, 6/85%, 6/85%, 4/90% - Eight reps at 80%, two sets of six reps at 85%, and four reps at 90% of the 1RM
    
    let seventyFivePercent : String = String(round(Double(currMaxRepLbs) * 0.75))
    let eightyPercent : String = String(round(Double(currMaxRepLbs) * 0.80))
    let eightyFivePercent : String = String(round(Double(currMaxRepLbs) * 0.85))
    let ninetyPercent : String = String(round(Double(currMaxRepLbs) * 0.90))
    
    
    let recommendedSet = "For best results do:\n3x10 of " + seventyFivePercent + " lbs,\n"
        + "3x8 of " + eightyPercent + " lbs,\n" + "3x6 of " + eightyFivePercent + " lbs,\n"
        + "3x4 of " + ninetyPercent + " lbs"
    
    return recommendedSet
}

let recommendedSetLbs = recommendedSetsLbs(currMaxRepLbs: oneRepMaxLbsUpper)

print(recommendedSetLbs)







