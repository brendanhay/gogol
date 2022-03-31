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
-- Module      : Gogol.Blogger.Comments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists comments.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.list@.
module Gogol.Blogger.Comments.List
  ( -- * Resource
    BloggerCommentsListResource,

    -- ** Constructing a Request
    newBloggerCommentsList,
    BloggerCommentsList,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.comments.list@ method which the
-- 'BloggerCommentsList' request conforms to.
type BloggerCommentsListResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.Capture "postId" Core.Text
    Core.:> "comments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParam "fetchBodies" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParam "status" CommentsListStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" CommentsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CommentList

-- | Lists comments.
--
-- /See:/ 'newBloggerCommentsList' smart constructor.
data BloggerCommentsList = BloggerCommentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    endDate :: (Core.Maybe Core.Text),
    -- |
    fetchBodies :: (Core.Maybe Core.Bool),
    -- |
    maxResults :: (Core.Maybe Core.Word32),
    -- |
    pageToken :: (Core.Maybe Core.Text),
    -- |
    postId :: Core.Text,
    -- |
    startDate :: (Core.Maybe Core.Text),
    -- |
    status :: (Core.Maybe CommentsListStatus),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- |
    view :: (Core.Maybe CommentsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerCommentsList' with the minimum fields required to make a request.
newBloggerCommentsList ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'postId'.
  Core.Text ->
  BloggerCommentsList
newBloggerCommentsList blogId postId =
  BloggerCommentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      endDate = Core.Nothing,
      fetchBodies = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      postId = postId,
      startDate = Core.Nothing,
      status = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerCommentsList where
  type Rs BloggerCommentsList = CommentList
  type
    Scopes BloggerCommentsList =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerCommentsList {..} =
    go
      blogId
      postId
      xgafv
      accessToken
      callback
      endDate
      fetchBodies
      maxResults
      pageToken
      startDate
      status
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BloggerCommentsListResource
          )
          Core.mempty
