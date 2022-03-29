module Kuy.Discovery.Label where

import Kuy.Prelude
import Data.Aeson qualified as Aeson

-- | Labels for the status of an API.
--
-- Valid values include limited_availability or deprecated.
data Label
  = Labs
  | LimitedAvailability
  | Deprecated
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Label where
  parseJSON =
    Aeson.withText "Label" $ \case
      "labs" -> pure Labs
      "limited_availability" -> pure LimitedAvailability
      "deprecated" -> pure Deprecated
      unknown -> fail $ "(FromJSON Label) invalid label " ++ show unknown
