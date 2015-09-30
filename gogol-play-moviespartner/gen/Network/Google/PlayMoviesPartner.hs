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
    -- * API
      PlayMoviesPartnerAPI
    , playMoviesPartnerAPI
    , playMoviesPartnerURL

    -- * Service Methods

    -- * REST Resources

    -- ** PlaymoviespartnerAccountsAvailsList
    , module PlayMoviesPartner.Accounts.Avails.List

    -- ** PlaymoviespartnerAccountsExperienceLocalesGet
    , module PlayMoviesPartner.Accounts.ExperienceLocales.Get

    -- ** PlaymoviespartnerAccountsExperienceLocalesList
    , module PlayMoviesPartner.Accounts.ExperienceLocales.List

    -- ** PlaymoviespartnerAccountsOrdersGet
    , module PlayMoviesPartner.Accounts.Orders.Get

    -- ** PlaymoviespartnerAccountsOrdersList
    , module PlayMoviesPartner.Accounts.Orders.List

    -- ** PlaymoviespartnerAccountsStoreInfosCountryGet
    , module PlayMoviesPartner.Accounts.StoreInfos.Country.Get

    -- ** PlaymoviespartnerAccountsStoreInfosList
    , module PlayMoviesPartner.Accounts.StoreInfos.List

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

    -- ** ListAvailsResponse
    , ListAvailsResponse
    , listAvailsResponse
    , larNextPageToken
    , larAvails

    -- ** ListOrdersResponse
    , ListOrdersResponse
    , listOrdersResponse
    , lorNextPageToken
    , lorOrders

    -- ** ListExperienceLocalesResponse
    , ListExperienceLocalesResponse
    , listExperienceLocalesResponse
    , lelrNextPageToken
    , lelrExperienceLocales

    -- ** ListStoreInfosResponse
    , ListStoreInfosResponse
    , listStoreInfosResponse
    , lsirNextPageToken
    , lsirStoreInfos

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
import           Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List
import           Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.Get
import           Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.List
import           Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get
import           Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.List
import           Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
import           Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List

{- $resources
TODO
-}

type PlayMoviesPartnerAPI = Accounts

playMoviesPartnerAPI :: Proxy PlayMoviesPartnerAPI
playMoviesPartnerAPI = Proxy
