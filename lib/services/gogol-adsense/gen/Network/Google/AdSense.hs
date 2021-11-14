{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdSense
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The AdSense Management API allows publishers to access their inventory
-- and run earnings and performance reports.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference>
module Network.Google.AdSense
    (
    -- * Service Configuration
      adSenseService

    -- * OAuth Scopes
    , adSenseReadOnlyScope
    , adSenseScope

    -- * API Declaration
    , AdSenseAPI

    -- * Resources

    -- ** adsense.accounts.adclients.adunits.get
    , module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.Get

    -- ** adsense.accounts.adclients.adunits.getAdcode
    , module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.GetAdcode

    -- ** adsense.accounts.adclients.adunits.list
    , module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.List

    -- ** adsense.accounts.adclients.adunits.listLinkedCustomChannels
    , module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.ListLinkedCustomChannels

    -- ** adsense.accounts.adclients.customchannels.get
    , module Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.Get

    -- ** adsense.accounts.adclients.customchannels.list
    , module Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.List

    -- ** adsense.accounts.adclients.customchannels.listLinkedAdUnits
    , module Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.ListLinkedAdUnits

    -- ** adsense.accounts.adclients.getAdcode
    , module Network.Google.Resource.AdSense.Accounts.AdClients.GetAdcode

    -- ** adsense.accounts.adclients.list
    , module Network.Google.Resource.AdSense.Accounts.AdClients.List

    -- ** adsense.accounts.adclients.urlchannels.list
    , module Network.Google.Resource.AdSense.Accounts.AdClients.URLChannels.List

    -- ** adsense.accounts.alerts.list
    , module Network.Google.Resource.AdSense.Accounts.Alerts.List

    -- ** adsense.accounts.get
    , module Network.Google.Resource.AdSense.Accounts.Get

    -- ** adsense.accounts.list
    , module Network.Google.Resource.AdSense.Accounts.List

    -- ** adsense.accounts.listChildAccounts
    , module Network.Google.Resource.AdSense.Accounts.ListChildAccounts

    -- ** adsense.accounts.payments.list
    , module Network.Google.Resource.AdSense.Accounts.Payments.List

    -- ** adsense.accounts.reports.generate
    , module Network.Google.Resource.AdSense.Accounts.Reports.Generate

    -- ** adsense.accounts.reports.generateCsv
    , module Network.Google.Resource.AdSense.Accounts.Reports.GenerateCSV

    -- ** adsense.accounts.reports.saved.generate
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate

    -- ** adsense.accounts.reports.saved.generateCsv
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.GenerateCSV

    -- ** adsense.accounts.reports.saved.list
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.List

    -- ** adsense.accounts.sites.get
    , module Network.Google.Resource.AdSense.Accounts.Sites.Get

    -- ** adsense.accounts.sites.list
    , module Network.Google.Resource.AdSense.Accounts.Sites.List

    -- * Types

    -- ** SiteState
    , SiteState (..)

    -- ** ListAlertsResponse
    , ListAlertsResponse
    , listAlertsResponse
    , larAlerts

    -- ** AdClientAdCode
    , AdClientAdCode
    , adClientAdCode
    , acacAmpHead
    , acacAmpBody
    , acacAdCode

    -- ** AccountsReportsSavedGenerateReportingTimeZone
    , AccountsReportsSavedGenerateReportingTimeZone (..)

    -- ** AccountsReportsSavedGenerateCSVDateRange
    , AccountsReportsSavedGenerateCSVDateRange (..)

    -- ** HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- ** AccountsReportsGenerateCSVReportingTimeZone
    , AccountsReportsGenerateCSVReportingTimeZone (..)

    -- ** AccountsReportsGenerateDimensions
    , AccountsReportsGenerateDimensions (..)

    -- ** HeaderType
    , HeaderType (..)

    -- ** ListURLChannelsResponse
    , ListURLChannelsResponse
    , listURLChannelsResponse
    , lucrNextPageToken
    , lucrURLChannels

    -- ** Payment
    , Payment
    , payment
    , pAmount
    , pDate
    , pName

    -- ** AccountsReportsSavedGenerateCSVReportingTimeZone
    , AccountsReportsSavedGenerateCSVReportingTimeZone (..)

    -- ** ContentAdsSettingsType
    , ContentAdsSettingsType (..)

    -- ** ListCustomChannelsResponse
    , ListCustomChannelsResponse
    , listCustomChannelsResponse
    , lccrNextPageToken
    , lccrCustomChannels

    -- ** AccountsReportsSavedGenerateDateRange
    , AccountsReportsSavedGenerateDateRange (..)

    -- ** AccountsReportsGenerateCSVMetrics
    , AccountsReportsGenerateCSVMetrics (..)

    -- ** ListLinkedAdUnitsResponse
    , ListLinkedAdUnitsResponse
    , listLinkedAdUnitsResponse
    , llaurNextPageToken
    , llaurAdUnits

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larNextPageToken
    , larAccounts

    -- ** SavedReport
    , SavedReport
    , savedReport
    , srName
    , srTitle

    -- ** AdUnit
    , AdUnit
    , adUnit
    , auState
    , auReportingDimensionId
    , auName
    , auContentAdsSettings
    , auDisplayName

    -- ** Cell
    , Cell
    , cell
    , cValue

    -- ** Alert
    , Alert
    , alert
    , aSeverity
    , aName
    , aType
    , aMessage

    -- ** ListSavedReportsResponse
    , ListSavedReportsResponse
    , listSavedReportsResponse
    , lsrrNextPageToken
    , lsrrSavedReports

    -- ** ListChildAccountsResponse
    , ListChildAccountsResponse
    , listChildAccountsResponse
    , lcarNextPageToken
    , lcarAccounts

    -- ** Account
    , Account
    , account
    , accPremium
    , accPendingTasks
    , accName
    , accDisplayName
    , accTimeZone
    , accCreateTime

    -- ** AccountsReportsGenerateCSVDateRange
    , AccountsReportsGenerateCSVDateRange (..)

    -- ** ListAdUnitsResponse
    , ListAdUnitsResponse
    , listAdUnitsResponse
    , laurNextPageToken
    , laurAdUnits

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** AdUnitState
    , AdUnitState (..)

    -- ** AdClient
    , AdClient
    , adClient
    , acReportingDimensionId
    , acName
    , acProductCode

    -- ** ReportResult
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

    -- ** Header
    , Header
    , header
    , hCurrencyCode
    , hName
    , hType

    -- ** AccountsReportsGenerateDateRange
    , AccountsReportsGenerateDateRange (..)

    -- ** ContentAdsSettings
    , ContentAdsSettings
    , contentAdsSettings
    , casSize
    , casType

    -- ** Xgafv
    , Xgafv (..)

    -- ** Row
    , Row
    , row
    , rCells

    -- ** AlertSeverity
    , AlertSeverity (..)

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , ccReportingDimensionId
    , ccName
    , ccDisplayName

    -- ** URLChannel
    , URLChannel
    , urlChannel
    , ucReportingDimensionId
    , ucURIPattern
    , ucName

    -- ** ListPaymentsResponse
    , ListPaymentsResponse
    , listPaymentsResponse
    , lprPayments

    -- ** HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- ** ListLinkedCustomChannelsResponse
    , ListLinkedCustomChannelsResponse
    , listLinkedCustomChannelsResponse
    , llccrNextPageToken
    , llccrCustomChannels

    -- ** AdUnitAdCode
    , AdUnitAdCode
    , adUnitAdCode
    , auacAdCode

    -- ** TimeZone
    , TimeZone
    , timeZone
    , tzVersion
    , tzId

    -- ** AccountsReportsGenerateMetrics
    , AccountsReportsGenerateMetrics (..)

    -- ** Site
    , Site
    , site
    , sAutoAdsEnabled
    , sState
    , sDomain
    , sReportingDimensionId
    , sName

    -- ** ListAdClientsResponse
    , ListAdClientsResponse
    , listAdClientsResponse
    , lacrNextPageToken
    , lacrAdClients

    -- ** AccountsReportsGenerateCSVDimensions
    , AccountsReportsGenerateCSVDimensions (..)

    -- ** AccountsReportsGenerateReportingTimeZone
    , AccountsReportsGenerateReportingTimeZone (..)

    -- ** ListSitesResponse
    , ListSitesResponse
    , listSitesResponse
    , lsrNextPageToken
    , lsrSites
    ) where

import Network.Google.Prelude
import Network.Google.AdSense.Types
import Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.Get
import Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.GetAdcode
import Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.List
import Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.ListLinkedCustomChannels
import Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.Get
import Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.List
import Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.ListLinkedAdUnits
import Network.Google.Resource.AdSense.Accounts.AdClients.GetAdcode
import Network.Google.Resource.AdSense.Accounts.AdClients.List
import Network.Google.Resource.AdSense.Accounts.AdClients.URLChannels.List
import Network.Google.Resource.AdSense.Accounts.Alerts.List
import Network.Google.Resource.AdSense.Accounts.Get
import Network.Google.Resource.AdSense.Accounts.List
import Network.Google.Resource.AdSense.Accounts.ListChildAccounts
import Network.Google.Resource.AdSense.Accounts.Payments.List
import Network.Google.Resource.AdSense.Accounts.Reports.Generate
import Network.Google.Resource.AdSense.Accounts.Reports.GenerateCSV
import Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate
import Network.Google.Resource.AdSense.Accounts.Reports.Saved.GenerateCSV
import Network.Google.Resource.AdSense.Accounts.Reports.Saved.List
import Network.Google.Resource.AdSense.Accounts.Sites.Get
import Network.Google.Resource.AdSense.Accounts.Sites.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the AdSense Management API service.
type AdSenseAPI =
     AccountsAdClientsAdUnitsListResource :<|>
       AccountsAdClientsAdUnitsGetResource
       :<|>
       AccountsAdClientsAdUnitsListLinkedCustomChannelsResource
       :<|> AccountsAdClientsAdUnitsGetAdcodeResource
       :<|> AccountsAdClientsURLChannelsListResource
       :<|> AccountsAdClientsCustomChannelsListResource
       :<|>
       AccountsAdClientsCustomChannelsListLinkedAdUnitsResource
       :<|> AccountsAdClientsCustomChannelsGetResource
       :<|> AccountsAdClientsListResource
       :<|> AccountsAdClientsGetAdcodeResource
       :<|> AccountsReportsSavedListResource
       :<|> AccountsReportsSavedGenerateCSVResource
       :<|> AccountsReportsSavedGenerateResource
       :<|> AccountsReportsGenerateCSVResource
       :<|> AccountsReportsGenerateResource
       :<|> AccountsAlertsListResource
       :<|> AccountsSitesListResource
       :<|> AccountsSitesGetResource
       :<|> AccountsPaymentsListResource
       :<|> AccountsListChildAccountsResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
