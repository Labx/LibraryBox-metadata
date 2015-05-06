group_by(.tag_id) | map({
    id:     .[0].tag_id,
    name:   .[0].tag_name,
    books: map(
    {
        id: .book_id,
        title: .book_title,
        sort: .book_sort,
    }
    ) | unique,
})
