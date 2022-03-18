{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
    (
    -- * Configuration
      adSenseService

    -- * OAuth Scopes
    , adSenseScope
    , adSenseReadOnlyScope

    -- * Resources

    -- ** adsense.accounts.adclients.adunits.get
    , AdSenseAccountsAdclientsAdunitsGetResource
    , newAdSenseAccountsAdclientsAdunitsGet
    , AdSenseAccountsAdclientsAdunitsGet

    -- ** adsense.accounts.adclients.adunits.getAdcode
    , AdSenseAccountsAdclientsAdunitsGetAdcodeResource
    , newAdSenseAccountsAdclientsAdunitsGetAdcode
    , AdSenseAccountsAdclientsAdunitsGetAdcode

    -- ** adsense.accounts.adclients.adunits.list
    , AdSenseAccountsAdclientsAdunitsListResource
    , newAdSenseAccountsAdclientsAdunitsList
    , AdSenseAccountsAdclientsAdunitsList

    -- ** adsense.accounts.adclients.adunits.listLinkedCustomChannels
    , AdSenseAccountsAdclientsAdunitsListLinkedCustomChannelsResource
    , newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels
    , AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels

    -- ** adsense.accounts.adclients.customchannels.get
    , AdSenseAccountsAdclientsCustomchannelsGetResource
    , newAdSenseAccountsAdclientsCustomchannelsGet
    , AdSenseAccountsAdclientsCustomchannelsGet

    -- ** adsense.accounts.adclients.customchannels.list
    , AdSenseAccountsAdclientsCustomchannelsListResource
    , newAdSenseAccountsAdclientsCustomchannelsList
    , AdSenseAccountsAdclientsCustomchannelsList

    -- ** adsense.accounts.adclients.customchannels.listLinkedAdUnits
    , AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnitsResource
    , newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits
    , AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits

    -- ** adsense.accounts.adclients.getAdcode
    , AdSenseAccountsAdclientsGetAdcodeResource
    , newAdSenseAccountsAdclientsGetAdcode
    , AdSenseAccountsAdclientsGetAdcode

    -- ** adsense.accounts.adclients.list
    , AdSenseAccountsAdclientsListResource
    , newAdSenseAccountsAdclientsList
    , AdSenseAccountsAdclientsList

    -- ** adsense.accounts.adclients.urlchannels.list
    , AdSenseAccountsAdclientsUrlchannelsListResource
    , newAdSenseAccountsAdclientsUrlchannelsList
    , AdSenseAccountsAdclientsUrlchannelsList

    -- ** adsense.accounts.alerts.list
    , AdSenseAccountsAlertsListResource
    , newAdSenseAccountsAlertsList
    , AdSenseAccountsAlertsList

    -- ** adsense.accounts.get
    , AdSenseAccountsGetResource
    , newAdSenseAccountsGet
    , AdSenseAccountsGet

    -- ** adsense.accounts.list
    , AdSenseAccountsListResource
    , newAdSenseAccountsList
    , AdSenseAccountsList

    -- ** adsense.accounts.listChildAccounts
    , AdSenseAccountsListChildAccountsResource
    , newAdSenseAccountsListChildAccounts
    , AdSenseAccountsListChildAccounts

    -- ** adsense.accounts.payments.list
    , AdSenseAccountsPaymentsListResource
    , newAdSenseAccountsPaymentsList
    , AdSenseAccountsPaymentsList

    -- ** adsense.accounts.reports.generate
    , AdSenseAccountsReportsGenerateResource
    , newAdSenseAccountsReportsGenerate
    , AdSenseAccountsReportsGenerate

    -- ** adsense.accounts.reports.generateCsv
    , AdSenseAccountsReportsGenerateCsvResource
    , newAdSenseAccountsReportsGenerateCsv
    , AdSenseAccountsReportsGenerateCsv

    -- ** adsense.accounts.reports.saved.generate
    , AdSenseAccountsReportsSavedGenerateResource
    , newAdSenseAccountsReportsSavedGenerate
    , AdSenseAccountsReportsSavedGenerate

    -- ** adsense.accounts.reports.saved.generateCsv
    , AdSenseAccountsReportsSavedGenerateCsvResource
    , newAdSenseAccountsReportsSavedGenerateCsv
    , AdSenseAccountsReportsSavedGenerateCsv

    -- ** adsense.accounts.reports.saved.list
    , AdSenseAccountsReportsSavedListResource
    , newAdSenseAccountsReportsSavedList
    , AdSenseAccountsReportsSavedList

    -- ** adsense.accounts.sites.get
    , AdSenseAccountsSitesGetResource
    , newAdSenseAccountsSitesGet
    , AdSenseAccountsSitesGet

    -- ** adsense.accounts.sites.list
    , AdSenseAccountsSitesListResource
    , newAdSenseAccountsSitesList
    , AdSenseAccountsSitesList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Account
    , Account (..)
    , newAccount

    -- ** AdClient
    , AdClient (..)
    , newAdClient

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

import Gogol.AdSense.Accounts.Adclients.Adunits.Get
import Gogol.AdSense.Accounts.Adclients.Adunits.GetAdcode
import Gogol.AdSense.Accounts.Adclients.Adunits.List
import Gogol.AdSense.Accounts.Adclients.Adunits.ListLinkedCustomChannels
import Gogol.AdSense.Accounts.Adclients.Customchannels.Get
import Gogol.AdSense.Accounts.Adclients.Customchannels.List
import Gogol.AdSense.Accounts.Adclients.Customchannels.ListLinkedAdUnits
import Gogol.AdSense.Accounts.Adclients.GetAdcode
import Gogol.AdSense.Accounts.Adclients.List
import Gogol.AdSense.Accounts.Adclients.Urlchannels.List
import Gogol.AdSense.Accounts.Alerts.List
import Gogol.AdSense.Accounts.Get
import Gogol.AdSense.Accounts.List
import Gogol.AdSense.Accounts.ListChildAccounts
import Gogol.AdSense.Accounts.Payments.List
import Gogol.AdSense.Accounts.Reports.Generate
import Gogol.AdSense.Accounts.Reports.GenerateCsv
import Gogol.AdSense.Accounts.Reports.Saved.Generate
import Gogol.AdSense.Accounts.Reports.Saved.GenerateCsv
import Gogol.AdSense.Accounts.Reports.Saved.List
import Gogol.AdSense.Accounts.Sites.Get
import Gogol.AdSense.Accounts.Sites.List
import Gogol.AdSense.Types
