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

  def names_with_indentation(tree, indentation = 0)
    @name_array << (" " * indentation + tree.name)
    tree.children.each do |child|
      names_with_indentation(child, indentation + 2)
    end
    @name_array
  end

  def to_hash(tree)
    name_hash = {tree.name => {} }
    tree.children.each do |child|
      name_hash[tree.name].merge!(to_hash(child))
    end
    name_hash
  end

end