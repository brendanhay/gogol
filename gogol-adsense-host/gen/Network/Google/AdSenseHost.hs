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
    , module AdSenseHost.Accounts.Adclients.Get

    -- ** AdsensehostAccountsAdclientsList
    , module AdSenseHost.Accounts.Adclients.List

    -- ** AdsensehostAccountsAdunitsDelete
    , module AdSenseHost.Accounts.Adunits.Delete

    -- ** AdsensehostAccountsAdunitsGet
    , module AdSenseHost.Accounts.Adunits.Get

    -- ** AdsensehostAccountsAdunitsGetAdCode
    , module AdSenseHost.Accounts.Adunits.GetAdCode

    -- ** AdsensehostAccountsAdunitsInsert
    , module AdSenseHost.Accounts.Adunits.Insert

    -- ** AdsensehostAccountsAdunitsList
    , module AdSenseHost.Accounts.Adunits.List

    -- ** AdsensehostAccountsAdunitsPatch
    , module AdSenseHost.Accounts.Adunits.Patch

    -- ** AdsensehostAccountsAdunitsUpdate
    , module AdSenseHost.Accounts.Adunits.Update

    -- ** AdsensehostAccountsGet
    , module AdSenseHost.Accounts.Get

    -- ** AdsensehostAccountsList
    , module AdSenseHost.Accounts.List

    -- ** AdsensehostAccountsReportsGenerate
    , module AdSenseHost.Accounts.Reports.Generate

    -- ** AdsensehostAdclientsGet
    , module AdSenseHost.Adclients.Get

    -- ** AdsensehostAdclientsList
    , module AdSenseHost.Adclients.List

    -- ** AdsensehostAssociationsessionsStart
    , module AdSenseHost.Associationsessions.Start

    -- ** AdsensehostAssociationsessionsVerify
    , module AdSenseHost.Associationsessions.Verify

    -- ** AdsensehostCustomchannelsDelete
    , module AdSenseHost.Customchannels.Delete

    -- ** AdsensehostCustomchannelsGet
    , module AdSenseHost.Customchannels.Get

    -- ** AdsensehostCustomchannelsInsert
    , module AdSenseHost.Customchannels.Insert

    -- ** AdsensehostCustomchannelsList
    , module AdSenseHost.Customchannels.List

    -- ** AdsensehostCustomchannelsPatch
    , module AdSenseHost.Customchannels.Patch

    -- ** AdsensehostCustomchannelsUpdate
    , module AdSenseHost.Customchannels.Update

    -- ** AdsensehostReportsGenerate
    , module AdSenseHost.Reports.Generate

    -- ** AdsensehostURLchannelsDelete
    , module AdSenseHost.URLchannels.Delete

    -- ** AdsensehostURLchannelsInsert
    , module AdSenseHost.URLchannels.Insert

    -- ** AdsensehostURLchannelsList
    , module AdSenseHost.URLchannels.List

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

    -- ** Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId

    -- ** AdClient
    , AdClient
    , adClient
    , aaKind
    , aaArcOptIn
    , aaSupportsReporting
    , aaId
    , aaProductCode

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
     Associationsessions :<|> Adclients :<|> Accounts :<|>
       Reports
       :<|> URLchannels
       :<|> Customchannels

adSenseHostAPI :: Proxy AdSenseHostAPI
adSenseHostAPI = Proxy
