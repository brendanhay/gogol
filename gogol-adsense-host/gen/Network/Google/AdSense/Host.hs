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
    -- * Resources
      AdSenseHost
    , AssociationsessionsAPI
    , AssociationsessionsVerify
    , AssociationsessionsStart
    , AdclientsAPI
    , AdclientsList
    , AdclientsGet
    , AccountsAPI
    , AdclientsAPI
    , AdclientsList
    , AdclientsGet
    , ReportsAPI
    , ReportsGenerate
    , AdunitsAPI
    , AdunitsInsert
    , AdunitsList
    , AdunitsPatch
    , AdunitsGet
    , AdunitsGetAdCode
    , AdunitsDelete
    , AdunitsUpdate
    , ReportsAPI
    , ReportsGenerate
    , UrlchannelsAPI
    , UrlchannelsInsert
    , UrlchannelsList
    , UrlchannelsDelete
    , CustomchannelsAPI
    , CustomchannelsInsert
    , CustomchannelsList
    , CustomchannelsPatch
    , CustomchannelsGet
    , CustomchannelsDelete
    , CustomchannelsUpdate

    -- * Types

    -- ** Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aKind
    , aItems

    -- ** AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode

    -- ** AdClients
    , AdClients
    , adClients
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- ** AdCode
    , AdCode
    , adCode
    , adKind
    , adAdCode

    -- ** AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

    -- ** AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

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

    -- ** AdUnitBackupOptionContentAdsSettings
    , AdUnitBackupOptionContentAdsSettings
    , adUnitBackupOptionContentAdsSettings
    , aubocasColor
    , aubocasUrl
    , aubocasType

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

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

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , ccKind
    , ccName
    , ccCode
    , ccId

    -- ** CustomChannels
    , CustomChannels
    , customChannels
    , cEtag
    , cNextPageToken
    , cKind
    , cItems

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

    -- ** ReportItemHeaders
    , ReportItemHeaders
    , reportItemHeaders
    , rihName
    , rihCurrency
    , rihType

    -- ** UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

    -- ** UrlChannels
    , UrlChannels
    , urlChannels
    , urlcEtag
    , urlcNextPageToken
    , urlcKind
    , urlcItems
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdSenseHost =
     AssociationsessionsAPI :<|> AdclientsAPI :<|>
       AccountsAPI
       :<|> ReportsAPI
       :<|> UrlchannelsAPI
       :<|> CustomchannelsAPI

type AssociationsessionsAPI =
     AssociationsessionsVerify :<|>
       AssociationsessionsStart

-- | Verify an association session after the association callback returns
-- from AdSense signup.
type AssociationsessionsVerify =
     "adsensehost" :> "v4.1" :> "associationsessions" :>
       "verify"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Create an association session for initiating an association with an
-- AdSense user.
type AssociationsessionsStart =
     "adsensehost" :> "v4.1" :> "associationsessions" :>
       "start"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "websiteLocale" Text
       :> QueryParam "userLocale" Text
       :> QueryParam "key" Text
       :> QueryParam "websiteUrl" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "productCode" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdclientsAPI = AdclientsList :<|> AdclientsGet

-- | List all host ad clients in this AdSense account.
type AdclientsList =
     "adsensehost" :> "v4.1" :> "adclients" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get information about one of the ad clients in the Host AdSense account.
type AdclientsGet =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountsAPI =
     AdclientsAPI :<|> ReportsAPI :<|> AdunitsAPI

type AdclientsAPI = AdclientsList :<|> AdclientsGet

-- | List all hosted ad clients in the specified hosted account.
type AdclientsList =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
type AdclientsGet =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = ReportsGenerate

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
type ReportsGenerate =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "reports"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "dimension" Text
       :> QueryParam "locale" Text
       :> QueryParam "endDate" Text
       :> QueryParam "startDate" Text
       :> QueryParam "metric" Text
       :> QueryParam "key" Text
       :> QueryParam "sort" Text
       :> QueryParam "filter" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdunitsAPI =
     AdunitsInsert :<|> AdunitsList :<|> AdunitsPatch :<|>
       AdunitsGet
       :<|> AdunitsGetAdCode
       :<|> AdunitsDelete
       :<|> AdunitsUpdate

-- | Insert the supplied ad unit into the specified publisher AdSense
-- account.
type AdunitsInsert =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all ad units in the specified publisher\'s AdSense account.
type AdunitsList =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "includeInactive" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update the supplied ad unit in the specified publisher AdSense account.
-- This method supports patch semantics.
type AdunitsPatch =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "adUnitId" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get the specified host ad unit in this AdSense account.
type AdunitsGet =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> Capture "adUnitId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get ad code for the specified ad unit, attaching the specified host
-- custom channels.
type AdunitsGetAdCode =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> Capture "adUnitId" Text
       :> "adcode"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "hostCustomChannelId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete the specified ad unit from the specified publisher AdSense
-- account.
type AdunitsDelete =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> Capture "adUnitId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update the supplied ad unit in the specified publisher AdSense account.
type AdunitsUpdate =
     "adsensehost" :> "v4.1" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = ReportsGenerate

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
type ReportsGenerate =
     "adsensehost" :> "v4.1" :> "reports" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "dimension" Text
       :> QueryParam "locale" Text
       :> QueryParam "endDate" Text
       :> QueryParam "startDate" Text
       :> QueryParam "metric" Text
       :> QueryParam "key" Text
       :> QueryParam "sort" Text
       :> QueryParam "filter" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UrlchannelsAPI =
     UrlchannelsInsert :<|> UrlchannelsList :<|>
       UrlchannelsDelete

-- | Add a new URL channel to the host AdSense account.
type UrlchannelsInsert =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "urlchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all host URL channels in the host AdSense account.
type UrlchannelsList =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "urlchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a URL channel from the host AdSense account.
type UrlchannelsDelete =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "urlchannels"
       :> Capture "urlChannelId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomchannelsAPI =
     CustomchannelsInsert :<|> CustomchannelsList :<|>
       CustomchannelsPatch
       :<|> CustomchannelsGet
       :<|> CustomchannelsDelete
       :<|> CustomchannelsUpdate

-- | Add a new custom channel to the host AdSense account.
type CustomchannelsInsert =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all host custom channels in this AdSense account.
type CustomchannelsList =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
type CustomchannelsPatch =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "customChannelId" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a specific custom channel from the host AdSense account.
type CustomchannelsGet =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> Capture "customChannelId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a specific custom channel from the host AdSense account.
type CustomchannelsDelete =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> Capture "customChannelId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a custom channel in the host AdSense account.
type CustomchannelsUpdate =
     "adsensehost" :> "v4.1" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
