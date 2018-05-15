UPDATE characters SET species = "Martian" HAVING MAX(id);

-- WHERE id = (SELECT MAX(id) FROM characters) 