require 'node'

class Tree

  def print_names(tree)
    puts tree.name
    tree.children.each do |child|
      print_names(child)
    end
  end

end