{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTube.Captions.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.update@.
module Gogol.YouTube.Captions.Update
  ( -- * Resource
    YouTubeCaptionsUpdateResource,

    -- ** Constructing a Request
    newYouTubeCaptionsUpdate,
    YouTubeCaptionsUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.captions.update@ method which the
-- 'YouTubeCaptionsUpdate' request conforms to.
type YouTubeCaptionsUpdateResource =
  "youtube"
    Core.:> "v3"
    Core.:> "captions"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOf" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "sync" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Caption
    Core.:> Core.Put '[Core.JSON] Caption
    Core.:<|> "upload"
      Core.:> "youtube"
      Core.:> "v3"
      Core.:> "captions"
      Core.:> Core.QueryParams "part" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "onBehalfOf" Core.Text
      Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
      Core.:> Core.QueryParam "sync" Core.Bool
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] Caption
      Core.:> Core.Put '[Core.JSON] Caption

-- | Updates an existing resource.
--
-- /See:/ 'newYouTubeCaptionsUpdate' smart constructor.
data YouTubeCaptionsUpdate = YouTubeCaptionsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ID of the Google+ Page for the channel that the request is on behalf of.
    onBehalfOf :: (Core.Maybe Core.Text),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet.
    part :: [Core.Text],
    -- | Multipart request metadata.
    payload :: Caption,
    -- | Extra parameter to allow automatically syncing the uploaded caption\/transcript with the audio.
    sync :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCaptionsUpdate' with the minimum fields required to make a request.
newYouTubeCaptionsUpdate ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet. See 'part'.
  [Core.Text] ->
  -- |  Multipart request metadata. See 'payload'.
  Caption ->
  YouTubeCaptionsUpdate
newYouTubeCaptionsUpdate part payload =
  YouTubeCaptionsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      onBehalfOf = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      part = part,
      payload = payload,
      sync = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeCaptionsUpdate where
  type Rs YouTubeCaptionsUpdate = Caption
  type
    Scopes YouTubeCaptionsUpdate =
      '[ "https://www.googleapis.com/auth/youtube.force-ssl",
         "https://www.googleapis.com/auth/youtubepartner"
       ]
  requestClient YouTubeCaptionsUpdate {..} =
    go
      part
      xgafv
      accessToken
      callback
      onBehalfOf
      onBehalfOfContentOwner
      sync
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeCaptionsUpdateResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload YouTubeCaptionsUpdate)
  where
  type
    Rs (Core.MediaUpload YouTubeCaptionsUpdate) =
      Caption
  type
    Scopes (Core.MediaUpload YouTubeCaptionsUpdate) =
      Core.Scopes YouTubeCaptionsUpdate
  requestClient
    (Core.MediaUpload YouTubeCaptionsUpdate {..} body) =
      go
        part
        xgafv
        accessToken
        callback
        onBehalfOf
        onBehalfOfContentOwner
        sync
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        youTubeService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy YouTubeCaptionsUpdateResource
            )
            Core.mempty
