import UIKit

let sortedArr = [1,4,17,25,46,77,80,100,105,126,175]

func binarySearch(sortedArr: [Int], target: Int) -> Int {
    var low = 0
    var high = sortedArr.count-1
    
    while(high >= low){
        let mid = (high+low) / 2
        if(sortedArr[mid] == target){ return mid }
        if(sortedArr[mid]>target) { high=mid-1 }
        else { low=mid+1 }
    }
    return -1
}

binarySearch(sortedArr: sortedArr, target: 105)
