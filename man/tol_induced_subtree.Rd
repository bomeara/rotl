% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tol.R
\name{tol_induced_subtree}
\alias{tol_induced_subtree}
\title{Subtree from the Open Tree of Life}
\usage{
tol_induced_subtree(
  ott_ids = NULL,
  node_ids = NULL,
  label_format = NULL,
  file,
  ...
)
}
\arguments{
\item{ott_ids}{Numeric vector. OTT ids indicating nodes to be used as tips
in the induced tree.}

\item{node_ids}{Character vector. Node ids indicating nodes to be used as
tips in the induced tree.}

\item{label_format}{Character. Defines the label type; one of
\dQuote{\code{name}}, \dQuote{\code{id}}, or \dQuote{\code{name_and_id}}
(the default).}

\item{file}{If specified, the function will write the subtree to a file in
newick format.}

\item{...}{additional arguments to customize the API call (see
\code{\link{rotl}} for more information).}
}
\value{
If no value is specified to the \code{file} argument
    (default), a phylogenetic tree of class \code{phylo}.

    Otherwise, the function returns invisibly a logical indicating
    whether the file was successfully created.

    Note that the tree returned when specifying a file name with the
    \code{file} argument is the \dQuote{raw} Newick string returned by Open
    Tree of Life. This string contains singleton nodes, and therefore will
    be different from the tree returned as a \code{phylo} object which will
    not contain these singleton nodes.
}
\description{
Return the induced subtree on the synthetic tree that relates a list of nodes.
}
\details{
Return a tree with tips corresponding to the nodes identified in
the input set that is consistent with the topology of the current
synthetic tree. This tree is equivalent to the minimal subtree
induced on the draft tree by the set of identified nodes.
}
\examples{
\dontrun{
## Result as a `phylo` object
res <- tol_induced_subtree(ott_ids = c(292466, 267845, 316878, 102710))

## Raw Newick string from Open Tree of Life
tree_file <- tempfile(fileext = ".tre")
tol_induced_subtree(ott_ids = c(292466, 267845, 316878, 102710),
                    file=tree_file)

}
}
