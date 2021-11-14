{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSense.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Types
    (
    -- * Service Configuration
      adSenseService

    -- * OAuth Scopes
    , adSenseReadOnlyScope
    , adSenseScope

    -- * SiteState
    , SiteState (..)

    -- * ListAlertsResponse
    , ListAlertsResponse
    , listAlertsResponse
    , larAlerts

    -- * AdClientAdCode
    , AdClientAdCode
    , adClientAdCode
    , acacAmpHead
    , acacAmpBody
    , acacAdCode

    -- * AccountsReportsSavedGenerateReportingTimeZone
    , AccountsReportsSavedGenerateReportingTimeZone (..)

    -- * AccountsReportsSavedGenerateCSVDateRange
    , AccountsReportsSavedGenerateCSVDateRange (..)

    -- * HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- * AccountsReportsGenerateCSVReportingTimeZone
    , AccountsReportsGenerateCSVReportingTimeZone (..)

    -- * AccountsReportsGenerateDimensions
    , AccountsReportsGenerateDimensions (..)

    -- * HeaderType
    , HeaderType (..)

    -- * ListURLChannelsResponse
    , ListURLChannelsResponse
    , listURLChannelsResponse
    , lucrNextPageToken
    , lucrURLChannels

    -- * Payment
    , Payment
    , payment
    , pAmount
    , pDate
    , pName

    -- * AccountsReportsSavedGenerateCSVReportingTimeZone
    , AccountsReportsSavedGenerateCSVReportingTimeZone (..)

    -- * ContentAdsSettingsType
    , ContentAdsSettingsType (..)

    -- * ListCustomChannelsResponse
    , ListCustomChannelsResponse
    , listCustomChannelsResponse
    , lccrNextPageToken
    , lccrCustomChannels

    -- * AccountsReportsSavedGenerateDateRange
    , AccountsReportsSavedGenerateDateRange (..)

    -- * AccountsReportsGenerateCSVMetrics
    , AccountsReportsGenerateCSVMetrics (..)

    -- * ListLinkedAdUnitsResponse
    , ListLinkedAdUnitsResponse
    , listLinkedAdUnitsResponse
    , llaurNextPageToken
    , llaurAdUnits

    -- * ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larNextPageToken
    , larAccounts

    -- * SavedReport
    , SavedReport
    , savedReport
    , srName
    , srTitle

    -- * AdUnit
    , AdUnit
    , adUnit
    , auState
    , auReportingDimensionId
    , auName
    , auContentAdsSettings
    , auDisplayName

    -- * Cell
    , Cell
    , cell
    , cValue

    -- * Alert
    , Alert
    , alert
    , aSeverity
    , aName
    , aType
    , aMessage

    -- * ListSavedReportsResponse
    , ListSavedReportsResponse
    , listSavedReportsResponse
    , lsrrNextPageToken
    , lsrrSavedReports

    -- * ListChildAccountsResponse
    , ListChildAccountsResponse
    , listChildAccountsResponse
    , lcarNextPageToken
    , lcarAccounts

    -- * Account
    , Account
    , account
    , accPremium
    , accPendingTasks
    , accName
    , accDisplayName
    , accTimeZone
    , accCreateTime

    -- * AccountsReportsGenerateCSVDateRange
    , AccountsReportsGenerateCSVDateRange (..)

    -- * ListAdUnitsResponse
    , ListAdUnitsResponse
    , listAdUnitsResponse
    , laurNextPageToken
    , laurAdUnits

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * AdUnitState
    , AdUnitState (..)

    -- * AdClient
    , AdClient
    , adClient
    , acReportingDimensionId
    , acName
    , acProductCode

    -- * ReportResult
    , ReportResult
    , reportResult
    , rrAverages
    , rrEndDate
    , rrWarnings
    , rrRows
    , rrTotals
    , rrStartDate
    , rrHeaders
    , rrTotalMatchedRows

    -- * Header
    , Header
    , header
    , hCurrencyCode
    , hName
    , hType

    -- * AccountsReportsGenerateDateRange
    , AccountsReportsGenerateDateRange (..)

    -- * ContentAdsSettings
    , ContentAdsSettings
    , contentAdsSettings
    , casSize
    , casType

    -- * Xgafv
    , Xgafv (..)

    -- * Row
    , Row
    , row
    , rCells

    -- * AlertSeverity
    , AlertSeverity (..)

    -- * CustomChannel
    , CustomChannel
    , customChannel
    , ccReportingDimensionId
    , ccName
    , ccDisplayName

    -- * URLChannel
    , URLChannel
    , urlChannel
    , ucReportingDimensionId
    , ucURIPattern
    , ucName

    -- * ListPaymentsResponse
    , ListPaymentsResponse
    , listPaymentsResponse
    , lprPayments

    -- * HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- * ListLinkedCustomChannelsResponse
    , ListLinkedCustomChannelsResponse
    , listLinkedCustomChannelsResponse
    , llccrNextPageToken
    , llccrCustomChannels

    -- * AdUnitAdCode
    , AdUnitAdCode
    , adUnitAdCode
    , auacAdCode

    -- * TimeZone
    , TimeZone
    , timeZone
    , tzVersion
    , tzId

    -- * AccountsReportsGenerateMetrics
    , AccountsReportsGenerateMetrics (..)

    -- * Site
    , Site
    , site
    , sAutoAdsEnabled
    , sState
    , sDomain
    , sReportingDimensionId
    , sName

    -- * ListAdClientsResponse
    , ListAdClientsResponse
    , listAdClientsResponse
    , lacrNextPageToken
    , lacrAdClients

    -- * AccountsReportsGenerateCSVDimensions
    , AccountsReportsGenerateCSVDimensions (..)

    -- * AccountsReportsGenerateReportingTimeZone
    , AccountsReportsGenerateReportingTimeZone (..)

    -- * ListSitesResponse
    , ListSitesResponse
    , listSitesResponse
    , lsrNextPageToken
    , lsrSites
    ) where

import Network.Google.AdSense.Types.Product
import Network.Google.AdSense.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the AdSense Management API. This contains the host and root path used as a starting point for constructing service requests.
adSenseService :: ServiceConfig
adSenseService
  = defaultService (ServiceId "adsense:v2")
      "adsense.googleapis.com"

-- | View your AdSense data
adSenseReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/adsense.readonly"]
adSenseReadOnlyScope = Proxy

-- | View and manage your AdSense data
adSenseScope :: Proxy '["https://www.googleapis.com/auth/adsense"]
adSenseScope = Proxy
