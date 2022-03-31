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
-- Module      : Gogol.AdSenseHost
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates performance reports, generates ad codes, and provides publisher management capabilities for AdSense Hosts.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference>
module Gogol.AdSenseHost
  ( -- * Configuration
    adSenseHostService,

    -- * OAuth Scopes
    Adsensehost'FullControl,

    -- * Resources

    -- ** adsensehost.accounts.adclients.get
    AdSenseHostAccountsAdclientsGetResource,
    newAdSenseHostAccountsAdclientsGet,
    AdSenseHostAccountsAdclientsGet,

    -- ** adsensehost.accounts.adclients.list
    AdSenseHostAccountsAdclientsListResource,
    newAdSenseHostAccountsAdclientsList,
    AdSenseHostAccountsAdclientsList,

    -- ** adsensehost.accounts.adunits.delete
    AdSenseHostAccountsAdunitsDeleteResource,
    newAdSenseHostAccountsAdunitsDelete,
    AdSenseHostAccountsAdunitsDelete,

    -- ** adsensehost.accounts.adunits.get
    AdSenseHostAccountsAdunitsGetResource,
    newAdSenseHostAccountsAdunitsGet,
    AdSenseHostAccountsAdunitsGet,

    -- ** adsensehost.accounts.adunits.getAdCode
    AdSenseHostAccountsAdunitsGetAdCodeResource,
    newAdSenseHostAccountsAdunitsGetAdCode,
    AdSenseHostAccountsAdunitsGetAdCode,

    -- ** adsensehost.accounts.adunits.insert
    AdSenseHostAccountsAdunitsInsertResource,
    newAdSenseHostAccountsAdunitsInsert,
    AdSenseHostAccountsAdunitsInsert,

    -- ** adsensehost.accounts.adunits.list
    AdSenseHostAccountsAdunitsListResource,
    newAdSenseHostAccountsAdunitsList,
    AdSenseHostAccountsAdunitsList,

    -- ** adsensehost.accounts.adunits.patch
    AdSenseHostAccountsAdunitsPatchResource,
    newAdSenseHostAccountsAdunitsPatch,
    AdSenseHostAccountsAdunitsPatch,

    -- ** adsensehost.accounts.adunits.update
    AdSenseHostAccountsAdunitsUpdateResource,
    newAdSenseHostAccountsAdunitsUpdate,
    AdSenseHostAccountsAdunitsUpdate,

    -- ** adsensehost.accounts.get
    AdSenseHostAccountsGetResource,
    newAdSenseHostAccountsGet,
    AdSenseHostAccountsGet,

    -- ** adsensehost.accounts.list
    AdSenseHostAccountsListResource,
    newAdSenseHostAccountsList,
    AdSenseHostAccountsList,

    -- ** adsensehost.accounts.reports.generate
    AdSenseHostAccountsReportsGenerateResource,
    newAdSenseHostAccountsReportsGenerate,
    AdSenseHostAccountsReportsGenerate,

    -- ** adsensehost.adclients.get
    AdSenseHostAdclientsGetResource,
    newAdSenseHostAdclientsGet,
    AdSenseHostAdclientsGet,

    -- ** adsensehost.adclients.list
    AdSenseHostAdclientsListResource,
    newAdSenseHostAdclientsList,
    AdSenseHostAdclientsList,

    -- ** adsensehost.associationsessions.start
    AdSenseHostAssociationsessionsStartResource,
    newAdSenseHostAssociationsessionsStart,
    AdSenseHostAssociationsessionsStart,

    -- ** adsensehost.associationsessions.verify
    AdSenseHostAssociationsessionsVerifyResource,
    newAdSenseHostAssociationsessionsVerify,
    AdSenseHostAssociationsessionsVerify,

    -- ** adsensehost.customchannels.delete
    AdSenseHostCustomchannelsDeleteResource,
    newAdSenseHostCustomchannelsDelete,
    AdSenseHostCustomchannelsDelete,

    -- ** adsensehost.customchannels.get
    AdSenseHostCustomchannelsGetResource,
    newAdSenseHostCustomchannelsGet,
    AdSenseHostCustomchannelsGet,

    -- ** adsensehost.customchannels.insert
    AdSenseHostCustomchannelsInsertResource,
    newAdSenseHostCustomchannelsInsert,
    AdSenseHostCustomchannelsInsert,

    -- ** adsensehost.customchannels.list
    AdSenseHostCustomchannelsListResource,
    newAdSenseHostCustomchannelsList,
    AdSenseHostCustomchannelsList,

    -- ** adsensehost.customchannels.patch
    AdSenseHostCustomchannelsPatchResource,
    newAdSenseHostCustomchannelsPatch,
    AdSenseHostCustomchannelsPatch,

    -- ** adsensehost.customchannels.update
    AdSenseHostCustomchannelsUpdateResource,
    newAdSenseHostCustomchannelsUpdate,
    AdSenseHostCustomchannelsUpdate,

    -- ** adsensehost.reports.generate
    AdSenseHostReportsGenerateResource,
    newAdSenseHostReportsGenerate,
    AdSenseHostReportsGenerate,

    -- ** adsensehost.urlchannels.delete
    AdSenseHostUrlchannelsDeleteResource,
    newAdSenseHostUrlchannelsDelete,
    AdSenseHostUrlchannelsDelete,

    -- ** adsensehost.urlchannels.insert
    AdSenseHostUrlchannelsInsertResource,
    newAdSenseHostUrlchannelsInsert,
    AdSenseHostUrlchannelsInsert,

    -- ** adsensehost.urlchannels.list
    AdSenseHostUrlchannelsListResource,
    newAdSenseHostUrlchannelsList,
    AdSenseHostUrlchannelsList,

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

import Gogol.AdSenseHost.Accounts.Adclients.Get
import Gogol.AdSenseHost.Accounts.Adclients.List
import Gogol.AdSenseHost.Accounts.Adunits.Delete
import Gogol.AdSenseHost.Accounts.Adunits.Get
import Gogol.AdSenseHost.Accounts.Adunits.GetAdCode
import Gogol.AdSenseHost.Accounts.Adunits.Insert
import Gogol.AdSenseHost.Accounts.Adunits.List
import Gogol.AdSenseHost.Accounts.Adunits.Patch
import Gogol.AdSenseHost.Accounts.Adunits.Update
import Gogol.AdSenseHost.Accounts.Get
import Gogol.AdSenseHost.Accounts.List
import Gogol.AdSenseHost.Accounts.Reports.Generate
import Gogol.AdSenseHost.Adclients.Get
import Gogol.AdSenseHost.Adclients.List
import Gogol.AdSenseHost.Associationsessions.Start
import Gogol.AdSenseHost.Associationsessions.Verify
import Gogol.AdSenseHost.Customchannels.Delete
import Gogol.AdSenseHost.Customchannels.Get
import Gogol.AdSenseHost.Customchannels.Insert
import Gogol.AdSenseHost.Customchannels.List
import Gogol.AdSenseHost.Customchannels.Patch
import Gogol.AdSenseHost.Customchannels.Update
import Gogol.AdSenseHost.Reports.Generate
import Gogol.AdSenseHost.Types
import Gogol.AdSenseHost.Urlchannels.Delete
import Gogol.AdSenseHost.Urlchannels.Insert
import Gogol.AdSenseHost.Urlchannels.List
