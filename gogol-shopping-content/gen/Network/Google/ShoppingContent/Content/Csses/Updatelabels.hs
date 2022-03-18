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
-- Module      : Network.Google.ShoppingContent.Content.Csses.Updatelabels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates labels that are assigned to a CSS domain by its CSS group.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.csses.updatelabels@.
module Network.Google.ShoppingContent.Content.Csses.Updatelabels
  ( -- * Resource
    ContentCssesUpdatelabelsResource,

    -- ** Constructing a Request
    newContentCssesUpdatelabels,
    ContentCssesUpdatelabels,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.csses.updatelabels@ method which the
-- 'ContentCssesUpdatelabels' request conforms to.
type ContentCssesUpdatelabelsResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "cssGroupId" Core.Int64
    Core.:> "csses"
    Core.:> Core.Capture "cssDomainId" Core.Int64
    Core.:> "updatelabels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LabelIds
    Core.:> Core.Post '[Core.JSON] Css

-- | Updates labels that are assigned to a CSS domain by its CSS group.
--
-- /See:/ 'newContentCssesUpdatelabels' smart constructor.
data ContentCssesUpdatelabels = ContentCssesUpdatelabels
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the updated CSS domain.
    cssDomainId :: Core.Int64,
    -- | Required. The CSS group ID of the updated CSS domain.
    cssGroupId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: LabelIds,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentCssesUpdatelabels' with the minimum fields required to make a request.
newContentCssesUpdatelabels ::
  -- |  Required. The ID of the updated CSS domain. See 'cssDomainId'.
  Core.Int64 ->
  -- |  Required. The CSS group ID of the updated CSS domain. See 'cssGroupId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  LabelIds ->
  ContentCssesUpdatelabels
newContentCssesUpdatelabels cssDomainId cssGroupId payload =
  ContentCssesUpdatelabels
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      cssDomainId = cssDomainId,
      cssGroupId = cssGroupId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentCssesUpdatelabels where
  type Rs ContentCssesUpdatelabels = Css
  type
    Scopes ContentCssesUpdatelabels =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentCssesUpdatelabels {..} =
    go
      cssGroupId
      cssDomainId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentCssesUpdatelabelsResource
          )
          Core.mempty
