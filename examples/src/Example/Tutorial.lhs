Introduction
============

This tutorial aims at describing how to face a project using Gogol. For this, we will code a toy example, read a CSV
from Cloud Storage and ingest it into Bigquery.

Setup
-----

Requirements for running this tutorial are:

1. A GCP project.
2. A Cloud Storage Bucket where we will upload our CSV. This will be the starting point of this example pipeline

For the initial setup we will upload the classical [Iris Species Dataset](https://archive.ics.uci.edu/dataset/53/iris) to our bucket.

```
export BUCKET=<YOUR BUCKET NAME>
export PROJECT_ID=<YOUR PROJECT ID>
curl -o /tmp/iris.zip https://archive.ics.uci.edu/static/public/53/iris.zip
cd /tmp
unzip iris.zip
gcloud storage cp /tmp/iris.data gs://$BUCKET/iris.data
```

We will also create a dataset + table in Bigquery to hold the data we want to upload

```
bq mk --dataset $PROJECT_ID:gogol_test
bq mk --table --schema \
   "sepal_length:FLOAT,sepal_width:FLOAT,petal_length:FLOAT,petal_width:FLOAT,species:STRING" \
   gogol_test.iris
```


Code
----

Below are the necessary language pragmas and imports for our example. We use the base Gogol library and specialized
libraries for Cloud Storage and BigQuery, with aliases for readability.

\begin{code}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoFieldSelectors #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ImportQualifiedPost #-}

module Example.Tutorial where
  
import Conduit (mapC, filterC)
import Control.Lens ( (<&>), (.~), (?~) )
import Control.Monad (void)
import Control.Monad.Trans.Resource (liftResourceT)
import Data.Aeson (Value(..))
import Data.Conduit (runConduit, (.|))
import Data.Conduit.Combinators qualified as Conduit
import Data.Function ((&))
import Data.Generics.Labels ()
import Data.HashMap.Strict qualified as HM
import Data.Proxy ( Proxy(..) )
import Data.Text as T ( Text, splitOn, unpack, null )
import Gogol ( HasEnv(envScopes, envLogger), LogLevel(Info), newLogger, newEnv, runResourceT, download, send )
import Gogol.BigQuery qualified as BigQuery
import Gogol.Storage qualified as Storage
import Prelude
import System.IO (stdout)
\end{code}


Defining the pipeline
---------------------
The pipeline function consists of monadic instructions within a ResourceT monad transformer to handle Google API interactions.

\begin{code}
pipeline :: Text -> Text -> IO ()
pipeline bucket projectId = do
  logger <- newLogger Info stdout 
\end{code}

Here we simply create a logger.

Setting up the API Environment
------------------------------
  
All API calls require an environment object. The most important field to configure is the OAuth Scopes.

For this example, we need permissions to:

- Read from a Cloud Storage bucket (storage.objects.get)
- Insert data into a BigQuery table (bigquery.tables.insert)

To determine the required scopes, refer to OAuth 2.0 Scopes for Google APIs. The most restrictive scopes we need are:

- https://www.googleapis.com/auth/devstorage.read_only
- https://www.googleapis.com/auth/bigquery.insertdata

After identifying the required APIs, include the corresponding dependencies (gogol-bigquery and gogol-storage). The
generated code provides OAuth scope definitions for each service.


The it is just a matter of creating a phantom type with all the OAuth types plus the previously generated logger. Remember to add pragma `DataKinds`

\begin{code}
  let oauthScopes = Proxy :: Proxy '[Storage.Devstorage'ReadOnly, BigQuery.Bigquery'Insertdata, BigQuery.Bigquery'FullControl]
  env <- newEnv <&> (envLogger .~ logger) . (envScopes .~ oauthScopes)
\end{code}

With the environment set it is just a matter of running the pipeline steps within a `ResourceT` monad transformer.
Getting the actual command is again going to the specific library documentation and looking for the function that
provides esembles the operation we want to perform. For instance the operation `storage.objects.get` is provided by the
data structure `StorageObjectsGet`. Usually there is always a smart constructor companion for those requests that
initialize most of the fields to the default value. In this case the smart constructor is `newStorageObjectsGet`. For
our example this is how we perform the querying:

Running API Commands
--------------------

With the environment set, we run pipeline steps within a ResourceT monad transformer.

For example, to read a file from Cloud Storage, we use StorageObjectsGet, initialized with newStorageObjectsGet:

\begin{code}
  runResourceT $ do
    -- Download from the bucket/key and create a source of the HTTP stream:
    stream <- download env (Storage.newStorageObjectsGet bucket "iris.data")
\end{code}

The general API pattern involves calling:

```
download :: (MonadResource m, AllowRequest a scopes) => Env scopes -> a -> m (Rs (MediaDownload a)) 
```
where `Rs (MediaDownload StorageObjectGet)` resolves to `Core.Stream`, providing a Conduit stream.


\begin{code}
    rows <- liftResourceT (runConduit (stream .| Conduit.decodeUtf8 .| Conduit.linesUnbounded .| filterC (not . T.null) .| mapC parseLine .|  Conduit.sinkList))
\end{code}

Inserting Data Into BigQuery
----------------------------

To insert rows into BigQuery, use `BigQueryTabledataInsertAll`, constructed using `newBigQueryTabledataInsertAll`. We transform CSV rows into API request objects:

\begin{code}
    let
        bqRows = fmap csvRow2RowsItem rows
        request = BigQuery.newTableDataInsertAllRequest & (#rows ?~ bqRows)
        cmd = BigQuery.newBigQueryTabledataInsertAll "gogol_test" request projectId "iris"
    void (send env cmd)
\end{code}


CSV parsing and conversion
--------------------------

Some helper functions for manipulating the CSV file.

\begin{code}
csvRow2RowsItem :: CsvRow -> BigQuery.TableDataInsertAllRequest_RowsItem
csvRow2RowsItem row = BigQuery.newTableDataInsertAllRequest_RowsItem & (#json ?~ csvRow2JsonObject row)
  where
    csvRow2JsonObject (CsvRow sl sw pl pw sp) =
       BigQuery.newJsonObject $ HM.fromList
         [ ("sepal_length",  Number (realToFrac sl))
         , ("sepal_width",   Number (realToFrac sw))
         , ("petal_length",  Number (realToFrac pl))
         , ("petal_width",   Number (realToFrac pw))
         , ("species",       String sp)
         ]
\end{code}


\begin{code}
data CsvRow = CsvRow {
  sepal_length::Double,
  sepal_width::Double,
  petal_length::Double,
  petal_width::Double,
  species::Text
}

-- Unsafe version but useful for this example
parseLine :: Text -> CsvRow
parseLine line =
  case splitOn "," line of
    [sepal_length,sepal_width,petal_length,petal_width,species] ->
      CsvRow (unsafeReadFloat sepal_length) (unsafeReadFloat  sepal_width) (unsafeReadFloat petal_length) (unsafeReadFloat petal_width) species
    x -> error ("Wrong CSV: " <> show x)
  where
    unsafeReadFloat = read . T.unpack
\end{code}








