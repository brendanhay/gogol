{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.WebSecurityScanner
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Scans your Compute and App Engine apps for common web vulnerabilities.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference>
module Gogol.WebSecurityScanner
  ( -- * Configuration
    webSecurityScannerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** websecurityscanner.projects.scanConfigs.create
    WebSecurityScannerProjectsScanConfigsCreateResource,
    WebSecurityScannerProjectsScanConfigsCreate (..),
    newWebSecurityScannerProjectsScanConfigsCreate,

    -- ** websecurityscanner.projects.scanConfigs.delete
    WebSecurityScannerProjectsScanConfigsDeleteResource,
    WebSecurityScannerProjectsScanConfigsDelete (..),
    newWebSecurityScannerProjectsScanConfigsDelete,

    -- ** websecurityscanner.projects.scanConfigs.get
    WebSecurityScannerProjectsScanConfigsGetResource,
    WebSecurityScannerProjectsScanConfigsGet (..),
    newWebSecurityScannerProjectsScanConfigsGet,

    -- ** websecurityscanner.projects.scanConfigs.list
    WebSecurityScannerProjectsScanConfigsListResource,
    WebSecurityScannerProjectsScanConfigsList (..),
    newWebSecurityScannerProjectsScanConfigsList,

    -- ** websecurityscanner.projects.scanConfigs.patch
    WebSecurityScannerProjectsScanConfigsPatchResource,
    WebSecurityScannerProjectsScanConfigsPatch (..),
    newWebSecurityScannerProjectsScanConfigsPatch,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list
    WebSecurityScannerProjectsScanConfigsScanRunsCrawledUrlsListResource,
    WebSecurityScannerProjectsScanConfigsScanRunsCrawledUrlsList (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsCrawledUrlsList,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsListResource,
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.findings.get
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsGetResource,
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsFindingsGet,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.findings.list
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsListResource,
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsList (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsFindingsList,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.get
    WebSecurityScannerProjectsScanConfigsScanRunsGetResource,
    WebSecurityScannerProjectsScanConfigsScanRunsGet (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsGet,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.list
    WebSecurityScannerProjectsScanConfigsScanRunsListResource,
    WebSecurityScannerProjectsScanConfigsScanRunsList (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsList,

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.stop
    WebSecurityScannerProjectsScanConfigsScanRunsStopResource,
    WebSecurityScannerProjectsScanConfigsScanRunsStop (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsStop,

    -- ** websecurityscanner.projects.scanConfigs.start
    WebSecurityScannerProjectsScanConfigsStartResource,
    WebSecurityScannerProjectsScanConfigsStart (..),
    newWebSecurityScannerProjectsScanConfigsStart,

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

    -- ** ScanConfig_TargetPlatformsItem
    ScanConfig_TargetPlatformsItem (..),

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

import Gogol.WebSecurityScanner.Projects.ScanConfigs.Create
import Gogol.WebSecurityScanner.Projects.ScanConfigs.Delete
import Gogol.WebSecurityScanner.Projects.ScanConfigs.Get
import Gogol.WebSecurityScanner.Projects.ScanConfigs.List
import Gogol.WebSecurityScanner.Projects.ScanConfigs.Patch
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.CrawledUrls.List
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List
import Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop
import Gogol.WebSecurityScanner.Projects.ScanConfigs.Start
import Gogol.WebSecurityScanner.Types
