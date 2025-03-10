{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudProfiler
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages continuous profiling information.
--
-- /See:/ <https://cloud.google.com/profiler/ Cloud Profiler API Reference>
module Gogol.CloudProfiler
  ( -- * Configuration
    cloudProfilerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Monitoring'FullControl,
    Monitoring'Write,

    -- * Resources

    -- ** cloudprofiler.projects.profiles.create
    CloudProfilerProjectsProfilesCreateResource,
    CloudProfilerProjectsProfilesCreate (..),
    newCloudProfilerProjectsProfilesCreate,

    -- ** cloudprofiler.projects.profiles.createOffline
    CloudProfilerProjectsProfilesCreateOfflineResource,
    CloudProfilerProjectsProfilesCreateOffline (..),
    newCloudProfilerProjectsProfilesCreateOffline,

    -- ** cloudprofiler.projects.profiles.list
    CloudProfilerProjectsProfilesListResource,
    CloudProfilerProjectsProfilesList (..),
    newCloudProfilerProjectsProfilesList,

    -- ** cloudprofiler.projects.profiles.patch
    CloudProfilerProjectsProfilesPatchResource,
    CloudProfilerProjectsProfilesPatch (..),
    newCloudProfilerProjectsProfilesPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CreateProfileRequest
    CreateProfileRequest (..),
    newCreateProfileRequest,

    -- ** CreateProfileRequest_ProfileTypeItem
    CreateProfileRequest_ProfileTypeItem (..),

    -- ** Deployment
    Deployment (..),
    newDeployment,

    -- ** Deployment_Labels
    Deployment_Labels (..),
    newDeployment_Labels,

    -- ** ListProfilesResponse
    ListProfilesResponse (..),
    newListProfilesResponse,

    -- ** Profile
    Profile (..),
    newProfile,

    -- ** Profile_Labels
    Profile_Labels (..),
    newProfile_Labels,

    -- ** Profile_ProfileType
    Profile_ProfileType (..),
  )
where

import Gogol.CloudProfiler.Projects.Profiles.Create
import Gogol.CloudProfiler.Projects.Profiles.CreateOffline
import Gogol.CloudProfiler.Projects.Profiles.List
import Gogol.CloudProfiler.Projects.Profiles.Patch
import Gogol.CloudProfiler.Types
