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
-- Module      : Gogol.YouTube.Comments.SetModerationStatus
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the moderation status of one or more comments.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.setModerationStatus@.
module Gogol.YouTube.Comments.SetModerationStatus
  ( -- * Resource
    YouTubeCommentsSetModerationStatusResource,

    -- ** Constructing a Request
    newYouTubeCommentsSetModerationStatus,
    YouTubeCommentsSetModerationStatus,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.comments.setModerationStatus@ method which the
-- 'YouTubeCommentsSetModerationStatus' request conforms to.
type YouTubeCommentsSetModerationStatusResource =
  "youtube"
    Core.:> "v3"
    Core.:> "comments"
    Core.:> "setModerationStatus"
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam
              "moderationStatus"
              CommentsSetModerationStatusModerationStatus
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "banAuthor" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Sets the moderation status of one or more comments.
--
-- /See:/ 'newYouTubeCommentsSetModerationStatus' smart constructor.
data YouTubeCommentsSetModerationStatus = YouTubeCommentsSetModerationStatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If set to true the author of the comment gets added to the ban list. This means all future comments of the author will autmomatically be rejected. Only valid in combination with STATUS_REJECTED.
    banAuthor :: Core.Bool,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Modifies the moderation status of the comments with the given IDs
    id :: [Core.Text],
    -- | Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this call. For example, this call does not allow to mark a comment as \'likely spam\'. Valid values: MODERATION/STATUS/PUBLISHED, MODERATION/STATUS/HELD/FOR/REVIEW, MODERATION/STATUS/REJECTED.
    moderationStatus :: CommentsSetModerationStatusModerationStatus,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCommentsSetModerationStatus' with the minimum fields required to make a request.
newYouTubeCommentsSetModerationStatus ::
  -- |  Modifies the moderation status of the comments with the given IDs See 'id'.
  [Core.Text] ->
  -- |  Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this call. For example, this call does not allow to mark a comment as \'likely spam\'. Valid values: MODERATION/STATUS/PUBLISHED, MODERATION/STATUS/HELD/FOR/REVIEW, MODERATION/STATUS/REJECTED. See 'moderationStatus'.
  CommentsSetModerationStatusModerationStatus ->
  YouTubeCommentsSetModerationStatus
newYouTubeCommentsSetModerationStatus id moderationStatus =
  YouTubeCommentsSetModerationStatus
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      banAuthor = Core.False,
      callback = Core.Nothing,
      id = id,
      moderationStatus = moderationStatus,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeCommentsSetModerationStatus
  where
  type Rs YouTubeCommentsSetModerationStatus = ()
  type
    Scopes YouTubeCommentsSetModerationStatus =
      '[Youtube'ForceSsl]
  requestClient YouTubeCommentsSetModerationStatus {..} =
    go
      id
      (Core.Just moderationStatus)
      xgafv
      accessToken
      (Core.Just banAuthor)
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                YouTubeCommentsSetModerationStatusResource
          )
          Core.mempty
