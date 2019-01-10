{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudProFiler
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages continuous profiling information.
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference>
module Network.Google.CloudProFiler
    (
    -- * Service Configuration
      cloudProfilerService

    -- * OAuth Scopes
    , cloudPlatformScope
    , monitoringScope
    , monitoringWriteScope

    -- * API Declaration
    , CloudProfilerAPI

    -- * Resources

    -- ** cloudprofiler.projects.profiles.create
    , module Network.Google.Resource.CloudProFiler.Projects.ProFiles.Create

    -- ** cloudprofiler.projects.profiles.createOffline
    , module Network.Google.Resource.CloudProFiler.Projects.ProFiles.CreateOffline

    -- ** cloudprofiler.projects.profiles.patch
    , module Network.Google.Resource.CloudProFiler.Projects.ProFiles.Patch

    -- * Types

    -- ** DeploymentLabels
    , DeploymentLabels
    , deploymentLabels
    , dlAddtional

    -- ** ProFileProFileType
    , ProFileProFileType (..)

    -- ** ProFile
    , ProFile
    , proFile
    , pfProFileBytes
    , pfName
    , pfLabels
    , pfProFileType
    , pfDuration
    , pfDeployment

    -- ** CreateProFileRequest
    , CreateProFileRequest
    , createProFileRequest
    , cpfrProFileType
    , cpfrDeployment

    -- ** ProFileLabels
    , ProFileLabels
    , proFileLabels
    , pflAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** Deployment
    , Deployment
    , deployment
    , dLabels
    , dProjectId
    , dTarget
    ) where

import           Network.Google.CloudProFiler.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudProFiler.Projects.ProFiles.Create
import           Network.Google.Resource.CloudProFiler.Projects.ProFiles.CreateOffline
import           Network.Google.Resource.CloudProFiler.Projects.ProFiles.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Stackdriver Profiler API service.
type CloudProfilerAPI =
     ProjectsProFilesPatchResource :<|>
       ProjectsProFilesCreateResource
       :<|> ProjectsProFilesCreateOfflineResource
