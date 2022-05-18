# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  return l1 if l2 == nil
  return l2 if l1 == nil

  l3_val  = l1.val + l2.val
  l3      = ListNode.new(l3_val % 10)
  add     = l3_val >= 10 ? 1 : 0
  l1      = l1.next
  l2      = l2.next
  tmp     = l3

  while !l1.nil? || !l2.nil? || add > 0
    l3_val    = (l1.nil? ? 0 : l1.val) + (l2.nil? ? 0 : l2.val) + add
    add  = l3_val / 10
    remainder = l3_val % 10
    tmp.next   = ListNode.new(remainder)
    tmp        = tmp.next
    l1        = l1.nil? ? l1 : l1.next
    l2        = l2.nil? ? l2 : l2.next
  end

  l3
end