require 'minitest/autorun'
require '../lib/node'

class NodeTest < Minitest::Test
	def test_its_a_thing
		node = Node.new(1)
		assert node
	end

	def test_next_node_can_be_changed
			node = Node.new(1)
			node2 = Node.new(2)
			node.next_node = node2

			assert_equal 2, node.next_node.data
	end

	def test_next_node_can_be_nil
		node = Node.new(1)
		assert_equal nil, node.next_node
	end

	def test_it_has_data
		node = Node.new(1)
		assert_equal 1, node.data
	end

	def test_it_has_a_position
		node = Node.new(1)

		assert_equal nil, node.position
	end

	def test_you_can_change_position
		node = Node.new(1)
		node.position = 1

		assert_equal 1, node.position
	end
end