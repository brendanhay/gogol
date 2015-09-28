{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdSense.Host
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
module Network.Google.AdSense.Host
    (
    -- * REST Resources

    -- ** AdSense Host API
      AdSenseHost
    , adSenseHost
    , adSenseHostURL

    -- ** adsensehost.accounts.adclients.get
    , module Network.Google.API.AdSenseHost.Accounts.Adclients.Get

    -- ** adsensehost.accounts.adclients.list
    , module Network.Google.API.AdSenseHost.Accounts.Adclients.List

    -- ** adsensehost.accounts.adunits.delete
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.Delete

    -- ** adsensehost.accounts.adunits.get
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.Get

    -- ** adsensehost.accounts.adunits.getAdCode
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.GetAdCode

    -- ** adsensehost.accounts.adunits.insert
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.Insert

    -- ** adsensehost.accounts.adunits.list
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.List

    -- ** adsensehost.accounts.adunits.patch
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.Patch

    -- ** adsensehost.accounts.adunits.update
    , module Network.Google.API.AdSenseHost.Accounts.Adunits.Update

    -- ** adsensehost.accounts.reports.generate
    , module Network.Google.API.AdSenseHost.Accounts.Reports.Generate

    -- ** adsensehost.adclients.get
    , module Network.Google.API.AdSenseHost.Adclients.Get

    -- ** adsensehost.adclients.list
    , module Network.Google.API.AdSenseHost.Adclients.List

    -- ** adsensehost.associationsessions.start
    , module Network.Google.API.AdSenseHost.Associationsessions.Start

    -- ** adsensehost.associationsessions.verify
    , module Network.Google.API.AdSenseHost.Associationsessions.Verify

    -- ** adsensehost.customchannels.delete
    , module Network.Google.API.AdSenseHost.Customchannels.Delete

    -- ** adsensehost.customchannels.get
    , module Network.Google.API.AdSenseHost.Customchannels.Get

    -- ** adsensehost.customchannels.insert
    , module Network.Google.API.AdSenseHost.Customchannels.Insert

    -- ** adsensehost.customchannels.list
    , module Network.Google.API.AdSenseHost.Customchannels.List

    -- ** adsensehost.customchannels.patch
    , module Network.Google.API.AdSenseHost.Customchannels.Patch

    -- ** adsensehost.customchannels.update
    , module Network.Google.API.AdSenseHost.Customchannels.Update

    -- ** adsensehost.reports.generate
    , module Network.Google.API.AdSenseHost.Reports.Generate

    -- ** adsensehost.urlchannels.delete
    , module Network.Google.API.AdSenseHost.URLchannels.Delete

    -- ** adsensehost.urlchannels.insert
    , module Network.Google.API.AdSenseHost.URLchannels.Insert

    -- ** adsensehost.urlchannels.list
    , module Network.Google.API.AdSenseHost.URLchannels.List

    -- * Types

    -- ** ReportItemHeaders
    , ReportItemHeaders
    , reportItemHeaders
    , rihName
    , rihCurrency
    , rihType

    -- ** AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode

    -- ** AdUnitBackupOptionContentAdsSettings
    , AdUnitBackupOptionContentAdsSettings
    , adUnitBackupOptionContentAdsSettings
    , aubocasColor
    , aubocasUrl
    , aubocasType

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aKind
    , aItems

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** Alt
    , Alt (..)

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , ccKind
    , ccName
    , ccCode
    , ccId

    -- ** AdCode
    , AdCode
    , adCode
    , adKind
    , adAdCode

    -- ** UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

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

    -- ** AssociationsessionsStart'ProductCode
    , AssociationsessionsStart'ProductCode (..)

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
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- ** AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- ** AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

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

    -- ** UrlChannels
    , UrlChannels
    , urlChannels
    , urlcEtag
    , urlcNextPageToken
    , urlcKind
    , urlcItems

    -- ** CustomChannels
    , CustomChannels
    , customChannels
    , cEtag
    , cNextPageToken
    , cKind
    , cItems

    -- ** Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.API.AdSenseHost.Accounts.Adclients.Get
import           Network.Google.API.AdSenseHost.Accounts.Adclients.List
import           Network.Google.API.AdSenseHost.Accounts.Adunits.Delete
import           Network.Google.API.AdSenseHost.Accounts.Adunits.Get
import           Network.Google.API.AdSenseHost.Accounts.Adunits.GetAdCode
import           Network.Google.API.AdSenseHost.Accounts.Adunits.Insert
import           Network.Google.API.AdSenseHost.Accounts.Adunits.List
import           Network.Google.API.AdSenseHost.Accounts.Adunits.Patch
import           Network.Google.API.AdSenseHost.Accounts.Adunits.Update
import           Network.Google.API.AdSenseHost.Accounts.Reports.Generate
import           Network.Google.API.AdSenseHost.Adclients.Get
import           Network.Google.API.AdSenseHost.Adclients.List
import           Network.Google.API.AdSenseHost.Associationsessions.Start
import           Network.Google.API.AdSenseHost.Associationsessions.Verify
import           Network.Google.API.AdSenseHost.Customchannels.Delete
import           Network.Google.API.AdSenseHost.Customchannels.Get
import           Network.Google.API.AdSenseHost.Customchannels.Insert
import           Network.Google.API.AdSenseHost.Customchannels.List
import           Network.Google.API.AdSenseHost.Customchannels.Patch
import           Network.Google.API.AdSenseHost.Customchannels.Update
import           Network.Google.API.AdSenseHost.Reports.Generate
import           Network.Google.API.AdSenseHost.URLchannels.Delete
import           Network.Google.API.AdSenseHost.URLchannels.Insert
import           Network.Google.API.AdSenseHost.URLchannels.List
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdSenseHost =
     URLchannelsInsertAPI :<|> AccountsAdclientsGetAPI
       :<|> AssociationsessionsStartAPI
       :<|> CustomchannelsPatchAPI
       :<|> AccountsReportsGenerateAPI
       :<|> AccountsAdunitsGetAdCodeAPI
       :<|> AdclientsGetAPI
       :<|> AccountsAdunitsDeleteAPI
       :<|> AccountsAdclientsListAPI
       :<|> ReportsGenerateAPI
       :<|> AccountsAdunitsGetAPI
       :<|> CustomchannelsGetAPI
       :<|> URLchannelsListAPI
       :<|> AccountsAdunitsInsertAPI
       :<|> URLchannelsDeleteAPI
       :<|> AccountsAdunitsPatchAPI
       :<|> AssociationsessionsVerifyAPI
       :<|> AdclientsListAPI
       :<|> CustomchannelsDeleteAPI
       :<|> AccountsAdunitsListAPI
       :<|> AccountsAdunitsUpdateAPI
       :<|> CustomchannelsUpdateAPI
       :<|> CustomchannelsInsertAPI
       :<|> CustomchannelsListAPI

adSenseHost :: Proxy AdSenseHost
adSenseHost = Proxy
