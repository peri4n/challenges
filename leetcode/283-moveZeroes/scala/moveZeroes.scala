object Solution {
  def moveZeroes(nums: Array[Int]): Unit = {
    var nonZeroFound = 0
    var i = 0
    while (i < nums.length) {
      if (nums(i) != 0) {
        nums(nonZeroFound) = nums(i)
        nonZeroFound += 1
      }
      i += 1
    }

    i = nonZeroFound
    while (i < nums.length) {
      nums(i) = 0
      i += 1
    }
  }
}
