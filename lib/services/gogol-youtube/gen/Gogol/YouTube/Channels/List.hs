{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTube.Channels.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channels.list@.
module Gogol.YouTube.Channels.List
    (
    -- * Resource
      YouTubeChannelsListResource

    -- ** Constructing a Request
    , newYouTubeChannelsList
    , YouTubeChannelsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.channels.list@ method which the
-- 'YouTubeChannelsList' request conforms to.
type YouTubeChannelsListResource =
     "youtube" Core.:>
       "v3" Core.:>
         "channels" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "categoryId" Core.Text Core.:>
                     Core.QueryParam "forUsername" Core.Text Core.:>
                       Core.QueryParam "hl" Core.Text Core.:>
                         Core.QueryParams "id" Core.Text Core.:>
                           Core.QueryParam "managedByMe" Core.Bool Core.:>
                             Core.QueryParam "maxResults" Core.Word32 Core.:>
                               Core.QueryParam "mine" Core.Bool Core.:>
                                 Core.QueryParam "mySubscribers" Core.Bool
                                   Core.:>
                                   Core.QueryParam "onBehalfOfContentOwner"
                                     Core.Text
                                     Core.:>
                                     Core.QueryParam "pageToken" Core.Text
                                       Core.:>
                                       Core.QueryParam "uploadType" Core.Text
                                         Core.:>
                                         Core.QueryParam "upload_protocol"
                                           Core.Text
                                           Core.:>
                                           Core.QueryParam "alt" Core.AltJSON
                                             Core.:>
                                             Core.Get '[Core.JSON]
                                               ChannelListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeChannelsList' smart constructor.
data YouTubeChannelsList = YouTubeChannelsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Return the channels within the specified guide category ID.
    , categoryId :: (Core.Maybe Core.Text)
      -- | Return the channel associated with a YouTube username.
    , forUsername :: (Core.Maybe Core.Text)
      -- | Stands for \"host language\". Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en/US, es/MX).
    , hl :: (Core.Maybe Core.Text)
      -- | Return the channels with the specified IDs.
    , id :: (Core.Maybe [Core.Text])
      -- | Return the channels managed by the authenticated user.
    , managedByMe :: (Core.Maybe Core.Bool)
      -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    , maxResults :: Core.Word32
      -- | Return the ids of channels owned by the authenticated user.
    , mine :: (Core.Maybe Core.Bool)
      -- | Return the channels subscribed to the authenticated user
    , mySubscribers :: (Core.Maybe Core.Bool)
      -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The /part/ parameter specifies a comma-separated list of one or more channel resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channel resource, the contentDetails property contains other properties, such as the uploads properties. As such, if you set /part=contentDetails/, the API response will also contain all of those nested properties.
    , part :: [Core.Text]
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeChannelsList' with the minimum fields required to make a request.
newYouTubeChannelsList 
    ::  [Core.Text]
       -- ^  The /part/ parameter specifies a comma-separated list of one or more channel resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channel resource, the contentDetails property contains other properties, such as the uploads properties. As such, if you set /part=contentDetails/, the API response will also contain all of those nested properties. See 'part'.
    -> YouTubeChannelsList
newYouTubeChannelsList part =
  YouTubeChannelsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , categoryId = Core.Nothing
    , forUsername = Core.Nothing
    , hl = Core.Nothing
    , id = Core.Nothing
    , managedByMe = Core.Nothing
    , maxResults = 5
    , mine = Core.Nothing
    , mySubscribers = Core.Nothing
    , onBehalfOfContentOwner = Core.Nothing
    , pageToken = Core.Nothing
    , part = part
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeChannelsList where
        type Rs YouTubeChannelsList = ChannelListResponse
        type Scopes YouTubeChannelsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/youtubepartner-channel-audit"]
        requestClient YouTubeChannelsList{..}
          = go part xgafv accessToken callback categoryId
              forUsername
              hl
              (id Core.^. Core._Default)
              managedByMe
              (Core.Just maxResults)
              mine
              mySubscribers
              onBehalfOfContentOwner
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeChannelsListResource)
                      Core.mempty

