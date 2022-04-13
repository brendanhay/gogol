module Kuy.Command.Clean where

import Kuy.Discovery
import Kuy.Driver qualified as Driver
import Kuy.Driver.Query
import Kuy.Prelude
import Rock (fetch)
import UnliftIO.Directory qualified as Directory

type Target = (ServiceName, Maybe ServiceVersion)

clean :: Bool -> IO ()
clean full = do
  Driver.execute $ do
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
      then putStrLn ("Cleaning path " ++ path) *> Directory.removePathForcibly path
      else putStrLn ("Skipping non-existent path " ++ path)
