require "minitest/autorun"
require "../lib/linked-list"
require "../lib/node"
require 'pry'
class TestLinkedList < Minitest::Test
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

	def test_it_counts
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

	def test_it_finds_tail
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

	def test_it_pops
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
		result = list.head.next_node.next_node.next_node.data
		assert_equal "3", result
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
		assert_equal "2", result
	end
end
