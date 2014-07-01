require 'node'

class Tree

  def initialize
    @name_array = []
  end

  def print_names(tree)
    puts tree.name
    tree.children.each do |child|
      print_names(child)
    end
  end

  def names(tree)
    @name_array << tree.name
    tree.children.each do |child|
      names(child)
    end
    @name_array
  end

end