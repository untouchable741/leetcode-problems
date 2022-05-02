class Solution {
    func romanToInt(_ s: String) -> Int {
        let subtractions: [String: Int] = [
            "I": 1,
            "IV": 4,
            "V": 5,
            "IX": 9,
            "X": 10,
            "XL": 40,
            "L": 50,
            "XC": 90,
            "C": 100,
            "CD": 400,
            "D": 500,
            "CM": 900,
            "M": 1000
        ]
        var accumulatedValue = 0
        var i = 0
        let charArray = Array(s)
        while i < charArray.count {
            if i + 1 < charArray.count, let subtractionValue = subtractions[String(charArray[i...i + 1])] {
                accumulatedValue += subtractionValue
                i += 2
            } else {
                accumulatedValue += subtractions[String(charArray[i])]!
                i += 1
            }
        }
        return accumulatedValue
    }
}

print(Solution().romanToInt("MCMXCIV"))
