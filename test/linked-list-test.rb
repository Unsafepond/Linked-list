require "minitest/autorun"
require "../lib/linked-list"
require "../lib/node"
require 'pry'
class TestLinkedList < Minitest::Test
	def test_its_a_thing
		list = LinkedList.new

		assert list
	end
	def test_it_has_a_head
		list = LinkedList.new
		node = Node.new("1")
		list.append(node)
		assert_equal "head", list.head.data
	end

	def test_it_adds_a_node_after_head
		list = LinkedList.new
		node = Node.new("1")
		list.append(node)
		assert_equal "1", list.head.next_node.data
	end

	def test_it_adds_2_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		list.append(node)
		list.append(node2)
		assert_equal "2", list.head.next_node.next_node.data
	end

	def test_it_adds_multiple_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		result = list.head.next_node.next_node.next_node.next_node.data
		assert_equal "4", result
	end
	def test_it_counts_2_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")

		list.append(node)
		list.append(node2)
		result = list.count
		assert_equal 2, result
	end

	def test_it_counts_4_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		result = list.count
		assert_equal 4, result
	end
	def test_it_counts_5_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")


		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		result = list.count
		assert_equal 5, result
	end

	def test_it_counts_6_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")
		node6 = Node.new("6")


		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		list.append(node6)
		result = list.count
		assert_equal 6, result
	end

	def test_it_finds_tail_with_3_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")

		list.append(node)
		list.append(node2)
		list.append(node3)
		result = list.find_tail.data
		assert_equal "3", result
	end

	def test_it_finds_tail_with_4_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		result = list.find_tail.data
		assert_equal "4", result
	end

	def test_it_finds_tail_with_5_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		result = list.find_tail.data
		assert_equal "5", result
	end

	def test_it_finds_tail_with_6_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")
		node6 = Node.new("6")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		list.append(node6)
		result = list.find_tail.data
		assert_equal "6", result
	end

	def test_it_pops_with_3
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.pop
		result = list.find_tail.data
		assert_equal "2", result
	end

	def test_it_pops_with_4
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.pop
		result = list.find_tail.data
		assert_equal "3", result
	end

	def test_it_pops_with_5
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		list.pop
		result = list.find_tail.data
		assert_equal "4", result
	end

	def test_it_pops_2_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		list.pop
		list.pop
		result = list.find_tail.data
		assert_equal "3", result
	end

	def test_it_pops_3_nodes
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")
		node5 = Node.new("5")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.append(node5)
		list.pop
		list.pop
		list.pop
		result = list.find_tail.data
		assert_equal "2", result
	end

	def test_find_by_position
			list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")
		node4 = Node.new("4")

		list.append(node)
		list.append(node2)
		list.append(node3)
		list.append(node4)
		list.count
		result = list.find_by_position(2).data
		assert_equal "1", result
	end

	def test_pop_first_node
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
	
		list.append(node)
		list.append(node2)
		list.pop_first

		result = list.head.data
		assert_equal "1", result
	end

	def test_it_can_push
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")

		list.append(node)
		list.append(node2)
		list.push(node3)

		result = list.head.data
		assert_equal "3", result
	end

	def test_it_can_insert_anywhere
		list = LinkedList.new
		node = Node.new("1")
		node2 = Node.new("2")
		node3 = Node.new("3")

		list.append(node)
		list.append(node2)
		list.count
		list.insert(node3, 1)

		result = list.head.next_node.data
		assert_equal "3", result
	end
end
