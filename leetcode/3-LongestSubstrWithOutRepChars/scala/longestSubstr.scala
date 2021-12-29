import scala.collection.mutable

object Solution {
  def lengthOfLongestSubstring(s: String): Int = {
    var l = 0
    var r  = 0
    val charSet = mutable.Set[Char]()
    var res = 0

    while (r < s.length) {
      while (charSet.contains(s(r))) {
        charSet.remove(s(l))
        l += 1
      }
      charSet.add(s(r))
      res = math.max(res, r - l + 1)

      r += 1
    }

    return res
  }
}
