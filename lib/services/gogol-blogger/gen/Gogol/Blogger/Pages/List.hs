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
-- Module      : Gogol.Blogger.Pages.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists pages.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.list@.
module Gogol.Blogger.Pages.List
  ( -- * Resource
    BloggerPagesListResource,

    -- ** Constructing a Request
    BloggerPagesList (..),
    newBloggerPagesList,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.pages.list@ method which the
-- 'BloggerPagesList' request conforms to.
type BloggerPagesListResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "pages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fetchBodies" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParams "status" PagesListStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" PagesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PageList

-- | Lists pages.
--
-- /See:/ 'newBloggerPagesList' smart constructor.
data BloggerPagesList = BloggerPagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    fetchBodies :: (Core.Maybe Core.Bool),
    -- |
    maxResults :: (Core.Maybe Core.Word32),
    -- |
    pageToken :: (Core.Maybe Core.Text),
    -- |
    status :: (Core.Maybe [PagesListStatus]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- |
    view :: (Core.Maybe PagesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPagesList' with the minimum fields required to make a request.
newBloggerPagesList ::
  -- |  See 'blogId'.
  Core.Text ->
  BloggerPagesList
newBloggerPagesList blogId =
  BloggerPagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      fetchBodies = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      status = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerPagesList where
  type Rs BloggerPagesList = PageList
  type
    Scopes BloggerPagesList =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerPagesList {..} =
    go
      blogId
      xgafv
      accessToken
      callback
      fetchBodies
      maxResults
      pageToken
      (status Core.^. Core._Default)
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPagesListResource)
          Core.mempty
