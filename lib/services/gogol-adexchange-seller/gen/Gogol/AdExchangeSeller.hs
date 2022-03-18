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
-- Module      : Gogol.AdExchangeSeller
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    adexchangeSellerScope,
    adexchangeSellerReadOnlyScope,

    -- * Resources

    -- ** adexchangeseller.accounts.adclients.list
    AdExchangeSellerAccountsAdclientsListResource,
    newAdExchangeSellerAccountsAdclientsList,
    AdExchangeSellerAccountsAdclientsList,

    -- ** adexchangeseller.accounts.alerts.list
    AdExchangeSellerAccountsAlertsListResource,
    newAdExchangeSellerAccountsAlertsList,
    AdExchangeSellerAccountsAlertsList,

    -- ** adexchangeseller.accounts.customchannels.get
    AdExchangeSellerAccountsCustomchannelsGetResource,
    newAdExchangeSellerAccountsCustomchannelsGet,
    AdExchangeSellerAccountsCustomchannelsGet,

    -- ** adexchangeseller.accounts.customchannels.list
    AdExchangeSellerAccountsCustomchannelsListResource,
    newAdExchangeSellerAccountsCustomchannelsList,
    AdExchangeSellerAccountsCustomchannelsList,

    -- ** adexchangeseller.accounts.get
    AdExchangeSellerAccountsGetResource,
    newAdExchangeSellerAccountsGet,
    AdExchangeSellerAccountsGet,

    -- ** adexchangeseller.accounts.list
    AdExchangeSellerAccountsListResource,
    newAdExchangeSellerAccountsList,
    AdExchangeSellerAccountsList,

    -- ** adexchangeseller.accounts.metadata.dimensions.list
    AdExchangeSellerAccountsMetadataDimensionsListResource,
    newAdExchangeSellerAccountsMetadataDimensionsList,
    AdExchangeSellerAccountsMetadataDimensionsList,

    -- ** adexchangeseller.accounts.metadata.metrics.list
    AdExchangeSellerAccountsMetadataMetricsListResource,
    newAdExchangeSellerAccountsMetadataMetricsList,
    AdExchangeSellerAccountsMetadataMetricsList,

    -- ** adexchangeseller.accounts.preferreddeals.get
    AdExchangeSellerAccountsPreferreddealsGetResource,
    newAdExchangeSellerAccountsPreferreddealsGet,
    AdExchangeSellerAccountsPreferreddealsGet,

    -- ** adexchangeseller.accounts.preferreddeals.list
    AdExchangeSellerAccountsPreferreddealsListResource,
    newAdExchangeSellerAccountsPreferreddealsList,
    AdExchangeSellerAccountsPreferreddealsList,

    -- ** adexchangeseller.accounts.reports.generate
    AdExchangeSellerAccountsReportsGenerateResource,
    newAdExchangeSellerAccountsReportsGenerate,
    AdExchangeSellerAccountsReportsGenerate,

    -- ** adexchangeseller.accounts.reports.saved.generate
    AdExchangeSellerAccountsReportsSavedGenerateResource,
    newAdExchangeSellerAccountsReportsSavedGenerate,
    AdExchangeSellerAccountsReportsSavedGenerate,

    -- ** adexchangeseller.accounts.reports.saved.list
    AdExchangeSellerAccountsReportsSavedListResource,
    newAdExchangeSellerAccountsReportsSavedList,
    AdExchangeSellerAccountsReportsSavedList,

    -- ** adexchangeseller.accounts.urlchannels.list
    AdExchangeSellerAccountsUrlchannelsListResource,
    newAdExchangeSellerAccountsUrlchannelsList,
    AdExchangeSellerAccountsUrlchannelsList,

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
