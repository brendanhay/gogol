{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.CloudProfiler
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages continuous profiling information.
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference>
module Network.Google.CloudProfiler
  ( -- * Configuration
    cloudProfilerService,

    -- * OAuth Scopes
    cloudPlatformScope,
    monitoringScope,
    monitoringWriteScope,

    -- * Resources

    -- ** cloudprofiler.projects.profiles.create
    CloudProfilerProjectsProfilesCreateResource,
    newCloudProfilerProjectsProfilesCreate,
    CloudProfilerProjectsProfilesCreate,

    -- ** cloudprofiler.projects.profiles.createOffline
    CloudProfilerProjectsProfilesCreateOfflineResource,
    newCloudProfilerProjectsProfilesCreateOffline,
    CloudProfilerProjectsProfilesCreateOffline,

    -- ** cloudprofiler.projects.profiles.patch
    CloudProfilerProjectsProfilesPatchResource,
    newCloudProfilerProjectsProfilesPatch,
    CloudProfilerProjectsProfilesPatch,

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

import Network.Google.CloudProfiler.Projects.Profiles.Create
import Network.Google.CloudProfiler.Projects.Profiles.CreateOffline
import Network.Google.CloudProfiler.Projects.Profiles.Patch
import Network.Google.CloudProfiler.Types
