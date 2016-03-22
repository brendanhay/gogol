{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTrace.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTrace.Types
    (
    -- * Service Configuration
      cloudTraceService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Empty
    , Empty
    , empty

    -- * TraceSpanLabels
    , TraceSpanLabels
    , traceSpanLabels
    , tslAddtional

    -- * Traces
    , Traces
    , traces
    , tTraces

    -- * TraceSpan
    , TraceSpan
    , traceSpan
    , tsStartTime
    , tsKind
    , tsName
    , tsEndTime
    , tsLabels
    , tsParentSpanId
    , tsSpanId

    -- * ListTracesResponse
    , ListTracesResponse
    , listTracesResponse
    , ltrNextPageToken
    , ltrTraces

    -- * Trace
    , Trace
    , trace
    , tTraceId
    , tSpans
    , tProjectId
    ) where

import           Network.Google.CloudTrace.Types.Product
import           Network.Google.CloudTrace.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Cloud Trace API. This contains the host and root path used as a starting point for constructing service requests.
cloudTraceService :: ServiceConfig
cloudTraceService
  = defaultService (ServiceId "cloudtrace:v1")
      "cloudtrace.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
