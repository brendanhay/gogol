{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudProFiler.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudProFiler.Types
    (
    -- * Service Configuration
      cloudProfilerService

    -- * OAuth Scopes
    , cloudPlatformScope
    , monitoringScope
    , monitoringWriteScope

    -- * DeploymentLabels
    , DeploymentLabels
    , deploymentLabels
    , dlAddtional

    -- * ProFileProFileType
    , ProFileProFileType (..)

    -- * ProFile
    , ProFile
    , proFile
    , pfProFileBytes
    , pfName
    , pfLabels
    , pfProFileType
    , pfDuration
    , pfDeployment

    -- * CreateProFileRequest
    , CreateProFileRequest
    , createProFileRequest
    , cpfrProFileType
    , cpfrDeployment

    -- * ProFileLabels
    , ProFileLabels
    , proFileLabels
    , pflAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * CreateProFileRequestProFileTypeItem
    , CreateProFileRequestProFileTypeItem (..)

    -- * Deployment
    , Deployment
    , deployment
    , dLabels
    , dProjectId
    , dTarget
    ) where

import Network.Google.CloudProFiler.Types.Product
import Network.Google.CloudProFiler.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the Stackdriver Profiler API. This contains the host and root path used as a starting point for constructing service requests.
cloudProfilerService :: ServiceConfig
cloudProfilerService
  = defaultService (ServiceId "cloudprofiler:v2")
      "cloudprofiler.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and write monitoring data for all of your Google and third-party
-- Cloud and API projects
monitoringScope :: Proxy '["https://www.googleapis.com/auth/monitoring"]
monitoringScope = Proxy

-- | Publish metric data to your Google Cloud projects
monitoringWriteScope :: Proxy '["https://www.googleapis.com/auth/monitoring.write"]
monitoringWriteScope = Proxy
