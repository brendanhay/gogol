module Kuy.Command where

import Control.Concurrent
import Data.Time qualified as Time
import Data.List qualified as List
import UnliftIO.Async qualified as Async
import Data.Set qualified as Set
import Kuy.Prelude
import Kuy.Discovery 
import Kuy.Driver qualified as Driver (execute)
import Kuy.Driver.Query
import Rock  (Task, fetch)
import UnliftIO.Directory qualified as Directory
import Network.HTTP.Client qualified as Client
import Network.HTTP.Client.TLS qualified as TLS

data Target = Target
  { name :: ServiceName,
    version :: Maybe ServiceVersion
  }
  deriving stock (Show, Eq, Ord)

parseTarget :: String -> Target
parseTarget = uncurry Target . parse
  where
      parse = bimap fromString clean . List.break (== ':')
      clean = \case
          "" -> Nothing
          vs -> Just (fromString (List.drop 1 vs))

newTarget :: ServiceId -> Target
newTarget ServiceId{..} = Target{name, version = Just version}

build :: Set Target -> IO ()
build (Set.toList -> targets) = do
  threads <- getNumCapabilities

  let run target =  do
        !_desc <- fetch (DiscoveryDescription target.name target.version)
        pure ()

  execute $
   case targets of
    -- Build all service's preverred versions found in the index.
    [] -> do
      index <- fetch DiscoveryIndex

      Async.pooledMapConcurrentlyN_ threads run $
        map newTarget (preferredVersions index)
   -- Avoid pooling overhead if we have exactly one target.
    [x] ->
      run x
   -- Build all supplied targets concurrently.
    xs ->
      Async.pooledMapConcurrentlyN_ threads run xs

clean :: Bool -> IO ()
clean full =
 withTimeSummary $
  Directory.removePathForcibly "_kuy"

query :: IO ()
query =
  execute $ do
    index <- fetch DiscoveryIndex

    liftIO (print index)

execute :: Task Query a -> IO a
execute task = do
  manager <- Client.newManager TLS.tlsManagerSettings

  withTimeSummary $
    Driver.execute manager "_kuy" task

withTimeSummary :: IO a -> IO a
withTimeSummary action = do
  startTime <- Time.getCurrentTime
  result <- action
  endTime <- Time.getCurrentTime

  putStrLn . mconcat $
    [ "Completed in "
    , show (Time.diffUTCTime endTime startTime)
    , "."
    ]

  pure result
