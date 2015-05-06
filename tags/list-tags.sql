SELECT
  -- Create books listing view used to create json
  tag.id     AS tag_id,
  tag.name   AS tag_name,
  book.id    AS book_id,
  book.title AS book_title,
  book.sort  AS book_sort
FROM tags AS tag
  LEFT OUTER JOIN books_tags_link ON books_tags_link.tag = tag.id
  LEFT OUTER JOIN books AS book ON books_tags_link.book = book.id
;