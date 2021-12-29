object Solution {
  def rotate(nums: Array[Int], k: Int): Unit = {
    def reverse(start: Int, end: Int): Unit = {
      var (l, r) = (start, end)
      while (l < r) {
        val temp = nums(l)
        nums(l) = nums(r)
        nums(r) = temp
        l += 1
        r -= 1
      }
    }

    val kk = k % nums.length

    reverse(0, nums.length-1)
    reverse(0, kk-1)
    reverse(kk, nums.length-1)
  }
}
