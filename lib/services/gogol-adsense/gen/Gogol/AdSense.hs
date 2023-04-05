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
-- Module      : Gogol.AdSense
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The AdSense Management API allows publishers to access their inventory and run earnings and performance reports.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference>
module Gogol.AdSense
  ( -- * Configuration
    adSenseService,

    -- * OAuth Scopes
    Adsense'FullControl,
    Adsense'Readonly,

    -- * Resources

    -- ** adsense.accounts.adclients.adunits.create
    AdSenseAccountsAdclientsAdunitsCreateResource,
    AdSenseAccountsAdclientsAdunitsCreate (..),
    newAdSenseAccountsAdclientsAdunitsCreate,

    -- ** adsense.accounts.adclients.adunits.get
    AdSenseAccountsAdclientsAdunitsGetResource,
    AdSenseAccountsAdclientsAdunitsGet (..),
    newAdSenseAccountsAdclientsAdunitsGet,

    -- ** adsense.accounts.adclients.adunits.getAdcode
    AdSenseAccountsAdclientsAdunitsGetAdcodeResource,
    AdSenseAccountsAdclientsAdunitsGetAdcode (..),
    newAdSenseAccountsAdclientsAdunitsGetAdcode,

    -- ** adsense.accounts.adclients.adunits.list
    AdSenseAccountsAdclientsAdunitsListResource,
    AdSenseAccountsAdclientsAdunitsList (..),
    newAdSenseAccountsAdclientsAdunitsList,

    -- ** adsense.accounts.adclients.adunits.listLinkedCustomChannels
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannelsResource,
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels (..),
    newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels,

    -- ** adsense.accounts.adclients.adunits.patch
    AdSenseAccountsAdclientsAdunitsPatchResource,
    AdSenseAccountsAdclientsAdunitsPatch (..),
    newAdSenseAccountsAdclientsAdunitsPatch,

    -- ** adsense.accounts.adclients.customchannels.create
    AdSenseAccountsAdclientsCustomchannelsCreateResource,
    AdSenseAccountsAdclientsCustomchannelsCreate (..),
    newAdSenseAccountsAdclientsCustomchannelsCreate,

    -- ** adsense.accounts.adclients.customchannels.delete
    AdSenseAccountsAdclientsCustomchannelsDeleteResource,
    AdSenseAccountsAdclientsCustomchannelsDelete (..),
    newAdSenseAccountsAdclientsCustomchannelsDelete,

    -- ** adsense.accounts.adclients.customchannels.get
    AdSenseAccountsAdclientsCustomchannelsGetResource,
    AdSenseAccountsAdclientsCustomchannelsGet (..),
    newAdSenseAccountsAdclientsCustomchannelsGet,

    -- ** adsense.accounts.adclients.customchannels.list
    AdSenseAccountsAdclientsCustomchannelsListResource,
    AdSenseAccountsAdclientsCustomchannelsList (..),
    newAdSenseAccountsAdclientsCustomchannelsList,

    -- ** adsense.accounts.adclients.customchannels.listLinkedAdUnits
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnitsResource,
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits (..),
    newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits,

    -- ** adsense.accounts.adclients.customchannels.patch
    AdSenseAccountsAdclientsCustomchannelsPatchResource,
    AdSenseAccountsAdclientsCustomchannelsPatch (..),
    newAdSenseAccountsAdclientsCustomchannelsPatch,

    -- ** adsense.accounts.adclients.get
    AdSenseAccountsAdclientsGetResource,
    AdSenseAccountsAdclientsGet (..),
    newAdSenseAccountsAdclientsGet,

    -- ** adsense.accounts.adclients.getAdcode
    AdSenseAccountsAdclientsGetAdcodeResource,
    AdSenseAccountsAdclientsGetAdcode (..),
    newAdSenseAccountsAdclientsGetAdcode,

    -- ** adsense.accounts.adclients.list
    AdSenseAccountsAdclientsListResource,
    AdSenseAccountsAdclientsList (..),
    newAdSenseAccountsAdclientsList,

    -- ** adsense.accounts.adclients.urlchannels.get
    AdSenseAccountsAdclientsUrlchannelsGetResource,
    AdSenseAccountsAdclientsUrlchannelsGet (..),
    newAdSenseAccountsAdclientsUrlchannelsGet,

    -- ** adsense.accounts.adclients.urlchannels.list
    AdSenseAccountsAdclientsUrlchannelsListResource,
    AdSenseAccountsAdclientsUrlchannelsList (..),
    newAdSenseAccountsAdclientsUrlchannelsList,

    -- ** adsense.accounts.alerts.list
    AdSenseAccountsAlertsListResource,
    AdSenseAccountsAlertsList (..),
    newAdSenseAccountsAlertsList,

    -- ** adsense.accounts.get
    AdSenseAccountsGetResource,
    AdSenseAccountsGet (..),
    newAdSenseAccountsGet,

    -- ** adsense.accounts.getAdBlockingRecoveryTag
    AdSenseAccountsGetAdBlockingRecoveryTagResource,
    AdSenseAccountsGetAdBlockingRecoveryTag (..),
    newAdSenseAccountsGetAdBlockingRecoveryTag,

    -- ** adsense.accounts.list
    AdSenseAccountsListResource,
    AdSenseAccountsList (..),
    newAdSenseAccountsList,

    -- ** adsense.accounts.listChildAccounts
    AdSenseAccountsListChildAccountsResource,
    AdSenseAccountsListChildAccounts (..),
    newAdSenseAccountsListChildAccounts,

    -- ** adsense.accounts.payments.list
    AdSenseAccountsPaymentsListResource,
    AdSenseAccountsPaymentsList (..),
    newAdSenseAccountsPaymentsList,

    -- ** adsense.accounts.reports.generate
    AdSenseAccountsReportsGenerateResource,
    AdSenseAccountsReportsGenerate (..),
    newAdSenseAccountsReportsGenerate,

    -- ** adsense.accounts.reports.generateCsv
    AdSenseAccountsReportsGenerateCsvResource,
    AdSenseAccountsReportsGenerateCsv (..),
    newAdSenseAccountsReportsGenerateCsv,

    -- ** adsense.accounts.reports.getSaved
    AdSenseAccountsReportsGetSavedResource,
    AdSenseAccountsReportsGetSaved (..),
    newAdSenseAccountsReportsGetSaved,

    -- ** adsense.accounts.reports.saved.generate
    AdSenseAccountsReportsSavedGenerateResource,
    AdSenseAccountsReportsSavedGenerate (..),
    newAdSenseAccountsReportsSavedGenerate,

    -- ** adsense.accounts.reports.saved.generateCsv
    AdSenseAccountsReportsSavedGenerateCsvResource,
    AdSenseAccountsReportsSavedGenerateCsv (..),
    newAdSenseAccountsReportsSavedGenerateCsv,

    -- ** adsense.accounts.reports.saved.list
    AdSenseAccountsReportsSavedListResource,
    AdSenseAccountsReportsSavedList (..),
    newAdSenseAccountsReportsSavedList,

    -- ** adsense.accounts.sites.get
    AdSenseAccountsSitesGetResource,
    AdSenseAccountsSitesGet (..),
    newAdSenseAccountsSitesGet,

    -- ** adsense.accounts.sites.list
    AdSenseAccountsSitesListResource,
    AdSenseAccountsSitesList (..),
    newAdSenseAccountsSitesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** Account_State
    Account_State (..),

    -- ** AdBlockingRecoveryTag
    AdBlockingRecoveryTag (..),
    newAdBlockingRecoveryTag,

    -- ** AdClient
    AdClient (..),
    newAdClient,

    -- ** AdClient_State
    AdClient_State (..),

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

    -- ** Empty
    Empty (..),
    newEmpty,

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

import Gogol.AdSense.Accounts.Adclients.Adunits.Create
import Gogol.AdSense.Accounts.Adclients.Adunits.Get
import Gogol.AdSense.Accounts.Adclients.Adunits.GetAdcode
import Gogol.AdSense.Accounts.Adclients.Adunits.List
import Gogol.AdSense.Accounts.Adclients.Adunits.ListLinkedCustomChannels
import Gogol.AdSense.Accounts.Adclients.Adunits.Patch
import Gogol.AdSense.Accounts.Adclients.Customchannels.Create
import Gogol.AdSense.Accounts.Adclients.Customchannels.Delete
import Gogol.AdSense.Accounts.Adclients.Customchannels.Get
import Gogol.AdSense.Accounts.Adclients.Customchannels.List
import Gogol.AdSense.Accounts.Adclients.Customchannels.ListLinkedAdUnits
import Gogol.AdSense.Accounts.Adclients.Customchannels.Patch
import Gogol.AdSense.Accounts.Adclients.Get
import Gogol.AdSense.Accounts.Adclients.GetAdcode
import Gogol.AdSense.Accounts.Adclients.List
import Gogol.AdSense.Accounts.Adclients.Urlchannels.Get
import Gogol.AdSense.Accounts.Adclients.Urlchannels.List
import Gogol.AdSense.Accounts.Alerts.List
import Gogol.AdSense.Accounts.Get
import Gogol.AdSense.Accounts.GetAdBlockingRecoveryTag
import Gogol.AdSense.Accounts.List
import Gogol.AdSense.Accounts.ListChildAccounts
import Gogol.AdSense.Accounts.Payments.List
import Gogol.AdSense.Accounts.Reports.Generate
import Gogol.AdSense.Accounts.Reports.GenerateCsv
import Gogol.AdSense.Accounts.Reports.GetSaved
import Gogol.AdSense.Accounts.Reports.Saved.Generate
import Gogol.AdSense.Accounts.Reports.Saved.GenerateCsv
import Gogol.AdSense.Accounts.Reports.Saved.List
import Gogol.AdSense.Accounts.Sites.Get
import Gogol.AdSense.Accounts.Sites.List
import Gogol.AdSense.Types
