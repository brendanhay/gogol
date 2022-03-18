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
-- Module      : Network.Google.YouTube.Comments.MarkAsSpam
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Expresses the caller\'s opinion that one or more comments should be flagged as spam.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.markAsSpam@.
module Network.Google.YouTube.Comments.MarkAsSpam
  ( -- * Resource
    YouTubeCommentsMarkAsSpamResource,

    -- ** Constructing a Request
    newYouTubeCommentsMarkAsSpam,
    YouTubeCommentsMarkAsSpam,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.markAsSpam@ method which the
-- 'YouTubeCommentsMarkAsSpam' request conforms to.
type YouTubeCommentsMarkAsSpamResource =
  "youtube"
    Core.:> "v3"
    Core.:> "comments"
    Core.:> "markAsSpam"
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Expresses the caller\'s opinion that one or more comments should be flagged as spam.
--
-- /See:/ 'newYouTubeCommentsMarkAsSpam' smart constructor.
data YouTubeCommentsMarkAsSpam = YouTubeCommentsMarkAsSpam
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Flags the comments with the given IDs as spam in the caller\'s opinion.
    id :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCommentsMarkAsSpam' with the minimum fields required to make a request.
newYouTubeCommentsMarkAsSpam ::
  -- |  Flags the comments with the given IDs as spam in the caller\'s opinion. See 'id'.
  [Core.Text] ->
  YouTubeCommentsMarkAsSpam
newYouTubeCommentsMarkAsSpam id =
  YouTubeCommentsMarkAsSpam
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeCommentsMarkAsSpam where
  type Rs YouTubeCommentsMarkAsSpam = ()
  type
    Scopes YouTubeCommentsMarkAsSpam =
      '["https://www.googleapis.com/auth/youtube.force-ssl"]
  requestClient YouTubeCommentsMarkAsSpam {..} =
    go
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeCommentsMarkAsSpamResource
          )
          Core.mempty
