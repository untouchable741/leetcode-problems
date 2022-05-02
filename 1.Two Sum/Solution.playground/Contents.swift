class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let matchedIndex = dictionary[nums[i]] {
                return [matchedIndex, i]
            }
            dictionary[target - nums[i]] = i
        }
        return []
    }
}

print(Solution().twoSum([3, 6, 8, 5, 4, 12], 12))
print(Solution().twoSum([], 13))
