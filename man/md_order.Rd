% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/md-list.R
\name{md_order}
\alias{md_order}
\title{Markdown ordered list}
\usage{
md_order(x, marker = c(".", ")"), seq = TRUE, pad = TRUE)
}
\arguments{
\item{x}{The vector of numbered list items.}

\item{marker}{The ordered list marker following each arabic digits; either
\code{.} or \verb{)}.}

\item{seq}{logical; Should sequential numbers be used? Defaults to \code{TRUE}. If
\code{FALSE}, each element will be preceded by the number one; many markdown
engines will automatically render repeated ones as a sequential list.}

\item{pad}{logical; If sequential numbers are used, should they be padded
with zeroes on the left to match the width of the greatest number? Defaults
to \code{TRUE}.}
}
\value{
A \code{glue} vector with length equal to \code{x}.
}
\description{
take a character vector and return a glue vector of valid ordered list items.
When printed together, these ordered list items create a ordered list. This
container block is rendered as the \verb{<ol>} HTML tag, with each element of the
vector creating a separate \verb{<li>} tag.
}
\details{
A list is a sequence of one or more list items of the same type. The list
items may be separated by any number of blank lines.

Two list items are of the same type if they begin with a list marker of the
same type. Two list markers are of the same type if (b) they are ordered list
numbers with the same delimiter (either \code{.} or \verb{)}).

A list is an ordered list if its constituent list items begin with ordered
list markers, and a bullet list if its constituent list items begin with
bullet list markers.

The start number of an ordered list is determined by the list number of its
initial list item. The numbers of subsequent list items are disregarded.
}
\examples{
md_order(state.name[1:5])
md_order(sample(state.name, 5), marker = ")")
md_order(sample(state.name, 5), seq = FALSE)
}
\seealso{
Other container block functions: 
\code{\link{md_bullet}()},
\code{\link{md_list}()},
\code{\link{md_quote}()},
\code{\link{md_task}()}
}
\concept{container block functions}
