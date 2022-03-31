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
-- Module      : Gogol.AdSenseHost.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdSenseHost.Types
  ( -- * Configuration
    adSenseHostService,

    -- * OAuth Scopes
    Adsensehost'FullControl,

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

    -- ** AdCode
    AdCode (..),
    newAdCode,

    -- ** AdStyle
    AdStyle (..),
    newAdStyle,

    -- ** AdStyle_Colors
    AdStyle_Colors (..),
    newAdStyle_Colors,

    -- ** AdStyle_Font
    AdStyle_Font (..),
    newAdStyle_Font,

    -- ** AdUnit
    AdUnit (..),
    newAdUnit,

    -- ** AdUnit_ContentAdsSettings
    AdUnit_ContentAdsSettings (..),
    newAdUnit_ContentAdsSettings,

    -- ** AdUnit_ContentAdsSettings_BackupOption
    AdUnit_ContentAdsSettings_BackupOption (..),
    newAdUnit_ContentAdsSettings_BackupOption,

    -- ** AdUnit_MobileContentAdsSettings
    AdUnit_MobileContentAdsSettings (..),
    newAdUnit_MobileContentAdsSettings,

    -- ** AdUnits
    AdUnits (..),
    newAdUnits,

    -- ** AssociationSession
    AssociationSession (..),
    newAssociationSession,

    -- ** CustomChannel
    CustomChannel (..),
    newCustomChannel,

    -- ** CustomChannels
    CustomChannels (..),
    newCustomChannels,

    -- ** Report
    Report (..),
    newReport,

    -- ** Report_HeadersItem
    Report_HeadersItem (..),
    newReport_HeadersItem,

    -- ** UrlChannel
    UrlChannel (..),
    newUrlChannel,

    -- ** UrlChannels
    UrlChannels (..),
    newUrlChannels,

    -- ** AssociationsessionsStartProductCode
    AssociationsessionsStartProductCode (..),
  )
where

import Gogol.AdSenseHost.Internal.Product
import Gogol.AdSenseHost.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v4.1@ of the AdSense Host API. This contains the host and root path used as a starting point for constructing service requests.
adSenseHostService :: Core.ServiceConfig
adSenseHostService =
  Core.defaultService
    (Core.ServiceId "adsensehost:v4.1")
    "www.googleapis.com"

-- | View and manage your AdSense host data and associated accounts
type Adsensehost'FullControl = "https://www.googleapis.com/auth/adsensehost"
