{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdSenseHost
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Gives AdSense Hosts access to report generation, ad code generation, and
-- publisher management capabilities.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference>
module Network.Google.AdSenseHost
    (
    -- * API
      AdSenseHostAPI
    , adSenseHostAPI
    , adSenseHostURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdsensehostAccountsAdclientsGet
    , module Network.Google.Resource.AdSenseHost.Accounts.Adclients.Get

    -- ** AdsensehostAccountsAdclientsList
    , module Network.Google.Resource.AdSenseHost.Accounts.Adclients.List

    -- ** AdsensehostAccountsAdunitsDelete
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.Delete

    -- ** AdsensehostAccountsAdunitsGet
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.Get

    -- ** AdsensehostAccountsAdunitsGetAdCode
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.GetAdCode

    -- ** AdsensehostAccountsAdunitsInsert
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.Insert

    -- ** AdsensehostAccountsAdunitsList
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.List

    -- ** AdsensehostAccountsAdunitsPatch
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.Patch

    -- ** AdsensehostAccountsAdunitsUpdate
    , module Network.Google.Resource.AdSenseHost.Accounts.Adunits.Update

    -- ** AdsensehostAccountsGet
    , module Network.Google.Resource.AdSenseHost.Accounts.Get

    -- ** AdsensehostAccountsList
    , module Network.Google.Resource.AdSenseHost.Accounts.List

    -- ** AdsensehostAccountsReportsGenerate
    , module Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate

    -- ** AdsensehostAdclientsGet
    , module Network.Google.Resource.AdSenseHost.Adclients.Get

    -- ** AdsensehostAdclientsList
    , module Network.Google.Resource.AdSenseHost.Adclients.List

    -- ** AdsensehostAssociationsessionsStart
    , module Network.Google.Resource.AdSenseHost.Associationsessions.Start

    -- ** AdsensehostAssociationsessionsVerify
    , module Network.Google.Resource.AdSenseHost.Associationsessions.Verify

    -- ** AdsensehostCustomchannelsDelete
    , module Network.Google.Resource.AdSenseHost.Customchannels.Delete

    -- ** AdsensehostCustomchannelsGet
    , module Network.Google.Resource.AdSenseHost.Customchannels.Get

    -- ** AdsensehostCustomchannelsInsert
    , module Network.Google.Resource.AdSenseHost.Customchannels.Insert

    -- ** AdsensehostCustomchannelsList
    , module Network.Google.Resource.AdSenseHost.Customchannels.List

    -- ** AdsensehostCustomchannelsPatch
    , module Network.Google.Resource.AdSenseHost.Customchannels.Patch

    -- ** AdsensehostCustomchannelsUpdate
    , module Network.Google.Resource.AdSenseHost.Customchannels.Update

    -- ** AdsensehostReportsGenerate
    , module Network.Google.Resource.AdSenseHost.Reports.Generate

    -- ** AdsensehostURLchannelsDelete
    , module Network.Google.Resource.AdSenseHost.URLchannels.Delete

    -- ** AdsensehostURLchannelsInsert
    , module Network.Google.Resource.AdSenseHost.URLchannels.Insert

    -- ** AdsensehostURLchannelsList
    , module Network.Google.Resource.AdSenseHost.URLchannels.List

    -- * Types

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
    , asWebsiteUrl
    , asRedirectUrl

    -- ** AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aKind
    , aItems

    -- ** ReportHeaders
    , ReportHeaders
    , reportHeaders
    , rhName
    , rhCurrency
    , rhType

    -- ** AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

    -- ** AdUnit
    , AdUnit
    , adUnit
    , adStatus
    , adMobileContentAdsSettings
    , adKind
    , adCustomStyle
    , adName
    , adContentAdsSettings
    , adCode
    , adId

    -- ** URLChannels
    , URLChannels
    , uRLChannels
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

    -- ** AdsensehostAssociationsessionsStartProductCode
    , AdsensehostAssociationsessionsStartProductCode (..)

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

    -- ** AdClient
    , AdClient
    , adClient
    , aaKind
    , aaArcOptIn
    , aaSupportsReporting
    , aaId
    , aaProductCode

    -- ** AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboUrl
    , aucasboType

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
    , uRLChannel
    , urlcKind
    , urlcId
    , urlcUrlPattern

    -- ** AdCode
    , AdCode
    , adCode
    , addKind
    , addAdCode

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdSenseHost.Accounts.Adclients.Get
import           Network.Google.Resource.AdSenseHost.Accounts.Adclients.List
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.Delete
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.Get
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.GetAdCode
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.Insert
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.List
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.Patch
import           Network.Google.Resource.AdSenseHost.Accounts.Adunits.Update
import           Network.Google.Resource.AdSenseHost.Accounts.Get
import           Network.Google.Resource.AdSenseHost.Accounts.List
import           Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate
import           Network.Google.Resource.AdSenseHost.Adclients.Get
import           Network.Google.Resource.AdSenseHost.Adclients.List
import           Network.Google.Resource.AdSenseHost.Associationsessions.Start
import           Network.Google.Resource.AdSenseHost.Associationsessions.Verify
import           Network.Google.Resource.AdSenseHost.Customchannels.Delete
import           Network.Google.Resource.AdSenseHost.Customchannels.Get
import           Network.Google.Resource.AdSenseHost.Customchannels.Insert
import           Network.Google.Resource.AdSenseHost.Customchannels.List
import           Network.Google.Resource.AdSenseHost.Customchannels.Patch
import           Network.Google.Resource.AdSenseHost.Customchannels.Update
import           Network.Google.Resource.AdSenseHost.Reports.Generate
import           Network.Google.Resource.AdSenseHost.URLchannels.Delete
import           Network.Google.Resource.AdSenseHost.URLchannels.Insert
import           Network.Google.Resource.AdSenseHost.URLchannels.List

{- $resources
TODO
-}

type AdSenseHostAPI =
     AssociationsessionsVerifyResource :<|>
       AssociationsessionsStartResource
       :<|> AdclientsListResource
       :<|> AdclientsGetResource
       :<|> AccountsAdclientsListResource
       :<|> AccountsAdclientsGetResource
       :<|> AccountsReportsGenerateResource
       :<|> AccountsAdunitsInsertResource
       :<|> AccountsAdunitsListResource
       :<|> AccountsAdunitsPatchResource
       :<|> AccountsAdunitsGetResource
       :<|> AccountsAdunitsGetAdCodeResource
       :<|> AccountsAdunitsDeleteResource
       :<|> AccountsAdunitsUpdateResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
       :<|> ReportsGenerateResource
       :<|> UrlchannelsInsertResource
       :<|> UrlchannelsListResource
       :<|> UrlchannelsDeleteResource
       :<|> CustomchannelsInsertResource
       :<|> CustomchannelsListResource
       :<|> CustomchannelsPatchResource
       :<|> CustomchannelsGetResource
       :<|> CustomchannelsDeleteResource
       :<|> CustomchannelsUpdateResource

adSenseHostAPI :: Proxy AdSenseHostAPI
adSenseHostAPI = Proxy
