{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlayMoviesPartner
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets Google Play Movies Partners get the delivery status of their
-- titles.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference>
module Network.Google.PlayMoviesPartner
    (
    -- * Resources
      PlayMoviesPartner
    , AccountsAPI
    , AvailsAPI
    , AvailsList
    , StoreInfosAPI
    , CountryAPI
    , CountryGet
    , OrdersAPI
    , OrdersList
    , OrdersGet
    , ExperienceLocalesAPI
    , ExperienceLocalesList
    , ExperienceLocalesGet

    -- * Types

    -- ** Avail
    , Avail
    , avail
    , aAltId
    , aPphNames
    , aCaptionExemption
    , aRatingSystem
    , aSuppressionLiftDate
    , aEpisodeNumber
    , aPriceType
    , aStoreLanguage
    , aEpisodeAltId
    , aStart
    , aTerritory
    , aEpisodeTitleInternalAlias
    , aLicenseType
    , aSeasonNumber
    , aWorkType
    , aRatingValue
    , aSeasonTitleInternalAlias
    , aContentId
    , aVideoId
    , aSeriesAltId
    , aEnd
    , aSeriesTitleInternalAlias
    , aDisplayName
    , aReleaseDate
    , aFormatProfile
    , aRatingReason
    , aEncodeId
    , aPriceValue
    , aCaptionIncluded
    , aProductId
    , aSeasonAltId
    , aTitleInternalAlias

    -- ** ExperienceLocale
    , ExperienceLocale
    , experienceLocale
    , elTitleLevelEidr
    , elStatus
    , elPphNames
    , elInventoryId
    , elEarliestAvailStartTime
    , elStudioName
    , elPriority
    , elCustomIds
    , elCreatedTime
    , elCountry
    , elTrailerId
    , elPresentationId
    , elAltCutId
    , elChannelId
    , elApprovedTime
    , elPlayableSequenceId
    , elElId
    , elVideoId
    , elName
    , elLanguage
    , elEditLevelEidr
    , elType
    , elNormalizedPriority

    -- ** ListAvailsResponse
    , ListAvailsResponse
    , listAvailsResponse
    , larNextPageToken
    , larAvails

    -- ** ListExperienceLocalesResponse
    , ListExperienceLocalesResponse
    , listExperienceLocalesResponse
    , lelrNextPageToken
    , lelrExperienceLocales

    -- ** ListOrdersResponse
    , ListOrdersResponse
    , listOrdersResponse
    , lorNextPageToken
    , lorOrders

    -- ** ListStoreInfosResponse
    , ListStoreInfosResponse
    , listStoreInfosResponse
    , lsirNextPageToken
    , lsirStoreInfos

    -- ** Order
    , Order
    , order
    , oStatus
    , oShowName
    , oPphName
    , oEarliestAvailStartTime
    , oStudioName
    , oReceivedTime
    , oPriority
    , oChannelId
    , oCustomId
    , oApprovedTime
    , oCountries
    , oChannelName
    , oVideoId
    , oLegacyPriority
    , oName
    , oRejectionNote
    , oOrderedTime
    , oSeasonName
    , oStatusDetail
    , oType
    , oNormalizedPriority
    , oOrderId
    , oEpisodeName

    -- ** StoreInfo
    , StoreInfo
    , storeInfo
    , siTitleLevelEidr
    , siPphNames
    , siShowName
    , siSubtitles
    , siStudioName
    , siAudioTracks
    , siEpisodeNumber
    , siCountry
    , siTrailerId
    , siHasInfoCards
    , siLiveTime
    , siSeasonNumber
    , siHasHdOffer
    , siVideoId
    , siName
    , siHasVodOffer
    , siSeasonName
    , siHasSdOffer
    , siMid
    , siEditLevelEidr
    , siType
    , siHasEstOffer
    , siHasAudio51
    , siSeasonId
    , siShowId
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlayMoviesPartner = AccountsAPI

type AccountsAPI =
     StoreInfosAPI :<|>
       OrdersAPI :<|> ExperienceLocalesAPI :<|> AvailsAPI

type AvailsAPI = AvailsList

-- | List Avails owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
type AvailsList =
     "v1" :> "accounts" :> Capture "accountId" Text :>
       "avails"
       :> QueryParam "altId" Text
       :> QueryParam "pphNames" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "studioNames" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "videoIds" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "territories" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "title" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type StoreInfosAPI = CountryAPI

type CountryAPI = CountryGet

-- | Get a StoreInfo given its video id and country. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
type CountryGet =
     "v1" :> "accounts" :> Capture "accountId" Text :>
       "storeInfos"
       :> Capture "videoId" Text
       :> "country"
       :> Capture "country" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type OrdersAPI = OrdersGet :<|> OrdersList

-- | List Orders owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
type OrdersList =
     "v1" :> "accounts" :> Capture "accountId" Text :>
       "orders"
       :> QueryParam "status" Text
       :> QueryParam "pphNames" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "studioNames" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "customId" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Get an Order given its id. See _Authentication and Authorization rules_
-- and _Get methods rules_ for more information about this method.
type OrdersGet =
     "v1" :> "accounts" :> Capture "accountId" Text :>
       "orders"
       :> Capture "orderId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type ExperienceLocalesAPI =
     ExperienceLocalesGet :<|> ExperienceLocalesList

-- | List ExperienceLocales owned or managed by the partner. See
-- _Authentication and Authorization rules_ and _List methods rules_ for
-- more information about this method.
type ExperienceLocalesList =
     "v1" :> "accounts" :> Capture "accountId" Text :>
       "experienceLocales"
       :> QueryParam "titleLevelEidr" Text
       :> QueryParam "status" Text
       :> QueryParam "pphNames" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "studioNames" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "altCutId" Text
       :> QueryParam "customId" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "editLevelEidr" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Get an ExperienceLocale given its id. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
type ExperienceLocalesGet =
     "v1" :> "accounts" :> Capture "accountId" Text :>
       "experienceLocales"
       :> Capture "elId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
