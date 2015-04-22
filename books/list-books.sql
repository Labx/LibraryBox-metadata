SELECT
-- Create books listing view used to create json
  book.id   AS id,
  title,
  book.sort,
  author.sort AS authors,
  book.pubdate,
  comments.text AS summary,
serie.id AS series,
-- series_index,
  book.path,
  tag.id as tags
--   author.id   AS aid,
--   book.id   AS bid
FROM books AS book
  -- fetch author data
  LEFT OUTER JOIN books_authors_link ON books_authors_link.book = book.id
  LEFT OUTER JOIN authors AS author ON books_authors_link.author = author.id
    -- fetch comments data
  LEFT OUTER JOIN comments ON comments.book = book.id
  -- fetch tags data
  LEFT OUTER JOIN books_tags_link ON books_tags_link.book = book.id
  LEFT OUTER JOIN tags AS tag ON books_tags_link.tag = tag.id
  -- fetch serie data
  LEFT OUTER JOIN books_series_link ON books_series_link.book = book.id
  LEFT OUTER JOIN series AS serie ON books_series_link.series = serie.id
;