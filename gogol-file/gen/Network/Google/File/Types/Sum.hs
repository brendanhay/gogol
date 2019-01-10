{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.File.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.File.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The service tier of the instance.
data InstanceTier
    = TierUnspecified
      -- ^ @TIER_UNSPECIFIED@
      -- Not set.
    | Standard
      -- ^ @STANDARD@
      -- STANDARD tier.
    | Premium
      -- ^ @PREMIUM@
      -- PREMIUM tier.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceTier

instance FromHttpApiData InstanceTier where
    parseQueryParam = \case
        "TIER_UNSPECIFIED" -> Right TierUnspecified
        "STANDARD" -> Right Standard
        "PREMIUM" -> Right Premium
        x -> Left ("Unable to parse InstanceTier from: " <> x)

instance ToHttpApiData InstanceTier where
    toQueryParam = \case
        TierUnspecified -> "TIER_UNSPECIFIED"
        Standard -> "STANDARD"
        Premium -> "PREMIUM"

instance FromJSON InstanceTier where
    parseJSON = parseJSONText "InstanceTier"

instance ToJSON InstanceTier where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Output only. The instance state.
data InstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State not set.
    | Creating
      -- ^ @CREATING@
      -- The instance is being created.
    | Ready
      -- ^ @READY@
      -- The instance is available for use.
    | Repairing
      -- ^ @REPAIRING@
      -- Work is being done on the instance. You can get further details from the
      -- \`statusMessage\` field of the \`Instance\` resource.
    | Deleting
      -- ^ @DELETING@
      -- The instance is shutting down.
    | Error'
      -- ^ @ERROR@
      -- The instance is experiencing an issue and might be unusable. You can get
      -- further details from the \`statusMessage\` field of the \`Instance\`
      -- resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "REPAIRING" -> Right Repairing
        "DELETING" -> Right Deleting
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        Repairing -> "REPAIRING"
        Deleting -> "DELETING"
        Error' -> "ERROR"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText
