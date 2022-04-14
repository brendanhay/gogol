module Kuy.Command.Clean where

import Kuy.Discovery
import Kuy.Driver.Query
import Kuy.Driver.Task qualified as Task
import Kuy.Prelude
import Rock (fetch)
import UnliftIO.Directory qualified as Directory

type Target = (ServiceName, Maybe ServiceVersion)

clean :: Bool -> IO ()
clean full = do
  Task.execute_ $ do
    info <- fetch BuildInfo

    traverse_ removePath $
      [ info.manifest,
        info.artefact,
        info.temporary,
        info.output
      ]

    when full $
      removePath info.cache

removePath :: MonadIO m => FilePath -> m ()
removePath path =
  liftIO $ do
    seen <- Directory.doesPathExist path

    if seen
      then putStrLn ("Cleaning " ++ path) *> Directory.removePathForcibly path
      else putStrLn ("Skipping " ++ path)
