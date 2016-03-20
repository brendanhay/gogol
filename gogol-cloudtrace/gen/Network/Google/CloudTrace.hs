{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudTrace
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Cloud Trace API allows you to send traces to and retrieve traces
-- from Google Cloud Trace.
--
-- /See:/ <https://cloud.google.com/tools/cloud-trace Google Cloud Trace API Reference>
module Network.Google.CloudTrace
    (
    -- * Service Configuration
      cloudTraceService

    -- * OAuth Scopes
    , authCloudPlatformScope

    -- * API Declaration
    , CloudTraceAPI

    -- * Resources

    -- ** cloudtrace.projects.patchTraces
    , module Network.Google.Resource.CloudTrace.Projects.PatchTraces

    -- ** cloudtrace.projects.traces.get
    , module Network.Google.Resource.CloudTrace.Projects.Traces.Get

    -- ** cloudtrace.projects.traces.list
    , module Network.Google.Resource.CloudTrace.Projects.Traces.List

    -- * Types

    -- ** Empty
    , Empty
    , empty

    -- ** TraceSpanLabels
    , TraceSpanLabels
    , traceSpanLabels
    , tslAddtional

    -- ** Traces
    , Traces
    , traces
    , tTraces

    -- ** TraceSpan
    , TraceSpan
    , traceSpan
    , tsStartTime
    , tsKind
    , tsName
    , tsEndTime
    , tsLabels
    , tsParentSpanId
    , tsSpanId

    -- ** ListTracesResponse
    , ListTracesResponse
    , listTracesResponse
    , ltrNextPageToken
    , ltrTraces

    -- ** Trace
    , Trace
    , trace
    , tTraceId
    , tSpans
    , tProjectId
    ) where

import           Network.Google.CloudTrace.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudTrace.Projects.PatchTraces
import           Network.Google.Resource.CloudTrace.Projects.Traces.Get
import           Network.Google.Resource.CloudTrace.Projects.Traces.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Trace API service.
type CloudTraceAPI =
     ProjectsTracesListResource :<|>
       ProjectsTracesGetResource
       :<|> ProjectsPatchTracesResource
