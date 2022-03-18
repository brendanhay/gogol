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
-- Module      : Network.Google.CloudProfiler.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CloudProfiler.Types
  ( -- * Configuration
    cloudProfilerService,

    -- * OAuth Scopes
    cloudPlatformScope,
    monitoringScope,
    monitoringWriteScope,

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

import Network.Google.CloudProfiler.Internal.Product
import Network.Google.CloudProfiler.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2@ of the Stackdriver Profiler API. This contains the host and root path used as a starting point for constructing service requests.
cloudProfilerService :: Core.ServiceConfig
cloudProfilerService =
  Core.defaultService
    (Core.ServiceId "cloudprofiler:v2")
    "cloudprofiler.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and write monitoring data for all of your Google and third-party Cloud and API projects
monitoringScope :: Core.Proxy '["https://www.googleapis.com/auth/monitoring"]
monitoringScope = Core.Proxy

-- | Publish metric data to your Google Cloud projects
monitoringWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/monitoring.write"]
monitoringWriteScope = Core.Proxy
