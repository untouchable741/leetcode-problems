class Solution {
    // Convert to string
    func isPalindrome(_ x: Int) -> Bool {
        let charArray = Array(String(x))
        for i in 0..<charArray.count {
            if charArray[i] != charArray[charArray.count - i - 1] {
                return false
            }
        }
        return true
    }

    // Not convert to string
    func isPalindrome2(_ x: Int) -> Bool {
        var tempX = x
        var reversedX = 0
        while tempX > 0 {
            reversedX = reversedX * 10 + tempX % 10
            tempX = tempX / 10
        }
        return x == reversedX
    }
}

print(Solution().isPalindrome(12121))
print(Solution().isPalindrome2(12121))
