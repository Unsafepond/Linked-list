require_relative "node"
class LinkedList
	attr_accessor :head, :tail
	def initialize(node = nil)
		@head = node
		@tail = head
	end
	
	def append(node)
		if head == nil
			@head = Node.new("head")
			current = node
			@head.next_node = current
		else
			current = @head
			until current.next_node == nil
				current = current.next_node
			end
			current.next_node = node
		end
	end

	def count
		total = 0
		current = @head
		until current.next_node == nil
			total += 1
			current.position = total
			current = current.next_node
		end
		return total
	end

	def find_tail
		current = @head
		until current.next_node == nil
			current = current.next_node
		end
		@tail = current
	end

	def pop
		current = @head
		until current.next_node == nil
			previous = current
			current = current.next_node
		end
		previous.next_node = nil
	end

	def find_by_position(num)
		current = @head
		until current.position == num 
			current = current.next_node
		end
		current
	end

	def pop_first
		current = @head
		@head = current.next_node
	end

	def push(node)
		current = node
		current.next_node = head
		@head = current
	end

	def insert(node, position)
		current = find_by_position(position)
		node.next_node = current.next_node.next_node
		current.next_node = node
	end
end