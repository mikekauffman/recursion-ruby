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

  def names_with_indentation(tree)
    if @name_array.length == 1 || @name_array.length == 2
      @name_array << "  " + tree.name
    elsif @name_array.length == 3
      @name_array << "    " + tree.name
    elsif @name_array.length == 4
      @name_array << "      " + tree.name
    else
      @name_array << tree.name
    end
    tree.children.each do |child|
      names_with_indentation(child)
    end
    @name_array
  end

end