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
-- Module      : Network.Google.AdExchangeSeller.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AdExchangeSeller.Types
  ( -- * Configuration
    adExchangeSellerService,

    -- * OAuth Scopes
    adexchangeSellerScope,
    adexchangeSellerReadOnlyScope,

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

import Network.Google.AdExchangeSeller.Internal.Product
import Network.Google.AdExchangeSeller.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2.0@ of the Ad Exchange Seller API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeSellerService :: Core.ServiceConfig
adExchangeSellerService =
  Core.defaultService
    (Core.ServiceId "adexchangeseller:v2.0")
    "www.googleapis.com"

-- | View and manage your Ad Exchange data
adexchangeSellerScope :: Core.Proxy '["https://www.googleapis.com/auth/adexchange.seller"]
adexchangeSellerScope = Core.Proxy

-- | View your Ad Exchange data
adexchangeSellerReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/adexchange.seller.readonly"]
adexchangeSellerReadOnlyScope = Core.Proxy
