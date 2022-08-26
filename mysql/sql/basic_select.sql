SELECT  
	a.movieTitle
    ,b.comment
    ,b.movieSeq
FROM movie a
join comment b on a.movieSeq = b.movieSeq;