module Kuy.Build.Info where

import Kuy.Prelude
import Development.Shake

class Monad m => MonadInfo m where
  getOptions :: m ShakeOptions
  getExtra :: Typeable a => m (Maybe a)

instance MonadInfo Action where
  getOptions = getShakeOptions
  getExtra = getShakeExtra

instance MonadInfo Rules where
  getOptions = getShakeOptionsRules
  getExtra = getShakeExtraRules

data BuildInfo = BuildInfo
  { buildRoot :: FilePath,
    tempRoot :: FilePath,
    outputRoot :: FilePath
  }
  deriving stock (Show)

defaultBuildInfo :: BuildInfo
defaultBuildInfo =
  BuildInfo
    { buildRoot = "_build",
      tempRoot = "_build/tmp",
      outputRoot = "_build/out"
    }

buildInfo :: MonadInfo m => m BuildInfo
buildInfo = fromMaybe defaultBuildInfo <$> getExtra
