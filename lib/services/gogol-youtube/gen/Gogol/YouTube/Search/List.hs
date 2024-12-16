{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTube.Search.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of search resources
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.search.list@.
module Gogol.YouTube.Search.List
    (
    -- * Resource
      YouTubeSearchListResource

    -- ** Constructing a Request
    , YouTubeSearchList (..)
    , newYouTubeSearchList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.search.list@ method which the
-- 'YouTubeSearchList' request conforms to.
type YouTubeSearchListResource =
     "youtube" Core.:>
       "v3" Core.:>
         "search" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "channelId" Core.Text Core.:>
                     Core.QueryParam "channelType" SearchListChannelType
                       Core.:>
                       Core.QueryParam "eventType" SearchListEventType
                         Core.:>
                         Core.QueryParam "forContentOwner" Core.Bool Core.:>
                           Core.QueryParam "forDeveloper" Core.Bool Core.:>
                             Core.QueryParam "forMine" Core.Bool Core.:>
                               Core.QueryParam "location" Core.Text Core.:>
                                 Core.QueryParam "locationRadius" Core.Text
                                   Core.:>
                                   Core.QueryParam "maxResults" Core.Word32
                                     Core.:>
                                     Core.QueryParam "onBehalfOfContentOwner"
                                       Core.Text
                                       Core.:>
                                       Core.QueryParam "order" SearchListOrder
                                         Core.:>
                                         Core.QueryParam "pageToken" Core.Text
                                           Core.:>
                                           Core.QueryParam "publishedAfter"
                                             Core.DateTime
                                             Core.:>
                                             Core.QueryParam "publishedBefore"
                                               Core.DateTime
                                               Core.:>
                                               Core.QueryParam "q" Core.Text
                                                 Core.:>
                                                 Core.QueryParam "regionCode"
                                                   Core.Text
                                                   Core.:>
                                                   Core.QueryParam
                                                     "relevanceLanguage"
                                                     Core.Text
                                                     Core.:>
                                                     Core.QueryParam
                                                       "safeSearch"
                                                       SearchListSafeSearch
                                                       Core.:>
                                                       Core.QueryParam "topicId"
                                                         Core.Text
                                                         Core.:>
                                                         Core.QueryParams "type"
                                                           Core.Text
                                                           Core.:>
                                                           Core.QueryParam
                                                             "uploadType"
                                                             Core.Text
                                                             Core.:>
                                                             Core.QueryParam
                                                               "upload_protocol"
                                                               Core.Text
                                                               Core.:>
                                                               Core.QueryParam
                                                                 "videoCaption"
                                                                 SearchListVideoCaption
                                                                 Core.:>
                                                                 Core.QueryParam
                                                                   "videoCategoryId"
                                                                   Core.Text
                                                                   Core.:>
                                                                   Core.QueryParam
                                                                     "videoDefinition"
                                                                     SearchListVideoDefinition
                                                                     Core.:>
                                                                     Core.QueryParam
                                                                       "videoDimension"
                                                                       SearchListVideoDimension
                                                                       Core.:>
                                                                       Core.QueryParam
                                                                         "videoDuration"
                                                                         SearchListVideoDuration
                                                                         Core.:>
                                                                         Core.QueryParam
                                                                           "videoEmbeddable"
                                                                           SearchListVideoEmbeddable
                                                                           Core.:>
                                                                           Core.QueryParam
                                                                             "videoLicense"
                                                                             SearchListVideoLicense
                                                                             Core.:>
                                                                             Core.QueryParam
                                                                               "videoPaidProductPlacement"
                                                                               SearchListVideoPaidProductPlacement
                                                                               Core.:>
                                                                               Core.QueryParam
                                                                                 "videoSyndicated"
                                                                                 SearchListVideoSyndicated
                                                                                 Core.:>
                                                                                 Core.QueryParam
                                                                                   "videoType"
                                                                                   SearchListVideoType
                                                                                   Core.:>
                                                                                   Core.QueryParam
                                                                                     "alt"
                                                                                     Core.AltJSON
                                                                                     Core.:>
                                                                                     Core.Get
                                                                                       '[Core.JSON]
                                                                                       SearchListResponse

-- | Retrieves a list of search resources
--
-- /See:/ 'newYouTubeSearchList' smart constructor.
data YouTubeSearchList = YouTubeSearchList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Filter on resources belonging to this channelId.
    , channelId :: (Core.Maybe Core.Text)
      -- | Add a filter on the channel search.
    , channelType :: (Core.Maybe SearchListChannelType)
      -- | Filter on the livestream status of the videos.
    , eventType :: (Core.Maybe SearchListEventType)
      -- | Search owned by a content owner.
    , forContentOwner :: (Core.Maybe Core.Bool)
      -- | Restrict the search to only retrieve videos uploaded using the project id of the authenticated user.
    , forDeveloper :: (Core.Maybe Core.Bool)
      -- | Search for the private videos of the authenticated user.
    , forMine :: (Core.Maybe Core.Bool)
      -- | Filter on location of the video
    , location :: (Core.Maybe Core.Text)
      -- | Filter on distance from the location (specified above).
    , locationRadius :: (Core.Maybe Core.Text)
      -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    , maxResults :: Core.Word32
      -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | Sort order of the results.
    , order :: SearchListOrder
      -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The /part/ parameter specifies a comma-separated list of one or more search resource properties that the API response will include. Set the parameter value to snippet.
    , part :: [Core.Text]
      -- | Filter on resources published after this date.
    , publishedAfter :: (Core.Maybe Core.DateTime)
      -- | Filter on resources published before this date.
    , publishedBefore :: (Core.Maybe Core.DateTime)
      -- | Textual search terms to match.
    , q :: (Core.Maybe Core.Text)
      -- | Display the content as seen by viewers in this country.
    , regionCode :: (Core.Maybe Core.Text)
      -- | Return results relevant to this language.
    , relevanceLanguage :: (Core.Maybe Core.Text)
      -- | Indicates whether the search results should include restricted content as well as standard content.
    , safeSearch :: SearchListSafeSearch
      -- | Restrict results to a particular topic.
    , topicId :: (Core.Maybe Core.Text)
      -- | Restrict results to a particular set of resource types from One Platform.
    , type' :: (Core.Maybe [Core.Text])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Filter on the presence of captions on the videos.
    , videoCaption :: (Core.Maybe SearchListVideoCaption)
      -- | Filter on videos in a specific category.
    , videoCategoryId :: (Core.Maybe Core.Text)
      -- | Filter on the definition of the videos.
    , videoDefinition :: (Core.Maybe SearchListVideoDefinition)
      -- | Filter on 3d videos.
    , videoDimension :: (Core.Maybe SearchListVideoDimension)
      -- | Filter on the duration of the videos.
    , videoDuration :: (Core.Maybe SearchListVideoDuration)
      -- | Filter on embeddable videos.
    , videoEmbeddable :: (Core.Maybe SearchListVideoEmbeddable)
      -- | Filter on the license of the videos.
    , videoLicense :: (Core.Maybe SearchListVideoLicense)
      -- | 
    , videoPaidProductPlacement :: (Core.Maybe SearchListVideoPaidProductPlacement)
      -- | Filter on syndicated videos.
    , videoSyndicated :: (Core.Maybe SearchListVideoSyndicated)
      -- | Filter on videos of a specific type.
    , videoType :: (Core.Maybe SearchListVideoType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeSearchList' with the minimum fields required to make a request.
newYouTubeSearchList 
    ::  [Core.Text]
       -- ^  The /part/ parameter specifies a comma-separated list of one or more search resource properties that the API response will include. Set the parameter value to snippet. See 'part'.
    -> YouTubeSearchList
newYouTubeSearchList part =
  YouTubeSearchList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , channelId = Core.Nothing
    , channelType = Core.Nothing
    , eventType = Core.Nothing
    , forContentOwner = Core.Nothing
    , forDeveloper = Core.Nothing
    , forMine = Core.Nothing
    , location = Core.Nothing
    , locationRadius = Core.Nothing
    , maxResults = 5
    , onBehalfOfContentOwner = Core.Nothing
    , order = SearchListOrder_Relevance
    , pageToken = Core.Nothing
    , part = part
    , publishedAfter = Core.Nothing
    , publishedBefore = Core.Nothing
    , q = Core.Nothing
    , regionCode = Core.Nothing
    , relevanceLanguage = Core.Nothing
    , safeSearch = SearchListSafeSearch_Moderate
    , topicId = Core.Nothing
    , type' = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , videoCaption = Core.Nothing
    , videoCategoryId = Core.Nothing
    , videoDefinition = Core.Nothing
    , videoDimension = Core.Nothing
    , videoDuration = Core.Nothing
    , videoEmbeddable = Core.Nothing
    , videoLicense = Core.Nothing
    , videoPaidProductPlacement = Core.Nothing
    , videoSyndicated = Core.Nothing
    , videoType = Core.Nothing
    }

instance Core.GoogleRequest YouTubeSearchList where
        type Rs YouTubeSearchList = SearchListResponse
        type Scopes YouTubeSearchList =
             '[Youtube'FullControl, Youtube'ForceSsl,
               Youtube'Readonly, Youtubepartner'FullControl]
        requestClient YouTubeSearchList{..}
          = go part xgafv accessToken callback channelId
              channelType
              eventType
              forContentOwner
              forDeveloper
              forMine
              location
              locationRadius
              (Core.Just maxResults)
              onBehalfOfContentOwner
              (Core.Just order)
              pageToken
              publishedAfter
              publishedBefore
              q
              regionCode
              relevanceLanguage
              (Core.Just safeSearch)
              topicId
              (type' Core.^. Core._Default)
              uploadType
              uploadProtocol
              videoCaption
              videoCategoryId
              videoDefinition
              videoDimension
              videoDuration
              videoEmbeddable
              videoLicense
              videoPaidProductPlacement
              videoSyndicated
              videoType
              (Core.Just Core.AltJSON)
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy YouTubeSearchListResource)
                      Core.mempty

