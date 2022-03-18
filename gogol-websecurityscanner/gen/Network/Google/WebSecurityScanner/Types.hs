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
-- Module      : Network.Google.WebSecurityScanner.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.WebSecurityScanner.Types
  ( -- * Configuration
    webSecurityScannerService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Authentication
    Authentication (..),
    newAuthentication,

    -- ** CrawledUrl
    CrawledUrl (..),
    newCrawledUrl,

    -- ** CustomAccount
    CustomAccount (..),
    newCustomAccount,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Finding
    Finding (..),
    newFinding,

    -- ** Finding_Severity
    Finding_Severity (..),

    -- ** FindingTypeStats
    FindingTypeStats (..),
    newFindingTypeStats,

    -- ** Form
    Form (..),
    newForm,

    -- ** GoogleAccount
    GoogleAccount (..),
    newGoogleAccount,

    -- ** Header
    Header (..),
    newHeader,

    -- ** IapCredential
    IapCredential (..),
    newIapCredential,

    -- ** IapTestServiceAccountInfo
    IapTestServiceAccountInfo (..),
    newIapTestServiceAccountInfo,

    -- ** ListCrawledUrlsResponse
    ListCrawledUrlsResponse (..),
    newListCrawledUrlsResponse,

    -- ** ListFindingTypeStatsResponse
    ListFindingTypeStatsResponse (..),
    newListFindingTypeStatsResponse,

    -- ** ListFindingsResponse
    ListFindingsResponse (..),
    newListFindingsResponse,

    -- ** ListScanConfigsResponse
    ListScanConfigsResponse (..),
    newListScanConfigsResponse,

    -- ** ListScanRunsResponse
    ListScanRunsResponse (..),
    newListScanRunsResponse,

    -- ** OutdatedLibrary
    OutdatedLibrary (..),
    newOutdatedLibrary,

    -- ** ScanConfig
    ScanConfig (..),
    newScanConfig,

    -- ** ScanConfig_ExportToSecurityCommandCenter
    ScanConfig_ExportToSecurityCommandCenter (..),

    -- ** ScanConfig_RiskLevel
    ScanConfig_RiskLevel (..),

    -- ** ScanConfig_UserAgent
    ScanConfig_UserAgent (..),

    -- ** ScanConfigError
    ScanConfigError (..),
    newScanConfigError,

    -- ** ScanConfigError_Code
    ScanConfigError_Code (..),

    -- ** ScanRun
    ScanRun (..),
    newScanRun,

    -- ** ScanRun_ExecutionState
    ScanRun_ExecutionState (..),

    -- ** ScanRun_ResultState
    ScanRun_ResultState (..),

    -- ** ScanRunErrorTrace
    ScanRunErrorTrace (..),
    newScanRunErrorTrace,

    -- ** ScanRunErrorTrace_Code
    ScanRunErrorTrace_Code (..),

    -- ** ScanRunWarningTrace
    ScanRunWarningTrace (..),
    newScanRunWarningTrace,

    -- ** ScanRunWarningTrace_Code
    ScanRunWarningTrace_Code (..),

    -- ** Schedule
    Schedule (..),
    newSchedule,

    -- ** StartScanRunRequest
    StartScanRunRequest (..),
    newStartScanRunRequest,

    -- ** StopScanRunRequest
    StopScanRunRequest (..),
    newStopScanRunRequest,

    -- ** ViolatingResource
    ViolatingResource (..),
    newViolatingResource,

    -- ** VulnerableHeaders
    VulnerableHeaders (..),
    newVulnerableHeaders,

    -- ** VulnerableParameters
    VulnerableParameters (..),
    newVulnerableParameters,

    -- ** Xss
    Xss (..),
    newXss,

    -- ** Xss_AttackVector
    Xss_AttackVector (..),

    -- ** Xxe
    Xxe (..),
    newXxe,

    -- ** Xxe_PayloadLocation
    Xxe_PayloadLocation (..),
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.WebSecurityScanner.Internal.Product
import Network.Google.WebSecurityScanner.Internal.Sum

-- | Default request referring to version @v1@ of the Web Security Scanner API. This contains the host and root path used as a starting point for constructing service requests.
webSecurityScannerService :: Core.ServiceConfig
webSecurityScannerService =
  Core.defaultService
    (Core.ServiceId "websecurityscanner:v1")
    "websecurityscanner.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
