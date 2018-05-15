def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) as count FROM characters GROUP BY species ORDER BY count DESC LIMIT 1; "
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, sg.name FROM series s INNER JOIN authors a  ON s.author_id = a.id INNER JOIN subgenres sg ON s.subgenre_id = sg.id;"
end

def select_series_title_with_most_human_characters
  "SELECT s.title FROM series s INNER JOIN characters c ON c.series_id = s.id WHERE species = 'human' GROUP BY s.id ORDER BY COUNT(c.id) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(cb.book_id) AS count FROM characters c INNER JOIN character_books cb ON c.id = cb.character_id GROUP BY c.id ORDER BY count DESC, c.name ASC;"
end
