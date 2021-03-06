% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-form-data.R
\name{get_form_temp}
\alias{get_form_temp}
\title{Download submission to temp file}
\usage{
get_form_temp(syn, file_handle_id, form_data_id)
}
\arguments{
\item{syn}{Synapse login object}

\item{file_handle_id}{The fileHandleId for the submission.}

\item{form_data_id}{The formDataId for the submission.}
}
\value{
The name of the temporary file.
}
\description{
Downloads the submission to a temporary
file and returns the name of the file.
}
