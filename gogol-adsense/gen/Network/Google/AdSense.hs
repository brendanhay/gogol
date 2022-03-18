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
-- Module      : Network.Google.AdSense
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The AdSense Management API allows publishers to access their inventory and run earnings and performance reports.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference>
module Network.Google.AdSense
  ( -- * Configuration
    adSenseService,

    -- * OAuth Scopes
    adSenseScope,
    adSenseReadOnlyScope,

    -- * Resources

    -- ** adsense.accounts.adclients.adunits.get
    AdSenseAccountsAdclientsAdunitsGetResource,
    newAdSenseAccountsAdclientsAdunitsGet,
    AdSenseAccountsAdclientsAdunitsGet,

    -- ** adsense.accounts.adclients.adunits.getAdcode
    AdSenseAccountsAdclientsAdunitsGetAdcodeResource,
    newAdSenseAccountsAdclientsAdunitsGetAdcode,
    AdSenseAccountsAdclientsAdunitsGetAdcode,

    -- ** adsense.accounts.adclients.adunits.list
    AdSenseAccountsAdclientsAdunitsListResource,
    newAdSenseAccountsAdclientsAdunitsList,
    AdSenseAccountsAdclientsAdunitsList,

    -- ** adsense.accounts.adclients.adunits.listLinkedCustomChannels
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannelsResource,
    newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels,
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels,

    -- ** adsense.accounts.adclients.customchannels.get
    AdSenseAccountsAdclientsCustomchannelsGetResource,
    newAdSenseAccountsAdclientsCustomchannelsGet,
    AdSenseAccountsAdclientsCustomchannelsGet,

    -- ** adsense.accounts.adclients.customchannels.list
    AdSenseAccountsAdclientsCustomchannelsListResource,
    newAdSenseAccountsAdclientsCustomchannelsList,
    AdSenseAccountsAdclientsCustomchannelsList,

    -- ** adsense.accounts.adclients.customchannels.listLinkedAdUnits
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnitsResource,
    newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits,
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits,

    -- ** adsense.accounts.adclients.getAdcode
    AdSenseAccountsAdclientsGetAdcodeResource,
    newAdSenseAccountsAdclientsGetAdcode,
    AdSenseAccountsAdclientsGetAdcode,

    -- ** adsense.accounts.adclients.list
    AdSenseAccountsAdclientsListResource,
    newAdSenseAccountsAdclientsList,
    AdSenseAccountsAdclientsList,

    -- ** adsense.accounts.adclients.urlchannels.list
    AdSenseAccountsAdclientsUrlchannelsListResource,
    newAdSenseAccountsAdclientsUrlchannelsList,
    AdSenseAccountsAdclientsUrlchannelsList,

    -- ** adsense.accounts.alerts.list
    AdSenseAccountsAlertsListResource,
    newAdSenseAccountsAlertsList,
    AdSenseAccountsAlertsList,

    -- ** adsense.accounts.get
    AdSenseAccountsGetResource,
    newAdSenseAccountsGet,
    AdSenseAccountsGet,

    -- ** adsense.accounts.list
    AdSenseAccountsListResource,
    newAdSenseAccountsList,
    AdSenseAccountsList,

    -- ** adsense.accounts.listChildAccounts
    AdSenseAccountsListChildAccountsResource,
    newAdSenseAccountsListChildAccounts,
    AdSenseAccountsListChildAccounts,

    -- ** adsense.accounts.payments.list
    AdSenseAccountsPaymentsListResource,
    newAdSenseAccountsPaymentsList,
    AdSenseAccountsPaymentsList,

    -- ** adsense.accounts.reports.generate
    AdSenseAccountsReportsGenerateResource,
    newAdSenseAccountsReportsGenerate,
    AdSenseAccountsReportsGenerate,

    -- ** adsense.accounts.reports.generateCsv
    AdSenseAccountsReportsGenerateCsvResource,
    newAdSenseAccountsReportsGenerateCsv,
    AdSenseAccountsReportsGenerateCsv,

    -- ** adsense.accounts.reports.saved.generate
    AdSenseAccountsReportsSavedGenerateResource,
    newAdSenseAccountsReportsSavedGenerate,
    AdSenseAccountsReportsSavedGenerate,

    -- ** adsense.accounts.reports.saved.generateCsv
    AdSenseAccountsReportsSavedGenerateCsvResource,
    newAdSenseAccountsReportsSavedGenerateCsv,
    AdSenseAccountsReportsSavedGenerateCsv,

    -- ** adsense.accounts.reports.saved.list
    AdSenseAccountsReportsSavedListResource,
    newAdSenseAccountsReportsSavedList,
    AdSenseAccountsReportsSavedList,

    -- ** adsense.accounts.sites.get
    AdSenseAccountsSitesGetResource,
    newAdSenseAccountsSitesGet,
    AdSenseAccountsSitesGet,

    -- ** adsense.accounts.sites.list
    AdSenseAccountsSitesListResource,
    newAdSenseAccountsSitesList,
    AdSenseAccountsSitesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** AdClient
    AdClient (..),
    newAdClient,

    -- ** AdClientAdCode
    AdClientAdCode (..),
    newAdClientAdCode,

    -- ** AdUnit
    AdUnit (..),
    newAdUnit,

    -- ** AdUnit_State
    AdUnit_State (..),

    -- ** AdUnitAdCode
    AdUnitAdCode (..),
    newAdUnitAdCode,

    -- ** Alert
    Alert (..),
    newAlert,

    -- ** Alert_Severity
    Alert_Severity (..),

    -- ** Cell
    Cell (..),
    newCell,

    -- ** ContentAdsSettings
    ContentAdsSettings (..),
    newContentAdsSettings,

    -- ** ContentAdsSettings_Type
    ContentAdsSettings_Type (..),

    -- ** CustomChannel
    CustomChannel (..),
    newCustomChannel,

    -- ** Date
    Date (..),
    newDate,

    -- ** Header
    Header (..),
    newHeader,

    -- ** Header_Type
    Header_Type (..),

    -- ** HttpBody
    HttpBody (..),
    newHttpBody,

    -- ** HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- ** ListAccountsResponse
    ListAccountsResponse (..),
    newListAccountsResponse,

    -- ** ListAdClientsResponse
    ListAdClientsResponse (..),
    newListAdClientsResponse,

    -- ** ListAdUnitsResponse
    ListAdUnitsResponse (..),
    newListAdUnitsResponse,

    -- ** ListAlertsResponse
    ListAlertsResponse (..),
    newListAlertsResponse,

    -- ** ListChildAccountsResponse
    ListChildAccountsResponse (..),
    newListChildAccountsResponse,

    -- ** ListCustomChannelsResponse
    ListCustomChannelsResponse (..),
    newListCustomChannelsResponse,

    -- ** ListLinkedAdUnitsResponse
    ListLinkedAdUnitsResponse (..),
    newListLinkedAdUnitsResponse,

    -- ** ListLinkedCustomChannelsResponse
    ListLinkedCustomChannelsResponse (..),
    newListLinkedCustomChannelsResponse,

    -- ** ListPaymentsResponse
    ListPaymentsResponse (..),
    newListPaymentsResponse,

    -- ** ListSavedReportsResponse
    ListSavedReportsResponse (..),
    newListSavedReportsResponse,

    -- ** ListSitesResponse
    ListSitesResponse (..),
    newListSitesResponse,

    -- ** ListUrlChannelsResponse
    ListUrlChannelsResponse (..),
    newListUrlChannelsResponse,

    -- ** Payment
    Payment (..),
    newPayment,

    -- ** ReportResult
    ReportResult (..),
    newReportResult,

    -- ** Row
    Row (..),
    newRow,

    -- ** SavedReport
    SavedReport (..),
    newSavedReport,

    -- ** Site
    Site (..),
    newSite,

    -- ** Site_State
    Site_State (..),

    -- ** TimeZone
    TimeZone (..),
    newTimeZone,

    -- ** UrlChannel
    UrlChannel (..),
    newUrlChannel,

    -- ** AccountsReportsGenerateDateRange
    AccountsReportsGenerateDateRange (..),

    -- ** AccountsReportsGenerateDimensions
    AccountsReportsGenerateDimensions (..),

    -- ** AccountsReportsGenerateMetrics
    AccountsReportsGenerateMetrics (..),

    -- ** AccountsReportsGenerateReportingTimeZone
    AccountsReportsGenerateReportingTimeZone (..),

    -- ** AccountsReportsGenerateCsvDateRange
    AccountsReportsGenerateCsvDateRange (..),

    -- ** AccountsReportsGenerateCsvDimensions
    AccountsReportsGenerateCsvDimensions (..),

    -- ** AccountsReportsGenerateCsvMetrics
    AccountsReportsGenerateCsvMetrics (..),

    -- ** AccountsReportsGenerateCsvReportingTimeZone
    AccountsReportsGenerateCsvReportingTimeZone (..),

    -- ** AccountsReportsSavedGenerateDateRange
    AccountsReportsSavedGenerateDateRange (..),

    -- ** AccountsReportsSavedGenerateReportingTimeZone
    AccountsReportsSavedGenerateReportingTimeZone (..),

    -- ** AccountsReportsSavedGenerateCsvDateRange
    AccountsReportsSavedGenerateCsvDateRange (..),

    -- ** AccountsReportsSavedGenerateCsvReportingTimeZone
    AccountsReportsSavedGenerateCsvReportingTimeZone (..),
  )
where

import Network.Google.AdSense.Accounts.Adclients.Adunits.Get
import Network.Google.AdSense.Accounts.Adclients.Adunits.GetAdcode
import Network.Google.AdSense.Accounts.Adclients.Adunits.List
import Network.Google.AdSense.Accounts.Adclients.Adunits.ListLinkedCustomChannels
import Network.Google.AdSense.Accounts.Adclients.Customchannels.Get
import Network.Google.AdSense.Accounts.Adclients.Customchannels.List
import Network.Google.AdSense.Accounts.Adclients.Customchannels.ListLinkedAdUnits
import Network.Google.AdSense.Accounts.Adclients.GetAdcode
import Network.Google.AdSense.Accounts.Adclients.List
import Network.Google.AdSense.Accounts.Adclients.Urlchannels.List
import Network.Google.AdSense.Accounts.Alerts.List
import Network.Google.AdSense.Accounts.Get
import Network.Google.AdSense.Accounts.List
import Network.Google.AdSense.Accounts.ListChildAccounts
import Network.Google.AdSense.Accounts.Payments.List
import Network.Google.AdSense.Accounts.Reports.Generate
import Network.Google.AdSense.Accounts.Reports.GenerateCsv
import Network.Google.AdSense.Accounts.Reports.Saved.Generate
import Network.Google.AdSense.Accounts.Reports.Saved.GenerateCsv
import Network.Google.AdSense.Accounts.Reports.Saved.List
import Network.Google.AdSense.Accounts.Sites.Get
import Network.Google.AdSense.Accounts.Sites.List
import Network.Google.AdSense.Types
