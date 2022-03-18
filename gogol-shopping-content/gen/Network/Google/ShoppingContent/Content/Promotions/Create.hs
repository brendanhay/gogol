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
-- Module      : Network.Google.ShoppingContent.Content.Promotions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a promotion for your Merchant Center account. If the promotion already exists, then it will update the promotion instead.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.promotions.create@.
module Network.Google.ShoppingContent.Content.Promotions.Create
  ( -- * Resource
    ContentPromotionsCreateResource,

    -- ** Constructing a Request
    newContentPromotionsCreate,
    ContentPromotionsCreate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.promotions.create@ method which the
-- 'ContentPromotionsCreate' request conforms to.
type ContentPromotionsCreateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "promotions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Promotion
    Core.:> Core.Post '[Core.JSON] Promotion

-- | Inserts a promotion for your Merchant Center account. If the promotion already exists, then it will update the promotion instead.
--
-- /See:/ 'newContentPromotionsCreate' smart constructor.
data ContentPromotionsCreate = ContentPromotionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account that contains the collection.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: Promotion,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPromotionsCreate' with the minimum fields required to make a request.
newContentPromotionsCreate ::
  -- |  Required. The ID of the account that contains the collection. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  Promotion ->
  ContentPromotionsCreate
newContentPromotionsCreate merchantId payload =
  ContentPromotionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPromotionsCreate where
  type Rs ContentPromotionsCreate = Promotion
  type
    Scopes ContentPromotionsCreate =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentPromotionsCreate {..} =
    go
      merchantId
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
              Core.Proxy ContentPromotionsCreateResource
          )
          Core.mempty
