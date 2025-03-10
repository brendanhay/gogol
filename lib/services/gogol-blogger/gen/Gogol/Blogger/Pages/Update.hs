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
-- Module      : Gogol.Blogger.Pages.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a page by blog id and page id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.update@.
module Gogol.Blogger.Pages.Update
  ( -- * Resource
    BloggerPagesUpdateResource,

    -- ** Constructing a Request
    BloggerPagesUpdate (..),
    newBloggerPagesUpdate,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.pages.update@ method which the
-- 'BloggerPagesUpdate' request conforms to.
type BloggerPagesUpdateResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "pages"
    Core.:> Core.Capture "pageId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "publish" Core.Bool
    Core.:> Core.QueryParam "revert" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Page
    Core.:> Core.Put '[Core.JSON] Page

-- | Updates a page by blog id and page id.
--
-- /See:/ 'newBloggerPagesUpdate' smart constructor.
data BloggerPagesUpdate = BloggerPagesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    pageId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Page,
    publish :: (Core.Maybe Core.Bool),
    revert :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPagesUpdate' with the minimum fields required to make a request.
newBloggerPagesUpdate ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'pageId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Page ->
  BloggerPagesUpdate
newBloggerPagesUpdate blogId pageId payload =
  BloggerPagesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      pageId = pageId,
      payload = payload,
      publish = Core.Nothing,
      revert = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerPagesUpdate where
  type Rs BloggerPagesUpdate = Page
  type Scopes BloggerPagesUpdate = '[Blogger'FullControl]
  requestClient BloggerPagesUpdate {..} =
    go
      blogId
      pageId
      xgafv
      accessToken
      callback
      publish
      revert
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPagesUpdateResource)
          Core.mempty
