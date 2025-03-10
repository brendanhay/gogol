{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Blogger.PostUserInfos.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one post and user info pair, by post/id and user/id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.postUserInfos.get@.
module Gogol.Blogger.PostUserInfos.Get
  ( -- * Resource
    BloggerPostUserInfosGetResource,

    -- ** Constructing a Request
    BloggerPostUserInfosGet (..),
    newBloggerPostUserInfosGet,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.postUserInfos.get@ method which the
-- 'BloggerPostUserInfosGet' request conforms to.
type BloggerPostUserInfosGetResource =
  "v3"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.Capture "postId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxComments" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PostUserInfo

-- | Gets one post and user info pair, by post/id and user/id.
--
-- /See:/ 'newBloggerPostUserInfosGet' smart constructor.
data BloggerPostUserInfosGet = BloggerPostUserInfosGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    maxComments :: (Core.Maybe Core.Word32),
    postId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostUserInfosGet' with the minimum fields required to make a request.
newBloggerPostUserInfosGet ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'postId'.
  Core.Text ->
  -- |  See 'userId'.
  Core.Text ->
  BloggerPostUserInfosGet
newBloggerPostUserInfosGet blogId postId userId =
  BloggerPostUserInfosGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      maxComments = Core.Nothing,
      postId = postId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest BloggerPostUserInfosGet where
  type Rs BloggerPostUserInfosGet = PostUserInfo
  type
    Scopes BloggerPostUserInfosGet =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerPostUserInfosGet {..} =
    go
      userId
      blogId
      postId
      xgafv
      accessToken
      callback
      maxComments
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPostUserInfosGetResource)
          Core.mempty
