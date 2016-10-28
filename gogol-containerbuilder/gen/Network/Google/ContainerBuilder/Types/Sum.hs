{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerBuilder.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerBuilder.Types.Sum where

import           Network.Google.Prelude

-- | Requested verifiability options.
data BuildOptionsRequestedVerifyOption
    = NotVerified
      -- ^ @NOT_VERIFIED@
      -- Not a verifiable build. (default)
    | Verified
      -- ^ @VERIFIED@
      -- Verified build.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsRequestedVerifyOption

instance FromHttpApiData BuildOptionsRequestedVerifyOption where
    parseQueryParam = \case
        "NOT_VERIFIED" -> Right NotVerified
        "VERIFIED" -> Right Verified
        x -> Left ("Unable to parse BuildOptionsRequestedVerifyOption from: " <> x)

instance ToHttpApiData BuildOptionsRequestedVerifyOption where
    toQueryParam = \case
        NotVerified -> "NOT_VERIFIED"
        Verified -> "VERIFIED"

instance FromJSON BuildOptionsRequestedVerifyOption where
    parseJSON = parseJSONText "BuildOptionsRequestedVerifyOption"

instance ToJSON BuildOptionsRequestedVerifyOption where
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

-- | Status of the build. \'OutputOnly
data BuildStatus
    = StatusUnknown
      -- ^ @STATUS_UNKNOWN@
      -- Status of the build is unknown.
    | Queuing
      -- ^ @QUEUING@
      -- Build has been received and is being queued.
    | Queued
      -- ^ @QUEUED@
      -- Build is queued; work has not yet begun.
    | Working
      -- ^ @WORKING@
      -- Build is being executed.
    | Success
      -- ^ @SUCCESS@
      -- Build finished successfully.
    | Failure
      -- ^ @FAILURE@
      -- Build failed to complete successfully.
    | InternalError
      -- ^ @INTERNAL_ERROR@
      -- Build failed due to an internal cause.
    | Timeout
      -- ^ @TIMEOUT@
      -- Build took longer than was allowed.
    | Cancelled
      -- ^ @CANCELLED@
      -- Build was canceled by a user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildStatus

instance FromHttpApiData BuildStatus where
    parseQueryParam = \case
        "STATUS_UNKNOWN" -> Right StatusUnknown
        "QUEUING" -> Right Queuing
        "QUEUED" -> Right Queued
        "WORKING" -> Right Working
        "SUCCESS" -> Right Success
        "FAILURE" -> Right Failure
        "INTERNAL_ERROR" -> Right InternalError
        "TIMEOUT" -> Right Timeout
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse BuildStatus from: " <> x)

instance ToHttpApiData BuildStatus where
    toQueryParam = \case
        StatusUnknown -> "STATUS_UNKNOWN"
        Queuing -> "QUEUING"
        Queued -> "QUEUED"
        Working -> "WORKING"
        Success -> "SUCCESS"
        Failure -> "FAILURE"
        InternalError -> "INTERNAL_ERROR"
        Timeout -> "TIMEOUT"
        Cancelled -> "CANCELLED"

instance FromJSON BuildStatus where
    parseJSON = parseJSONText "BuildStatus"

instance ToJSON BuildStatus where
    toJSON = toJSONText

-- | The type of hash that was performed.
data HashType
    = None
      -- ^ @NONE@
      -- No hash requested.
    | SHA256
      -- ^ @SHA256@
      -- Use a sha256 hash.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HashType

instance FromHttpApiData HashType where
    parseQueryParam = \case
        "NONE" -> Right None
        "SHA256" -> Right SHA256
        x -> Left ("Unable to parse HashType from: " <> x)

instance ToHttpApiData HashType where
    toQueryParam = \case
        None -> "NONE"
        SHA256 -> "SHA256"

instance FromJSON HashType where
    parseJSON = parseJSONText "HashType"

instance ToJSON HashType where
    toJSON = toJSONText
