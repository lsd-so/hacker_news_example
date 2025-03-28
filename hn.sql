/* Here is an example program written in LSD to get posts from the front page of Hacker News */

-- The URL we are interested in querying from
hn <| https://news.ycombinator.com |

-- The CSS selector for the repeating container within which the content of interest can be found
container <| span.titleline |

-- The CSS selector for the element containing the content we're interested in. In this case, the text in the anchor tag is the post title
post <| a |

-- Reading "line by line": From this URL, grouping by these repeating containers, pluck out the element we understand as "post"
FROM hn
|> GROUP BY container
|> SELECT post
