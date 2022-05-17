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
  new_node = ListNode.new()
  quotient = 0

  while !l1.nil? || !l2.nil? || quotient > 0
    sum           = (l1.nil? ? 0 : l1.val) + (l2.nil? ? 0 : l2.val) + quotient
    quotient      = sum / 10
    remainder     = sum % 10
    new_node.next = ListNode.new(remainder)
    new_node      = new_node.next
    l1            = l1.nil? ? l1 : l1.next
    l2            = l2.nil? ? l2 : l2.next
  end

  new_node
end