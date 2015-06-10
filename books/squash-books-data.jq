group_by(.id) | map({
    id:     .[0].id,
    title:   .[0].title,
    sort:   .[0].sort,
    authors: map(
    {
        id: .author_id,
        name: .author_name,
        sort: .author_sort,
    }
    ) | unique,
    summary:    .[0].summary,
    serie: map(
    {
        id: .serie_id,
        name: .serie_name
    }) | unique,
    tags: map(
    {
        id: .tag_id,
        name: .tag_name
    }
    )| unique,
    path: .[0].path
})
