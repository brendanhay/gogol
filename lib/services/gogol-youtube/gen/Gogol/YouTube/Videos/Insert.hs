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
-- Module      : Gogol.YouTube.Videos.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.insert@.
module Gogol.YouTube.Videos.Insert
    (
    -- * Resource
      YouTubeVideosInsertResource

    -- ** Constructing a Request
    , newYouTubeVideosInsert
    , YouTubeVideosInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videos.insert@ method which the
-- 'YouTubeVideosInsert' request conforms to.
type YouTubeVideosInsertResource =
     "youtube" Core.:>
       "v3" Core.:>
         "videos" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "autoLevels" Core.Bool Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "notifySubscribers" Core.Bool Core.:>
                       Core.QueryParam "onBehalfOfContentOwner" Core.Text
                         Core.:>
                         Core.QueryParam "onBehalfOfContentOwnerChannel"
                           Core.Text
                           Core.:>
                           Core.QueryParam "stabilize" Core.Bool Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] Video Core.:>
                                     Core.Post '[Core.JSON] Video
       Core.:<|>
       "upload" Core.:>
         "youtube" Core.:>
           "v3" Core.:>
             "videos" Core.:>
               Core.QueryParams "part" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "autoLevels" Core.Bool Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "notifySubscribers" Core.Bool Core.:>
                           Core.QueryParam "onBehalfOfContentOwner" Core.Text
                             Core.:>
                             Core.QueryParam "onBehalfOfContentOwnerChannel"
                               Core.Text
                               Core.:>
                               Core.QueryParam "stabilize" Core.Bool Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.QueryParam "uploadType"
                                         Core.Multipart
                                         Core.:>
                                         Core.MultipartRelated '[Core.JSON]
                                           Video
                                           Core.:> Core.Post '[Core.JSON] Video

-- | Inserts a new resource into this collection.
--
-- /See:/ 'newYouTubeVideosInsert' smart constructor.
data YouTubeVideosInsert = YouTubeVideosInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Should auto-levels be applied to the upload.
    , autoLevels :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Notify the channel subscribers about the new video. As default, the notification is enabled.
    , notifySubscribers :: Core.Bool
      -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | This parameter can only be used in a properly authorized request. /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwnerChannel/ parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide
      -- authentication credentials for each separate channel.
    , onBehalfOfContentOwnerChannel :: (Core.Maybe Core.Text)
      -- | The /part/ parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that not all parts contain properties that can be set when inserting or updating a video. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.
    , part :: [Core.Text]
      -- | Multipart request metadata.
    , payload :: Video
      -- | Should stabilize be applied to the upload.
    , stabilize :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideosInsert' with the minimum fields required to make a request.
newYouTubeVideosInsert 
    ::  [Core.Text]
       -- ^  The /part/ parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that not all parts contain properties that can be set when inserting or updating a video. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response. See 'part'.
    -> Video
       -- ^  Multipart request metadata. See 'payload'.
    -> YouTubeVideosInsert
newYouTubeVideosInsert part payload =
  YouTubeVideosInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , autoLevels = Core.Nothing
    , callback = Core.Nothing
    , notifySubscribers = Core.True
    , onBehalfOfContentOwner = Core.Nothing
    , onBehalfOfContentOwnerChannel = Core.Nothing
    , part = part
    , payload = payload
    , stabilize = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeVideosInsert where
        type Rs YouTubeVideosInsert = Video
        type Scopes YouTubeVideosInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.upload",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient YouTubeVideosInsert{..}
          = go part xgafv accessToken autoLevels callback
              (Core.Just notifySubscribers)
              onBehalfOfContentOwner
              onBehalfOfContentOwnerChannel
              stabilize
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              youTubeService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeVideosInsertResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload YouTubeVideosInsert)
         where
        type Rs (Core.MediaUpload YouTubeVideosInsert) =
             Video
        type Scopes (Core.MediaUpload YouTubeVideosInsert) =
             Core.Scopes YouTubeVideosInsert
        requestClient
          (Core.MediaUpload YouTubeVideosInsert{..} body)
          = go part xgafv accessToken autoLevels callback
              (Core.Just notifySubscribers)
              onBehalfOfContentOwner
              onBehalfOfContentOwnerChannel
              stabilize
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              (Core.Just Core.Multipart)
              payload
              body
              youTubeService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeVideosInsertResource)
                      Core.mempty

