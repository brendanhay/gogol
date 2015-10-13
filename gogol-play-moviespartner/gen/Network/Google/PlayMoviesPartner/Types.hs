{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayMoviesPartner.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayMoviesPartner.Types
    (
    -- * Service Configuration
      playMoviesPartnerService

    -- * OAuth Scopes
    , playmoviesPartnerReadonlyScope

    -- * Avail
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
    , aFormatProFile
    , aRatingReason
    , aEncodeId
    , aPriceValue
    , aCaptionIncluded
    , aProductId
    , aSeasonAltId
    , aTitleInternalAlias

    -- * ListAvailsResponse
    , ListAvailsResponse
    , listAvailsResponse
    , larNextPageToken
    , larAvails

    -- * ListExperienceLocalesResponse
    , ListExperienceLocalesResponse
    , listExperienceLocalesResponse
    , lelrNextPageToken
    , lelrExperienceLocales

    -- * ListOrdersResponse
    , ListOrdersResponse
    , listOrdersResponse
    , lorNextPageToken
    , lorOrders

    -- * ListStoreInfosResponse
    , ListStoreInfosResponse
    , listStoreInfosResponse
    , lsirNextPageToken
    , lsirStoreInfos

    -- * Order
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

    -- * ExperienceLocale
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

    -- * StoreInfo
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

import           Network.Google.PlayMoviesPartner.Types.Product
import           Network.Google.PlayMoviesPartner.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play Movies Partner API. This contains the host and root path used as a starting point for constructing service requests.
playMoviesPartnerService :: Service
playMoviesPartnerService
  = defaultService (ServiceId "playmoviespartner:v1")
      "playmoviespartner.googleapis.com"
      ""

-- | View the digital assets you publish on Google Play Movies and TV
playmoviesPartnerReadonlyScope :: OAuthScope
playmoviesPartnerReadonlyScope = OAuthScope "https://www.googleapis.com/auth/playmovies_partner.readonly";
