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
-- Module      : Gogol.YouTube.LiveBroadcasts.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a given broadcast.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.delete@.
module Gogol.YouTube.LiveBroadcasts.Delete
    (
    -- * Resource
      YouTubeLiveBroadcastsDeleteResource

    -- ** Constructing a Request
    , newYouTubeLiveBroadcastsDelete
    , YouTubeLiveBroadcastsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.delete@ method which the
-- 'YouTubeLiveBroadcastsDelete' request conforms to.
type YouTubeLiveBroadcastsDeleteResource =
     "youtube" Core.:>
       "v3" Core.:>
         "liveBroadcasts" Core.:>
           Core.QueryParam "id" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "onBehalfOfContentOwner" Core.Text
                     Core.:>
                     Core.QueryParam "onBehalfOfContentOwnerChannel"
                       Core.Text
                       Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Delete a given broadcast.
--
-- /See:/ 'newYouTubeLiveBroadcastsDelete' smart constructor.
data YouTubeLiveBroadcastsDelete = YouTubeLiveBroadcastsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Broadcast to delete.
    , id :: Core.Text
      -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | This parameter can only be used in a properly authorized request. /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwnerChannel/ parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide
      -- authentication credentials for each separate channel.
    , onBehalfOfContentOwnerChannel :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveBroadcastsDelete' with the minimum fields required to make a request.
newYouTubeLiveBroadcastsDelete 
    ::  Core.Text
       -- ^  Broadcast to delete. See 'id'.
    -> YouTubeLiveBroadcastsDelete
newYouTubeLiveBroadcastsDelete id =
  YouTubeLiveBroadcastsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , onBehalfOfContentOwner = Core.Nothing
    , onBehalfOfContentOwnerChannel = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeLiveBroadcastsDelete
         where
        type Rs YouTubeLiveBroadcastsDelete = ()
        type Scopes YouTubeLiveBroadcastsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient YouTubeLiveBroadcastsDelete{..}
          = go (Core.Just id) xgafv accessToken callback
              onBehalfOfContentOwner
              onBehalfOfContentOwnerChannel
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeLiveBroadcastsDeleteResource)
                      Core.mempty

