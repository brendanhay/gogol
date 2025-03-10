{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AdExchangeSeller
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the inventory of Ad Exchange seller users and generates reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference>
module Gogol.AdExchangeSeller
  ( -- * Configuration
    adExchangeSellerService,

    -- * OAuth Scopes
    Adexchange'Seller,
    Adexchange'Seller'Readonly,

    -- * Resources

    -- ** adexchangeseller.accounts.adclients.list
    AdExchangeSellerAccountsAdclientsListResource,
    AdExchangeSellerAccountsAdclientsList (..),
    newAdExchangeSellerAccountsAdclientsList,

    -- ** adexchangeseller.accounts.alerts.list
    AdExchangeSellerAccountsAlertsListResource,
    AdExchangeSellerAccountsAlertsList (..),
    newAdExchangeSellerAccountsAlertsList,

    -- ** adexchangeseller.accounts.customchannels.get
    AdExchangeSellerAccountsCustomchannelsGetResource,
    AdExchangeSellerAccountsCustomchannelsGet (..),
    newAdExchangeSellerAccountsCustomchannelsGet,

    -- ** adexchangeseller.accounts.customchannels.list
    AdExchangeSellerAccountsCustomchannelsListResource,
    AdExchangeSellerAccountsCustomchannelsList (..),
    newAdExchangeSellerAccountsCustomchannelsList,

    -- ** adexchangeseller.accounts.get
    AdExchangeSellerAccountsGetResource,
    AdExchangeSellerAccountsGet (..),
    newAdExchangeSellerAccountsGet,

    -- ** adexchangeseller.accounts.list
    AdExchangeSellerAccountsListResource,
    AdExchangeSellerAccountsList (..),
    newAdExchangeSellerAccountsList,

    -- ** adexchangeseller.accounts.metadata.dimensions.list
    AdExchangeSellerAccountsMetadataDimensionsListResource,
    AdExchangeSellerAccountsMetadataDimensionsList (..),
    newAdExchangeSellerAccountsMetadataDimensionsList,

    -- ** adexchangeseller.accounts.metadata.metrics.list
    AdExchangeSellerAccountsMetadataMetricsListResource,
    AdExchangeSellerAccountsMetadataMetricsList (..),
    newAdExchangeSellerAccountsMetadataMetricsList,

    -- ** adexchangeseller.accounts.preferreddeals.get
    AdExchangeSellerAccountsPreferreddealsGetResource,
    AdExchangeSellerAccountsPreferreddealsGet (..),
    newAdExchangeSellerAccountsPreferreddealsGet,

    -- ** adexchangeseller.accounts.preferreddeals.list
    AdExchangeSellerAccountsPreferreddealsListResource,
    AdExchangeSellerAccountsPreferreddealsList (..),
    newAdExchangeSellerAccountsPreferreddealsList,

    -- ** adexchangeseller.accounts.reports.generate
    AdExchangeSellerAccountsReportsGenerateResource,
    AdExchangeSellerAccountsReportsGenerate (..),
    newAdExchangeSellerAccountsReportsGenerate,

    -- ** adexchangeseller.accounts.reports.saved.generate
    AdExchangeSellerAccountsReportsSavedGenerateResource,
    AdExchangeSellerAccountsReportsSavedGenerate (..),
    newAdExchangeSellerAccountsReportsSavedGenerate,

    -- ** adexchangeseller.accounts.reports.saved.list
    AdExchangeSellerAccountsReportsSavedListResource,
    AdExchangeSellerAccountsReportsSavedList (..),
    newAdExchangeSellerAccountsReportsSavedList,

    -- ** adexchangeseller.accounts.urlchannels.list
    AdExchangeSellerAccountsUrlchannelsListResource,
    AdExchangeSellerAccountsUrlchannelsList (..),
    newAdExchangeSellerAccountsUrlchannelsList,

    -- * Types

    -- ** Account
    Account (..),
    newAccount,

    -- ** Accounts
    Accounts (..),
    newAccounts,

    -- ** AdClient
    AdClient (..),
    newAdClient,

    -- ** AdClients
    AdClients (..),
    newAdClients,

    -- ** Alert
    Alert (..),
    newAlert,

    -- ** Alerts
    Alerts (..),
    newAlerts,

    -- ** CustomChannel
    CustomChannel (..),
    newCustomChannel,

    -- ** CustomChannel_TargetingInfo
    CustomChannel_TargetingInfo (..),
    newCustomChannel_TargetingInfo,

    -- ** CustomChannels
    CustomChannels (..),
    newCustomChannels,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** PreferredDeal
    PreferredDeal (..),
    newPreferredDeal,

    -- ** PreferredDeals
    PreferredDeals (..),
    newPreferredDeals,

    -- ** Report
    Report (..),
    newReport,

    -- ** Report_HeadersItem
    Report_HeadersItem (..),
    newReport_HeadersItem,

    -- ** ReportingMetadataEntry
    ReportingMetadataEntry (..),
    newReportingMetadataEntry,

    -- ** SavedReport
    SavedReport (..),
    newSavedReport,

    -- ** SavedReports
    SavedReports (..),
    newSavedReports,

    -- ** UrlChannel
    UrlChannel (..),
    newUrlChannel,

    -- ** UrlChannels
    UrlChannels (..),
    newUrlChannels,
  )
where

import Gogol.AdExchangeSeller.Accounts.Adclients.List
import Gogol.AdExchangeSeller.Accounts.Alerts.List
import Gogol.AdExchangeSeller.Accounts.Customchannels.Get
import Gogol.AdExchangeSeller.Accounts.Customchannels.List
import Gogol.AdExchangeSeller.Accounts.Get
import Gogol.AdExchangeSeller.Accounts.List
import Gogol.AdExchangeSeller.Accounts.Metadata.Dimensions.List
import Gogol.AdExchangeSeller.Accounts.Metadata.Metrics.List
import Gogol.AdExchangeSeller.Accounts.Preferreddeals.Get
import Gogol.AdExchangeSeller.Accounts.Preferreddeals.List
import Gogol.AdExchangeSeller.Accounts.Reports.Generate
import Gogol.AdExchangeSeller.Accounts.Reports.Saved.Generate
import Gogol.AdExchangeSeller.Accounts.Reports.Saved.List
import Gogol.AdExchangeSeller.Accounts.Urlchannels.List
import Gogol.AdExchangeSeller.Types
