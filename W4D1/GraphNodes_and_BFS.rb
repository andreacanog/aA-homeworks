class GraphNode

    attr_accessor :value, :neighbors

    def initialize(vauel)
      @value = value
      @neighbors = []
    end
  
    def add_neighbor(node)
      @neighbors << node
    end

end


def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()
  
    while queue.length > 0
      node = queue.shift

      if !visited.include?(node)
        if node.val == target_value
            return node.val 
        end

        visited.add(node)
        queue += node.neighbors
      end
      
    end
    
    return nil
end
