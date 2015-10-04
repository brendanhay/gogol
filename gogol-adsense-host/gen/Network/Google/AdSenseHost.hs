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
-- | Gives AdSense Hosts access to report generation, ad code generation, and
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

    -- ** AdsensehostAccountsAdClientsGet
    , module Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get

    -- ** AdsensehostAccountsAdClientsList
    , module Network.Google.Resource.AdSenseHost.Accounts.AdClients.List

    -- ** AdsensehostAccountsAdUnitsDelete
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete

    -- ** AdsensehostAccountsAdUnitsGet
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get

    -- ** AdsensehostAccountsAdUnitsGetAdCode
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.GetAdCode

    -- ** AdsensehostAccountsAdUnitsInsert
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert

    -- ** AdsensehostAccountsAdUnitsList
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List

    -- ** AdsensehostAccountsAdUnitsPatch
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Patch

    -- ** AdsensehostAccountsAdUnitsUpdate
    , module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update

    -- ** AdsensehostAccountsGet
    , module Network.Google.Resource.AdSenseHost.Accounts.Get

    -- ** AdsensehostAccountsList
    , module Network.Google.Resource.AdSenseHost.Accounts.List

    -- ** AdsensehostAccountsReportsGenerate
    , module Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate

    -- ** AdsensehostAdClientsGet
    , module Network.Google.Resource.AdSenseHost.AdClients.Get

    -- ** AdsensehostAdClientsList
    , module Network.Google.Resource.AdSenseHost.AdClients.List

    -- ** AdsensehostAssociationsessionsStart
    , module Network.Google.Resource.AdSenseHost.Associationsessions.Start

    -- ** AdsensehostAssociationsessionsVerify
    , module Network.Google.Resource.AdSenseHost.Associationsessions.Verify

    -- ** AdsensehostCustomChannelsDelete
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Delete

    -- ** AdsensehostCustomChannelsGet
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Get

    -- ** AdsensehostCustomChannelsInsert
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Insert

    -- ** AdsensehostCustomChannelsList
    , module Network.Google.Resource.AdSenseHost.CustomChannels.List

    -- ** AdsensehostCustomChannelsPatch
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Patch

    -- ** AdsensehostCustomChannelsUpdate
    , module Network.Google.Resource.AdSenseHost.CustomChannels.Update

    -- ** AdsensehostReportsGenerate
    , module Network.Google.Resource.AdSenseHost.Reports.Generate

    -- ** AdsensehostURLChannelsDelete
    , module Network.Google.Resource.AdSenseHost.URLChannels.Delete

    -- ** AdsensehostURLChannelsInsert
    , module Network.Google.Resource.AdSenseHost.URLChannels.Insert

    -- ** AdsensehostURLChannelsList
    , module Network.Google.Resource.AdSenseHost.URLChannels.List

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
    , asWebsiteURL
    , asRedirectURL

    -- ** AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- ** MobileContentAdsSettings
    , MobileContentAdsSettings
    , mobileContentAdsSettings
    , mcasSize
    , mcasScriptingLanguage
    , mcasMarkupLanguage
    , mcasType

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aKind
    , aItems

    -- ** BackupOption
    , BackupOption
    , backupOption
    , boColor
    , boURL
    , boType

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
    , auuStatus
    , auuMobileContentAdsSettings
    , auuKind
    , auuCustomStyle
    , auuName
    , auuContentAdsSettings
    , auuCode
    , auuId

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

    -- ** HeadersItem
    , HeadersItem
    , headersItem
    , hiName
    , hiCurrency
    , hiType

    -- ** AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode

    -- ** AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

    -- ** ContentAdsSettings
    , ContentAdsSettings
    , contentAdsSettings
    , casBackupOption
    , casSize
    , casType

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

    -- ** Font
    , Font
    , font
    , fSize
    , fFamily

    -- ** Colors
    , Colors
    , colors
    , cText
    , cURL
    , cBOrder
    , cTitle
    , cBackgRound

    -- ** ProductCode
    , ProductCode (..)
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get
import           Network.Google.Resource.AdSenseHost.Accounts.AdClients.List
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.GetAdCode
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Patch
import           Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update
import           Network.Google.Resource.AdSenseHost.Accounts.Get
import           Network.Google.Resource.AdSenseHost.Accounts.List
import           Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate
import           Network.Google.Resource.AdSenseHost.AdClients.Get
import           Network.Google.Resource.AdSenseHost.AdClients.List
import           Network.Google.Resource.AdSenseHost.Associationsessions.Start
import           Network.Google.Resource.AdSenseHost.Associationsessions.Verify
import           Network.Google.Resource.AdSenseHost.CustomChannels.Delete
import           Network.Google.Resource.AdSenseHost.CustomChannels.Get
import           Network.Google.Resource.AdSenseHost.CustomChannels.Insert
import           Network.Google.Resource.AdSenseHost.CustomChannels.List
import           Network.Google.Resource.AdSenseHost.CustomChannels.Patch
import           Network.Google.Resource.AdSenseHost.CustomChannels.Update
import           Network.Google.Resource.AdSenseHost.Reports.Generate
import           Network.Google.Resource.AdSenseHost.URLChannels.Delete
import           Network.Google.Resource.AdSenseHost.URLChannels.Insert
import           Network.Google.Resource.AdSenseHost.URLChannels.List

{- $resources
TODO
-}

type AdSenseHostAPI =
     AssociationsessionsVerifyResource :<|>
       AssociationsessionsStartResource
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

adSenseHostAPI :: Proxy AdSenseHostAPI
adSenseHostAPI = Proxy
