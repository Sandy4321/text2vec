% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrix.R
\name{get_tcm}
\alias{get_tcm}
\title{Creates Term-Coocurnce matrix construction}
\usage{
get_tcm(corpus)
}
\arguments{
\item{corpus}{HashCorpus or VocabCorpus object.
See \link{create_vocab_corpus}, \link{create_hash_corpus} for details.}
}
\description{
Creates Term-Coocurnce matrix from Corpus object.
}
\examples{
\dontrun{
txt <- movie_review[['review']][1:1000]
it <- itoken(txt, tolower, word_tokenizer)
vocab <- vocabulary(it)
#remove very common and uncommon words
pruned_vocab = prune_vocabulary(vocab, term_count_min = 10,
 doc_proportion_max = 0.8, doc_proportion_min = 0.001, max_number_of_terms = 5000)

it <- itoken(txt, tolower, word_tokenizer)
corpus <- create_vocab_corpus(it, pruned_vocab, grow_dtm = FALSE, skip_grams_window = 5)
tcm <- get_tcm(corpus)
dim(tcm)
}
}
\seealso{
\link{create_vocab_corpus}, \link{create_hash_corpus}
}

