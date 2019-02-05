{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudScheduler.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudScheduler.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Output only. State of the job.
data JobState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified state.
    | Enabled
      -- ^ @ENABLED@
      -- The job is executing normally.
    | Paused
      -- ^ @PAUSED@
      -- The job is paused by the user. It will not execute. A user can
      -- intentionally pause the job using PauseJobRequest.
    | Disabled
      -- ^ @DISABLED@
      -- The job is disabled by the system due to error. The user cannot directly
      -- set a job to be disabled.
    | UpdateFailed
      -- ^ @UPDATE_FAILED@
      -- The job state resulting from a failed CloudScheduler.UpdateJob
      -- operation. To recover a job from this state, retry
      -- CloudScheduler.UpdateJob until a successful response is received.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobState

instance FromHttpApiData JobState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "ENABLED" -> Right Enabled
        "PAUSED" -> Right Paused
        "DISABLED" -> Right Disabled
        "UPDATE_FAILED" -> Right UpdateFailed
        x -> Left ("Unable to parse JobState from: " <> x)

instance ToHttpApiData JobState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Enabled -> "ENABLED"
        Paused -> "PAUSED"
        Disabled -> "DISABLED"
        UpdateFailed -> "UPDATE_FAILED"

instance FromJSON JobState where
    parseJSON = parseJSONText "JobState"

instance ToJSON JobState where
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

-- | Which HTTP method to use for the request.
data HTTPTargetHTTPMethod
    = HTTPMethodUnspecified
      -- ^ @HTTP_METHOD_UNSPECIFIED@
      -- HTTP method unspecified. Defaults to POST.
    | Post'
      -- ^ @POST@
      -- HTTP POST
    | Get'
      -- ^ @GET@
      -- HTTP GET
    | Head'
      -- ^ @HEAD@
      -- HTTP HEAD
    | Put'
      -- ^ @PUT@
      -- HTTP PUT
    | Delete'
      -- ^ @DELETE@
      -- HTTP DELETE
    | Patch'
      -- ^ @PATCH@
      -- HTTP PATCH
    | Options
      -- ^ @OPTIONS@
      -- HTTP OPTIONS
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPTargetHTTPMethod

instance FromHttpApiData HTTPTargetHTTPMethod where
    parseQueryParam = \case
        "HTTP_METHOD_UNSPECIFIED" -> Right HTTPMethodUnspecified
        "POST" -> Right Post'
        "GET" -> Right Get'
        "HEAD" -> Right Head'
        "PUT" -> Right Put'
        "DELETE" -> Right Delete'
        "PATCH" -> Right Patch'
        "OPTIONS" -> Right Options
        x -> Left ("Unable to parse HTTPTargetHTTPMethod from: " <> x)

instance ToHttpApiData HTTPTargetHTTPMethod where
    toQueryParam = \case
        HTTPMethodUnspecified -> "HTTP_METHOD_UNSPECIFIED"
        Post' -> "POST"
        Get' -> "GET"
        Head' -> "HEAD"
        Put' -> "PUT"
        Delete' -> "DELETE"
        Patch' -> "PATCH"
        Options -> "OPTIONS"

instance FromJSON HTTPTargetHTTPMethod where
    parseJSON = parseJSONText "HTTPTargetHTTPMethod"

instance ToJSON HTTPTargetHTTPMethod where
    toJSON = toJSONText

-- | The HTTP method to use for the request. PATCH and OPTIONS are not
-- permitted.
data AppEngineHTTPTargetHTTPMethod
    = AEHTTPTHTTPMHTTPMethodUnspecified
      -- ^ @HTTP_METHOD_UNSPECIFIED@
      -- HTTP method unspecified. Defaults to POST.
    | AEHTTPTHTTPMPost'
      -- ^ @POST@
      -- HTTP POST
    | AEHTTPTHTTPMGet'
      -- ^ @GET@
      -- HTTP GET
    | AEHTTPTHTTPMHead'
      -- ^ @HEAD@
      -- HTTP HEAD
    | AEHTTPTHTTPMPut'
      -- ^ @PUT@
      -- HTTP PUT
    | AEHTTPTHTTPMDelete'
      -- ^ @DELETE@
      -- HTTP DELETE
    | AEHTTPTHTTPMPatch'
      -- ^ @PATCH@
      -- HTTP PATCH
    | AEHTTPTHTTPMOptions
      -- ^ @OPTIONS@
      -- HTTP OPTIONS
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppEngineHTTPTargetHTTPMethod

instance FromHttpApiData AppEngineHTTPTargetHTTPMethod where
    parseQueryParam = \case
        "HTTP_METHOD_UNSPECIFIED" -> Right AEHTTPTHTTPMHTTPMethodUnspecified
        "POST" -> Right AEHTTPTHTTPMPost'
        "GET" -> Right AEHTTPTHTTPMGet'
        "HEAD" -> Right AEHTTPTHTTPMHead'
        "PUT" -> Right AEHTTPTHTTPMPut'
        "DELETE" -> Right AEHTTPTHTTPMDelete'
        "PATCH" -> Right AEHTTPTHTTPMPatch'
        "OPTIONS" -> Right AEHTTPTHTTPMOptions
        x -> Left ("Unable to parse AppEngineHTTPTargetHTTPMethod from: " <> x)

instance ToHttpApiData AppEngineHTTPTargetHTTPMethod where
    toQueryParam = \case
        AEHTTPTHTTPMHTTPMethodUnspecified -> "HTTP_METHOD_UNSPECIFIED"
        AEHTTPTHTTPMPost' -> "POST"
        AEHTTPTHTTPMGet' -> "GET"
        AEHTTPTHTTPMHead' -> "HEAD"
        AEHTTPTHTTPMPut' -> "PUT"
        AEHTTPTHTTPMDelete' -> "DELETE"
        AEHTTPTHTTPMPatch' -> "PATCH"
        AEHTTPTHTTPMOptions -> "OPTIONS"

instance FromJSON AppEngineHTTPTargetHTTPMethod where
    parseJSON = parseJSONText "AppEngineHTTPTargetHTTPMethod"

instance ToJSON AppEngineHTTPTargetHTTPMethod where
    toJSON = toJSONText
