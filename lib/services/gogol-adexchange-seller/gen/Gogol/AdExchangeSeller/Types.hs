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
-- Module      : Gogol.AdExchangeSeller.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdExchangeSeller.Types
  ( -- * Configuration
    adExchangeSellerService,

    -- * OAuth Scopes
    Adexchange'Seller,
    Adexchange'Seller'Readonly,

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

import Gogol.AdExchangeSeller.Internal.Product
import Gogol.AdExchangeSeller.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v2.0@ of the Ad Exchange Seller API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeSellerService :: Core.ServiceConfig
adExchangeSellerService =
  Core.defaultService
    (Core.ServiceId "adexchangeseller:v2.0")
    "www.googleapis.com"

-- | View and manage your Ad Exchange data
type Adexchange'Seller = "https://www.googleapis.com/auth/adexchange.seller"

-- | View your Ad Exchange data
type Adexchange'Seller'Readonly = "https://www.googleapis.com/auth/adexchange.seller.readonly"
