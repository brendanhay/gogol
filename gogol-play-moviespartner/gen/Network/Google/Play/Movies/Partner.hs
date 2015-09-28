{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Play.Movies.Partner
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
module Network.Google.Play.Movies.Partner
    (
    -- * REST Resources

    -- ** Google Play Movies Partner API
      PlayMoviesPartner
    , playMoviesPartner
    , playMoviesPartnerURL

    -- ** playmoviespartner.accounts.avails.list
    , module Network.Google.API.PlayMoviesPartner.Accounts.Avails.List

    -- ** playmoviespartner.accounts.experienceLocales.get
    , module Network.Google.API.PlayMoviesPartner.Accounts.ExperienceLocales.Get

    -- ** playmoviespartner.accounts.experienceLocales.list
    , module Network.Google.API.PlayMoviesPartner.Accounts.ExperienceLocales.List

    -- ** playmoviespartner.accounts.orders.get
    , module Network.Google.API.PlayMoviesPartner.Accounts.Orders.Get

    -- ** playmoviespartner.accounts.orders.list
    , module Network.Google.API.PlayMoviesPartner.Accounts.Orders.List

    -- ** playmoviespartner.accounts.storeInfos.country.get
    , module Network.Google.API.PlayMoviesPartner.Accounts.StoreInfos.Country.Get

    -- * Types

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
    ) where

import           Network.Google.API.PlayMoviesPartner.Accounts.Avails.List
import           Network.Google.API.PlayMoviesPartner.Accounts.ExperienceLocales.Get
import           Network.Google.API.PlayMoviesPartner.Accounts.ExperienceLocales.List
import           Network.Google.API.PlayMoviesPartner.Accounts.Orders.Get
import           Network.Google.API.PlayMoviesPartner.Accounts.Orders.List
import           Network.Google.API.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
import           Network.Google.Play.Movies.Partner.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlayMoviesPartner =
     AccountsStoreInfosCountryGetAPI :<|>
       AccountsExperienceLocalesGetAPI
       :<|> AccountsOrdersGetAPI
       :<|> AccountsAvailsListAPI
       :<|> AccountsOrdersListAPI
       :<|> AccountsExperienceLocalesListAPI

playMoviesPartner :: Proxy PlayMoviesPartner
playMoviesPartner = Proxy
