module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /^the (RottenPotatoes )?home\s?page$/ then '/movies'
    when /^the edit page for ("Spirited Away")?$/ then '/movies/9/edit'
    when /^the details page for ("Spirited Away")?$/ then '/movies/9'
    when /^the Find Similar Movies page for ("Spirited Away")?$/ then '/movies_with_same_director/9'
    end
  end
end
