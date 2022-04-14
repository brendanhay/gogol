module Kuy.Driver.Trace where

import Data.Dependent.HashMap (DHashMap)
import Data.Dependent.HashMap qualified as DHashMap
import Data.Time.Clock.POSIX qualified as Time
import Kuy.Driver.Query
import Kuy.Prelude
import Rock (TaskKind, Writer (..))
import UnliftIO.MVar qualified as MVar

type Traces = DHashMap Query (Const NominalDiffTime)

-- Ideas:
--   Only show timed queries in traceFinish,
--   and only show non-timed queries in traceStart

traceStart :: MonadIO m => Bool -> MVar Traces -> Writer TaskKind Query a -> m ()
traceStart verbose timingsVar (Writer query) =
  liftIO . MVar.modifyMVar_ timingsVar $ \m ->
    if not (isTimedQuery query)
      then m <$ for_ (renderQuery verbose query) putStrLn
      else do
        start <- Time.getPOSIXTime
        pure (DHashMap.insert query (Const start) m)

traceFinish :: MonadIO m => Bool -> MVar Traces -> Writer TaskKind Query a -> a -> m ()
traceFinish verbose timingsVar (Writer query) _value =
  liftIO . MVar.withMVar timingsVar $ \m ->
    void . runMaybeT $ do
      guard (isTimedQuery query)

      Const start <- liftMaybe (DHashMap.lookup query m)
      message <- liftMaybe (renderQuery verbose query)
      finish <- lift Time.getPOSIXTime

      lift . putStrLn . unwords $
        [ message,
          "completed in",
          show (finish - start) <> "s"
        ]

isTimedQuery :: Query a -> Bool
isTimedQuery = \case
  RemoteArtefact {} -> True
  _other -> False

renderQuery :: Bool -> Query a -> Maybe String
renderQuery verbose = \case
  CompiledUnit {} -> Nothing
  other -> Just ("Fetch " ++ show other)
