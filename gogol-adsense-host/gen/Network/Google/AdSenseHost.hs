{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdSenseHost
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates performance reports, generates ad codes, and provides
-- publisher management capabilities for AdSense Hosts.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference>
module Network.Google.AdSenseHost
    (
    -- * Service Configuration
      adSenseHostService

    -- * OAuth Scopes
    , adSenseHostScope

    -- * API Declaration
    , AdSenseHostAPI

    -- * Resources

    -- ** adsensehost.accounts.adclients.get
    , module Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get

    -- ** adsensehost.accounts.adclients.list
    , module Network.Google.Resource.AdSenseHost.Accounts.AdClients.List

    -- ** adsensehost.accounts.adunits.delete
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete

    -- ** adsensehost.accounts.adunits.get
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get

    -- ** adsensehost.accounts.adunits.getAdCode
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.GetAdCode

    -- ** adsensehost.accounts.adunits.insert
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert

    -- ** adsensehost.accounts.adunits.list
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List

    -- ** adsensehost.accounts.adunits.patch
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Patch

    -- ** adsensehost.accounts.adunits.update
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update

    -- ** adsensehost.accounts.get
    , module Network.Google.Resource.AdSenseHost.Accounts.Get

    -- ** adsensehost.accounts.list
    , module Network.Google.Resource.AdSenseHost.Accounts.List

    -- ** adsensehost.accounts.reports.generate
    , module Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate

    -- ** adsensehost.adclients.get
    , module Network.Google.Resource.AdSenseHost.AdClients.Get

    -- ** adsensehost.adclients.list
    , module Network.Google.Resource.AdSenseHost.AdClients.List

    -- ** adsensehost.associationsessions.start
    , module Network.Google.Resource.AdSenseHost.AssociationSessions.Start

    -- ** adsensehost.associationsessions.verify
    , module Network.Google.Resource.AdSenseHost.AssociationSessions.Verify

    -- ** adsensehost.customchannels.delete
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Delete

    -- ** adsensehost.customchannels.get
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Get

    -- ** adsensehost.customchannels.insert
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Insert

    -- ** adsensehost.customchannels.list
    , module Network.Google.Resource.AdSenseHost.CustomChannels.List

    -- ** adsensehost.customchannels.patch
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Patch

    -- ** adsensehost.customchannels.update
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Update

    -- ** adsensehost.reports.generate
    , module Network.Google.Resource.AdSenseHost.Reports.Generate

    -- ** adsensehost.urlchannels.delete
    , module Network.Google.Resource.AdSenseHost.URLChannels.Delete

    -- ** adsensehost.urlchannels.insert
    , module Network.Google.Resource.AdSenseHost.URLChannels.Insert

    -- ** adsensehost.urlchannels.list
    , module Network.Google.Resource.AdSenseHost.URLChannels.List

    -- * Types

    -- ** AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- ** AssociationSession
    , AssociationSession
    , associationSession
    , asStatus
    , asKind
    , asWebsiteLocale
    , asUserLocale
    , asAccountId
    , asProductCodes
    , asId
    , asWebsiteURL
    , asRedirectURL

    -- ** AssociationSessionsStartProductCode
    , AssociationSessionsStartProductCode (..)

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aKind
    , aItems

    -- ** AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

    -- ** URLChannels
    , URLChannels
    , urlChannels
    , ucEtag
    , ucNextPageToken
    , ucKind
    , ucItems

    -- ** CustomChannels
    , CustomChannels
    , customChannels
    , ccEtag
    , ccNextPageToken
    , ccKind
    , ccItems

    -- ** AdUnit
    , AdUnit
    , adUnit
    , auuStatus
    , auuMobileContentAdsSettings
    , auuKind
    , auuCustomStyle
    , auuName
    , auuContentAdsSettings
    , auuCode
    , auuId

    -- ** Report
    , Report
    , report
    , rKind
    , rAverages
    , rWarnings
    , rRows
    , rTotals
    , rHeaders
    , rTotalMatchedRows

    -- ** AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- ** Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascURL
    , ascBOrder
    , ascTitle
    , ascBackgRound

    -- ** AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboURL
    , aucasboType

    -- ** AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode

    -- ** ReportHeadersItem
    , ReportHeadersItem
    , reportHeadersItem
    , rhiName
    , rhiCurrency
    , rhiType

    -- ** AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , cKind
    , cName
    , cCode
    , cId

    -- ** URLChannel
    , URLChannel
    , urlChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- ** AdCode
    , AdCode
    , adCode
    , aaKind
    , aaAdCode

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType
    ) where

import Network.Google.Prelude
import Network.Google.AdSenseHost.Types
import Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get
import Network.Google.Resource.AdSenseHost.Accounts.AdClients.List
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.GetAdCode
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Patch
import Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update
import Network.Google.Resource.AdSenseHost.Accounts.Get
import Network.Google.Resource.AdSenseHost.Accounts.List
import Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate
import Network.Google.Resource.AdSenseHost.AdClients.Get
import Network.Google.Resource.AdSenseHost.AdClients.List
import Network.Google.Resource.AdSenseHost.AssociationSessions.Start
import Network.Google.Resource.AdSenseHost.AssociationSessions.Verify
import Network.Google.Resource.AdSenseHost.CustomChannels.Delete
import Network.Google.Resource.AdSenseHost.CustomChannels.Get
import Network.Google.Resource.AdSenseHost.CustomChannels.Insert
import Network.Google.Resource.AdSenseHost.CustomChannels.List
import Network.Google.Resource.AdSenseHost.CustomChannels.Patch
import Network.Google.Resource.AdSenseHost.CustomChannels.Update
import Network.Google.Resource.AdSenseHost.Reports.Generate
import Network.Google.Resource.AdSenseHost.URLChannels.Delete
import Network.Google.Resource.AdSenseHost.URLChannels.Insert
import Network.Google.Resource.AdSenseHost.URLChannels.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the AdSense Host API service.
type AdSenseHostAPI =
     AssociationSessionsVerifyResource :<|>
       AssociationSessionsStartResource
       :<|> AdClientsListResource
       :<|> AdClientsGetResource
       :<|> AccountsAdClientsListResource
       :<|> AccountsAdClientsGetResource
       :<|> AccountsReportsGenerateResource
       :<|> AccountsAdUnitsInsertResource
       :<|> AccountsAdUnitsListResource
       :<|> AccountsAdUnitsPatchResource
       :<|> AccountsAdUnitsGetResource
       :<|> AccountsAdUnitsGetAdCodeResource
       :<|> AccountsAdUnitsDeleteResource
       :<|> AccountsAdUnitsUpdateResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
       :<|> ReportsGenerateResource
       :<|> URLChannelsInsertResource
       :<|> URLChannelsListResource
       :<|> URLChannelsDeleteResource
       :<|> CustomChannelsInsertResource
       :<|> CustomChannelsListResource
       :<|> CustomChannelsPatchResource
       :<|> CustomChannelsGetResource
       :<|> CustomChannelsDeleteResource
       :<|> CustomChannelsUpdateResource
