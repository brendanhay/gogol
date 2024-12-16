{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    (
    -- * Configuration
      adSenseHostService

    -- * OAuth Scopes
    , Adsensehost'FullControl

    -- * Resources

    -- ** adsensehost.accounts.adclients.get
    , AdSenseHostAccountsAdclientsGetResource
    , AdSenseHostAccountsAdclientsGet (..)
    , newAdSenseHostAccountsAdclientsGet

    -- ** adsensehost.accounts.adclients.list
    , AdSenseHostAccountsAdclientsListResource
    , AdSenseHostAccountsAdclientsList (..)
    , newAdSenseHostAccountsAdclientsList

    -- ** adsensehost.accounts.adunits.delete
    , AdSenseHostAccountsAdunitsDeleteResource
    , AdSenseHostAccountsAdunitsDelete (..)
    , newAdSenseHostAccountsAdunitsDelete

    -- ** adsensehost.accounts.adunits.get
    , AdSenseHostAccountsAdunitsGetResource
    , AdSenseHostAccountsAdunitsGet (..)
    , newAdSenseHostAccountsAdunitsGet

    -- ** adsensehost.accounts.adunits.getAdCode
    , AdSenseHostAccountsAdunitsGetAdCodeResource
    , AdSenseHostAccountsAdunitsGetAdCode (..)
    , newAdSenseHostAccountsAdunitsGetAdCode

    -- ** adsensehost.accounts.adunits.insert
    , AdSenseHostAccountsAdunitsInsertResource
    , AdSenseHostAccountsAdunitsInsert (..)
    , newAdSenseHostAccountsAdunitsInsert

    -- ** adsensehost.accounts.adunits.list
    , AdSenseHostAccountsAdunitsListResource
    , AdSenseHostAccountsAdunitsList (..)
    , newAdSenseHostAccountsAdunitsList

    -- ** adsensehost.accounts.adunits.patch
    , AdSenseHostAccountsAdunitsPatchResource
    , AdSenseHostAccountsAdunitsPatch (..)
    , newAdSenseHostAccountsAdunitsPatch

    -- ** adsensehost.accounts.adunits.update
    , AdSenseHostAccountsAdunitsUpdateResource
    , AdSenseHostAccountsAdunitsUpdate (..)
    , newAdSenseHostAccountsAdunitsUpdate

    -- ** adsensehost.accounts.get
    , AdSenseHostAccountsGetResource
    , AdSenseHostAccountsGet (..)
    , newAdSenseHostAccountsGet

    -- ** adsensehost.accounts.list
    , AdSenseHostAccountsListResource
    , AdSenseHostAccountsList (..)
    , newAdSenseHostAccountsList

    -- ** adsensehost.accounts.reports.generate
    , AdSenseHostAccountsReportsGenerateResource
    , AdSenseHostAccountsReportsGenerate (..)
    , newAdSenseHostAccountsReportsGenerate

    -- ** adsensehost.adclients.get
    , AdSenseHostAdclientsGetResource
    , AdSenseHostAdclientsGet (..)
    , newAdSenseHostAdclientsGet

    -- ** adsensehost.adclients.list
    , AdSenseHostAdclientsListResource
    , AdSenseHostAdclientsList (..)
    , newAdSenseHostAdclientsList

    -- ** adsensehost.associationsessions.start
    , AdSenseHostAssociationsessionsStartResource
    , AdSenseHostAssociationsessionsStart (..)
    , newAdSenseHostAssociationsessionsStart

    -- ** adsensehost.associationsessions.verify
    , AdSenseHostAssociationsessionsVerifyResource
    , AdSenseHostAssociationsessionsVerify (..)
    , newAdSenseHostAssociationsessionsVerify

    -- ** adsensehost.customchannels.delete
    , AdSenseHostCustomchannelsDeleteResource
    , AdSenseHostCustomchannelsDelete (..)
    , newAdSenseHostCustomchannelsDelete

    -- ** adsensehost.customchannels.get
    , AdSenseHostCustomchannelsGetResource
    , AdSenseHostCustomchannelsGet (..)
    , newAdSenseHostCustomchannelsGet

    -- ** adsensehost.customchannels.insert
    , AdSenseHostCustomchannelsInsertResource
    , AdSenseHostCustomchannelsInsert (..)
    , newAdSenseHostCustomchannelsInsert

    -- ** adsensehost.customchannels.list
    , AdSenseHostCustomchannelsListResource
    , AdSenseHostCustomchannelsList (..)
    , newAdSenseHostCustomchannelsList

    -- ** adsensehost.customchannels.patch
    , AdSenseHostCustomchannelsPatchResource
    , AdSenseHostCustomchannelsPatch (..)
    , newAdSenseHostCustomchannelsPatch

    -- ** adsensehost.customchannels.update
    , AdSenseHostCustomchannelsUpdateResource
    , AdSenseHostCustomchannelsUpdate (..)
    , newAdSenseHostCustomchannelsUpdate

    -- ** adsensehost.reports.generate
    , AdSenseHostReportsGenerateResource
    , AdSenseHostReportsGenerate (..)
    , newAdSenseHostReportsGenerate

    -- ** adsensehost.urlchannels.delete
    , AdSenseHostUrlchannelsDeleteResource
    , AdSenseHostUrlchannelsDelete (..)
    , newAdSenseHostUrlchannelsDelete

    -- ** adsensehost.urlchannels.insert
    , AdSenseHostUrlchannelsInsertResource
    , AdSenseHostUrlchannelsInsert (..)
    , newAdSenseHostUrlchannelsInsert

    -- ** adsensehost.urlchannels.list
    , AdSenseHostUrlchannelsListResource
    , AdSenseHostUrlchannelsList (..)
    , newAdSenseHostUrlchannelsList

    -- * Types

    -- ** Account
    , Account (..)
    , newAccount

    -- ** Accounts
    , Accounts (..)
    , newAccounts

    -- ** AdClient
    , AdClient (..)
    , newAdClient

    -- ** AdClients
    , AdClients (..)
    , newAdClients

    -- ** AdCode
    , AdCode (..)
    , newAdCode

    -- ** AdStyle
    , AdStyle (..)
    , newAdStyle

    -- ** AdStyle_Colors
    , AdStyle_Colors (..)
    , newAdStyle_Colors

    -- ** AdStyle_Font
    , AdStyle_Font (..)
    , newAdStyle_Font

    -- ** AdUnit
    , AdUnit (..)
    , newAdUnit

    -- ** AdUnit_ContentAdsSettings
    , AdUnit_ContentAdsSettings (..)
    , newAdUnit_ContentAdsSettings

    -- ** AdUnit_ContentAdsSettings_BackupOption
    , AdUnit_ContentAdsSettings_BackupOption (..)
    , newAdUnit_ContentAdsSettings_BackupOption

    -- ** AdUnit_MobileContentAdsSettings
    , AdUnit_MobileContentAdsSettings (..)
    , newAdUnit_MobileContentAdsSettings

    -- ** AdUnits
    , AdUnits (..)
    , newAdUnits

    -- ** AssociationSession
    , AssociationSession (..)
    , newAssociationSession

    -- ** CustomChannel
    , CustomChannel (..)
    , newCustomChannel

    -- ** CustomChannels
    , CustomChannels (..)
    , newCustomChannels

    -- ** Report
    , Report (..)
    , newReport

    -- ** Report_HeadersItem
    , Report_HeadersItem (..)
    , newReport_HeadersItem

    -- ** UrlChannel
    , UrlChannel (..)
    , newUrlChannel

    -- ** UrlChannels
    , UrlChannels (..)
    , newUrlChannels

    -- ** AssociationsessionsStartProductCode
    , AssociationsessionsStartProductCode (..)
    ) where

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
