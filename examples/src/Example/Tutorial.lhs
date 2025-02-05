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

These are main pragmas and imports that we need for our example. They include the base `Gogol` and the 2 specialised
libraries for our example `Gogol.Storage` and `Gogol.BigQuery` aliesed for better code reading.

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
import Data.Proxy ( Proxy(..) )
import Data.Text as T ( Text, splitOn, unpack, null )
import Gogol ( HasEnv(envScopes, envLogger), LogLevel(Info), newLogger, newEnv, runResourceT, download, send )
import Gogol.BigQuery qualified as BigQuery
import Gogol.Storage qualified as Storage
import Prelude
import qualified Data.HashMap.Strict as HM
import System.IO (stdout)
\end{code}

So we will create a function that will be our pipeline. Since our pipeline is mostly invoking GCP APIs it will consist
of a set of monadic instructions in a `ResourceT` monad transformer handling Google's APIs. Let's start writing that pipeline:

\begin{code}
pipeline :: Text -> Text -> IO ()
pipeline bucket projectId = do
  logger <- newLogger Info stdout 
\end{code}

Here nothing more than creating a logger.

All API invocations involve calling a function, passing the environment and crafting an object acting as the function
call parameters. When creating the environment we use some lenses to set some fields and from those the most important ones
are the OAuth Scopes.

The first thing is to figure out which scopes to we need. For our example, we need to read from a bucket, create a
bigquery table and dataset, and insert some data. You need to go to [OAuth 2.0 Scopes for Google APIs](https://developers.google.com/identity/protocols/oauth2/scopes)
and investigate which permissions are required for your problem. In our case we need permissions:
  
- storage.objects.get
- bigquery.tables.insert

So you go to [OAuth 2.0 Scopes for Google APIs](https://developers.google.com/identity/protocols/oauth2/scopes) look for `Storage` and
`Bigquery` since those are the prefixes of our required permissions and pick the most restrictive scope. For instance, for the storage we
will go with the `https://www.googleapis.com/auth/devstorage.read_only` since we only need to read the CSV.

Now that you've identified which APIs are required, you have to include those libraries in your depedencies. In our
case, `gogol-bigquery` and `gogol-storage`. For each library, the code generation generates the OAuth scopes provided by
the API. For example, [here you can
see](https://github.com/brendanhay/gogol/blob/main/lib/services/gogol-storage/gen/Gogol/Storage.hs#L38-L43) ones for
Storage.

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

\begin{code}
  runResourceT $ do
    -- Download from the bucket/key and create a source of the HTTP stream:
    stream <- download env (Storage.newStorageObjectsGet bucket "iris.data")
\end{code}

in order to interact with Google's api you usually run `send` for sending commands or `download` or `upload` when the
semantics of the operation make sense. This always follow the same pattern:

```
download :: (MonadResource m, AllowRequest a scopes) => Env scopes -> a -> m (Rs (MediaDownload a)) 
```

provide an `env`, craft a request `a` and return a monadic value `Rs a`. Rs is a type family so different `a` will
generate different return values.  In the case of the get object from bucket the equivalent type of `Rs (MediaDownload
StorageObjectGet)` is `Core.Stream` (see
https://github.com/brendanhay/gogol/blob/main/lib/services/gogol-storage/gen/Gogol/Storage/Objects/Get.hs#L183).

So invoking download will create a Conduit Stream for us to use. Although not specifically about Google APIs, we show
here how to process the downloaded content using Conduit.  Split the file into lines, split the CSVs into records and
return those records. Here is where your domain code goes.

\begin{code}
    rows <- liftResourceT (runConduit (stream .| Conduit.decodeUtf8 .| Conduit.linesUnbounded .| filterC (not . T.null) .| mapC parseLine .|  Conduit.sinkList))
\end{code}

Let's repeat what we did for downloading the CSV into inserting rows in a BigQuery Table. We check that in Gogol the
function that provides the resource `bigquery.tables.insert` is `BigQueryTabledataInsertAll`. By inspecting the types we
see that is called Request, so `send` function will drive the call. The `newXXX` smart constructors create default
values and if you need to modify one of the fields you make use of the `lens` library using generics. Don't forget to
bring the pragma `OverloadedLabels` and to import Data.Generics.Labels.

With all this it is just a matter of looking at the APIs and see how to map our CsvRows to BigQuery rows (the function
`csvRow2RowsItem`) and wrap everything in API objects.

\begin{code}
    let
        bqRows = fmap csvRow2RowsItem rows
        request = BigQuery.newTableDataInsertAllRequest & (#rows ?~ bqRows)
        cmd = BigQuery.newBigQueryTabledataInsertAll "gogol_test" request projectId "iris"
    void (send env cmd)
\end{code}


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


This is the suplemental code for reading CSV lines and creating in-memory records.

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








