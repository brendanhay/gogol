{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSense.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AdSense.Types
    (
    -- * Configuration
      adSenseService

    -- * OAuth Scopes
    , Adsense'FullControl
    , Adsense'Readonly

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Account
    , Account (..)
    , newAccount

    -- ** Account_State
    , Account_State (..)

    -- ** AdBlockingRecoveryTag
    , AdBlockingRecoveryTag (..)
    , newAdBlockingRecoveryTag

    -- ** AdClient
    , AdClient (..)
    , newAdClient

    -- ** AdClient_State
    , AdClient_State (..)

    -- ** AdClientAdCode
    , AdClientAdCode (..)
    , newAdClientAdCode

    -- ** AdUnit
    , AdUnit (..)
    , newAdUnit

    -- ** AdUnit_State
    , AdUnit_State (..)

    -- ** AdUnitAdCode
    , AdUnitAdCode (..)
    , newAdUnitAdCode

    -- ** Alert
    , Alert (..)
    , newAlert

    -- ** Alert_Severity
    , Alert_Severity (..)

    -- ** Cell
    , Cell (..)
    , newCell

    -- ** ContentAdsSettings
    , ContentAdsSettings (..)
    , newContentAdsSettings

    -- ** ContentAdsSettings_Type
    , ContentAdsSettings_Type (..)

    -- ** CustomChannel
    , CustomChannel (..)
    , newCustomChannel

    -- ** Date
    , Date (..)
    , newDate

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Header
    , Header (..)
    , newHeader

    -- ** Header_Type
    , Header_Type (..)

    -- ** HttpBody
    , HttpBody (..)
    , newHttpBody

    -- ** HttpBody_ExtensionsItem
    , HttpBody_ExtensionsItem (..)
    , newHttpBody_ExtensionsItem

    -- ** ListAccountsResponse
    , ListAccountsResponse (..)
    , newListAccountsResponse

    -- ** ListAdClientsResponse
    , ListAdClientsResponse (..)
    , newListAdClientsResponse

    -- ** ListAdUnitsResponse
    , ListAdUnitsResponse (..)
    , newListAdUnitsResponse

    -- ** ListAlertsResponse
    , ListAlertsResponse (..)
    , newListAlertsResponse

    -- ** ListChildAccountsResponse
    , ListChildAccountsResponse (..)
    , newListChildAccountsResponse

    -- ** ListCustomChannelsResponse
    , ListCustomChannelsResponse (..)
    , newListCustomChannelsResponse

    -- ** ListLinkedAdUnitsResponse
    , ListLinkedAdUnitsResponse (..)
    , newListLinkedAdUnitsResponse

    -- ** ListLinkedCustomChannelsResponse
    , ListLinkedCustomChannelsResponse (..)
    , newListLinkedCustomChannelsResponse

    -- ** ListPaymentsResponse
    , ListPaymentsResponse (..)
    , newListPaymentsResponse

    -- ** ListPolicyIssuesResponse
    , ListPolicyIssuesResponse (..)
    , newListPolicyIssuesResponse

    -- ** ListSavedReportsResponse
    , ListSavedReportsResponse (..)
    , newListSavedReportsResponse

    -- ** ListSitesResponse
    , ListSitesResponse (..)
    , newListSitesResponse

    -- ** ListUrlChannelsResponse
    , ListUrlChannelsResponse (..)
    , newListUrlChannelsResponse

    -- ** Payment
    , Payment (..)
    , newPayment

    -- ** PolicyIssue
    , PolicyIssue (..)
    , newPolicyIssue

    -- ** PolicyIssue_Action
    , PolicyIssue_Action (..)

    -- ** PolicyIssue_EntityType
    , PolicyIssue_EntityType (..)

    -- ** PolicyTopic
    , PolicyTopic (..)
    , newPolicyTopic

    -- ** ReportResult
    , ReportResult (..)
    , newReportResult

    -- ** Row
    , Row (..)
    , newRow

    -- ** SavedReport
    , SavedReport (..)
    , newSavedReport

    -- ** Site
    , Site (..)
    , newSite

    -- ** Site_State
    , Site_State (..)

    -- ** TimeZone
    , TimeZone (..)
    , newTimeZone

    -- ** UrlChannel
    , UrlChannel (..)
    , newUrlChannel

    -- ** AccountsReportsGenerateDateRange
    , AccountsReportsGenerateDateRange (..)

    -- ** AccountsReportsGenerateDimensions
    , AccountsReportsGenerateDimensions (..)

    -- ** AccountsReportsGenerateMetrics
    , AccountsReportsGenerateMetrics (..)

    -- ** AccountsReportsGenerateReportingTimeZone
    , AccountsReportsGenerateReportingTimeZone (..)

    -- ** AccountsReportsGenerateCsvDateRange
    , AccountsReportsGenerateCsvDateRange (..)

    -- ** AccountsReportsGenerateCsvDimensions
    , AccountsReportsGenerateCsvDimensions (..)

    -- ** AccountsReportsGenerateCsvMetrics
    , AccountsReportsGenerateCsvMetrics (..)

    -- ** AccountsReportsGenerateCsvReportingTimeZone
    , AccountsReportsGenerateCsvReportingTimeZone (..)

    -- ** AccountsReportsSavedGenerateDateRange
    , AccountsReportsSavedGenerateDateRange (..)

    -- ** AccountsReportsSavedGenerateReportingTimeZone
    , AccountsReportsSavedGenerateReportingTimeZone (..)

    -- ** AccountsReportsSavedGenerateCsvDateRange
    , AccountsReportsSavedGenerateCsvDateRange (..)

    -- ** AccountsReportsSavedGenerateCsvReportingTimeZone
    , AccountsReportsSavedGenerateCsvReportingTimeZone (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSense.Internal.Product
import Gogol.AdSense.Internal.Sum

-- | Default request referring to version @v2@ of the AdSense Management API. This contains the host and root path used as a starting point for constructing service requests.
adSenseService :: Core.ServiceConfig
adSenseService
  = Core.defaultService (Core.ServiceId "adsense:v2")
      "adsense.googleapis.com"

-- | View and manage your AdSense data
type Adsense'FullControl = "https://www.googleapis.com/auth/adsense"

-- | View your AdSense data
type Adsense'Readonly = "https://www.googleapis.com/auth/adsense.readonly"
