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
-- Module      : Gogol.YouTube.Captions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.list@.
module Gogol.YouTube.Captions.List
    (
    -- * Resource
      YouTubeCaptionsListResource

    -- ** Constructing a Request
    , newYouTubeCaptionsList
    , YouTubeCaptionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.captions.list@ method which the
-- 'YouTubeCaptionsList' request conforms to.
type YouTubeCaptionsListResource =
     "youtube" Core.:>
       "v3" Core.:>
         "captions" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "videoId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParams "id" Core.Text Core.:>
                       Core.QueryParam "onBehalfOf" Core.Text Core.:>
                         Core.QueryParam "onBehalfOfContentOwner" Core.Text
                           Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] CaptionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeCaptionsList' smart constructor.
data YouTubeCaptionsList = YouTubeCaptionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Returns the captions with the given IDs for Stubby or Apiary.
    , id :: (Core.Maybe [Core.Text])
      -- | ID of the Google+ Page for the channel that the request is on behalf of.
    , onBehalfOf :: (Core.Maybe Core.Text)
      -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | The /part/ parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet.
    , part :: [Core.Text]
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Returns the captions for the specified video.
    , videoId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCaptionsList' with the minimum fields required to make a request.
newYouTubeCaptionsList 
    ::  [Core.Text]
       -- ^  The /part/ parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet. See 'part'.
    -> Core.Text
       -- ^  Returns the captions for the specified video. See 'videoId'.
    -> YouTubeCaptionsList
newYouTubeCaptionsList part videoId =
  YouTubeCaptionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = Core.Nothing
    , onBehalfOf = Core.Nothing
    , onBehalfOfContentOwner = Core.Nothing
    , part = part
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , videoId = videoId
    }

instance Core.GoogleRequest YouTubeCaptionsList where
        type Rs YouTubeCaptionsList = CaptionListResponse
        type Scopes YouTubeCaptionsList =
             '["https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient YouTubeCaptionsList{..}
          = go part (Core.Just videoId) xgafv accessToken
              callback
              (id Core.^. Core._Default)
              onBehalfOf
              onBehalfOfContentOwner
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeCaptionsListResource)
                      Core.mempty

