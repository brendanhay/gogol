Introduction
============

This tutorial aims at describing how to face a project using Gogol. For this, we will code a toy example, read a CSV
from Cloud Storage and ingest it into Bigquery.

Setup
-----

Requirements for running this tutorial are:

1. A GCP project.
2. A Cloud Storage Bucket where we will upload our CSV. This will be the starting point of this example pipeline

\begin{code}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Example.Tutorial where
\end{code}




