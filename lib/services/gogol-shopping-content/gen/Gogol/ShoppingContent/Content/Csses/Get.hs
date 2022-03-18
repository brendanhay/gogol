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
-- Module      : Gogol.ShoppingContent.Content.Csses.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a single CSS domain by ID.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.csses.get@.
module Gogol.ShoppingContent.Content.Csses.Get
  ( -- * Resource
    ContentCssesGetResource,

    -- ** Constructing a Request
    newContentCssesGet,
    ContentCssesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.csses.get@ method which the
-- 'ContentCssesGet' request conforms to.
type ContentCssesGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "cssGroupId" Core.Int64
    Core.:> "csses"
    Core.:> Core.Capture "cssDomainId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Css

-- | Retrieves a single CSS domain by ID.
--
-- /See:/ 'newContentCssesGet' smart constructor.
data ContentCssesGet = ContentCssesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the CSS domain to return.
    cssDomainId :: Core.Int64,
    -- | Required. The ID of the managing account. If this parameter is not the same as <#cssDomainId cssDomainId>, then this ID must be a CSS group ID and @cssDomainId@ must be the ID of a CSS domain affiliated with this group.
    cssGroupId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentCssesGet' with the minimum fields required to make a request.
newContentCssesGet ::
  -- |  Required. The ID of the CSS domain to return. See 'cssDomainId'.
  Core.Int64 ->
  -- |  Required. The ID of the managing account. If this parameter is not the same as <#cssDomainId cssDomainId>, then this ID must be a CSS group ID and @cssDomainId@ must be the ID of a CSS domain affiliated with this group. See 'cssGroupId'.
  Core.Int64 ->
  ContentCssesGet
newContentCssesGet cssDomainId cssGroupId =
  ContentCssesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      cssDomainId = cssDomainId,
      cssGroupId = cssGroupId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentCssesGet where
  type Rs ContentCssesGet = Css
  type
    Scopes ContentCssesGet =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentCssesGet {..} =
    go
      cssGroupId
      cssDomainId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentCssesGetResource)
          Core.mempty
