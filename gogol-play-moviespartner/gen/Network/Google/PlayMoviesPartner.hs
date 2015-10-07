{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Lets Google Play Movies Partners get the delivery status of their
-- titles.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference>
module Network.Google.PlayMoviesPartner
    (
    -- * API Declaration
      PlayMoviesPartnerAPI

    -- * Resources

    -- ** PlaymoviesPartnerAccountsAvailsList
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List

    -- ** PlaymoviesPartnerAccountsExperienceLocalesGet
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.Get

    -- ** PlaymoviesPartnerAccountsExperienceLocalesList
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.List

    -- ** PlaymoviesPartnerAccountsOrdersGet
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get

    -- ** PlaymoviesPartnerAccountsOrdersList
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.List

    -- ** PlaymoviesPartnerAccountsStoreInfosCountryGet
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get

    -- ** PlaymoviesPartnerAccountsStoreInfosList
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List

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
    , aFormatProFile
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

-- | Represents the entirety of the methods and resources available for the Google Play Movies Partner API service.
type PlayMoviesPartnerAPI =
     AccountsAvailsListResource :<|>
       AccountsStoreInfosCountryGetResource
       :<|> AccountsStoreInfosListResource
       :<|> AccountsOrdersListResource
       :<|> AccountsOrdersGetResource
       :<|> AccountsExperienceLocalesListResource
       :<|> AccountsExperienceLocalesGetResource
