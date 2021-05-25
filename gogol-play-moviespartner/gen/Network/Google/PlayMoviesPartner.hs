{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlayMoviesPartner
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the delivery status of titles for Google Play Movies Partners.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference>
module Network.Google.PlayMoviesPartner
    (
    -- * Service Configuration
      playMoviesPartnerService

    -- * OAuth Scopes
    , playmoviesPartnerReadOnlyScope

    -- * API Declaration
    , PlayMoviesPartnerAPI

    -- * Resources

    -- ** playmoviespartner.accounts.avails.get
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.Get

    -- ** playmoviespartner.accounts.avails.list
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List

    -- ** playmoviespartner.accounts.orders.get
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get

    -- ** playmoviespartner.accounts.orders.list
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.List

    -- ** playmoviespartner.accounts.storeInfos.country.get
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get

    -- ** playmoviespartner.accounts.storeInfos.list
    , module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List

    -- * Types

    -- ** AvailWorkType
    , AvailWorkType (..)

    -- ** OrderStatus
    , OrderStatus (..)

    -- ** AvailFormatProFile
    , AvailFormatProFile (..)

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
    , aAvailId
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

    -- ** OrderType
    , OrderType (..)

    -- ** ListAvailsResponse
    , ListAvailsResponse
    , listAvailsResponse
    , larNextPageToken
    , larAvails
    , larTotalSize

    -- ** StoreInfoType
    , StoreInfoType (..)

    -- ** ListOrdersResponse
    , ListOrdersResponse
    , listOrdersResponse
    , lorNextPageToken
    , lorTotalSize
    , lorOrders

    -- ** Xgafv
    , Xgafv (..)

    -- ** OrderNormalizedPriority
    , OrderNormalizedPriority (..)

    -- ** AvailLicenseType
    , AvailLicenseType (..)

    -- ** OrderStatusDetail
    , OrderStatusDetail (..)

    -- ** ListStoreInfosResponse
    , ListStoreInfosResponse
    , listStoreInfosResponse
    , lsirNextPageToken
    , lsirTotalSize
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

import Network.Google.Prelude
import Network.Google.PlayMoviesPartner.Types
import Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.Get
import Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List
import Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get
import Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.List
import Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
import Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Movies Partner API service.
type PlayMoviesPartnerAPI =
     AccountsAvailsListResource :<|>
       AccountsAvailsGetResource
       :<|> AccountsStoreInfosCountryGetResource
       :<|> AccountsStoreInfosListResource
       :<|> AccountsOrdersListResource
       :<|> AccountsOrdersGetResource
