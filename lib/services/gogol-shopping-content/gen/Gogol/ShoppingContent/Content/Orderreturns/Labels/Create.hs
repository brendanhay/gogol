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
-- Module      : Gogol.ShoppingContent.Content.Orderreturns.Labels.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Links a return shipping label to a return id. You can only create one return label per return id. Since the label is sent to the buyer, the linked return label cannot be updated or deleted. If you try to create multiple return shipping labels for a single return id, every create request except the first will fail.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.labels.create@.
module Gogol.ShoppingContent.Content.Orderreturns.Labels.Create
  ( -- * Resource
    ContentOrderreturnsLabelsCreateResource,

    -- ** Constructing a Request
    newContentOrderreturnsLabelsCreate,
    ContentOrderreturnsLabelsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.labels.create@ method which the
-- 'ContentOrderreturnsLabelsCreate' request conforms to.
type ContentOrderreturnsLabelsCreateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "orderreturns"
    Core.:> Core.Capture "returnId" Core.Text
    Core.:> "labels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReturnShippingLabel
    Core.:> Core.Post '[Core.JSON] ReturnShippingLabel

-- | Links a return shipping label to a return id. You can only create one return label per return id. Since the label is sent to the buyer, the linked return label cannot be updated or deleted. If you try to create multiple return shipping labels for a single return id, every create request except the first will fail.
--
-- /See:/ 'newContentOrderreturnsLabelsCreate' smart constructor.
data ContentOrderreturnsLabelsCreate = ContentOrderreturnsLabelsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The merchant the Return Shipping Label belongs to.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ReturnShippingLabel,
    -- | Required. Provide the Google-generated merchant order return ID.
    returnId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrderreturnsLabelsCreate' with the minimum fields required to make a request.
newContentOrderreturnsLabelsCreate ::
  -- |  Required. The merchant the Return Shipping Label belongs to. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ReturnShippingLabel ->
  -- |  Required. Provide the Google-generated merchant order return ID. See 'returnId'.
  Core.Text ->
  ContentOrderreturnsLabelsCreate
newContentOrderreturnsLabelsCreate merchantId payload returnId =
  ContentOrderreturnsLabelsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      returnId = returnId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentOrderreturnsLabelsCreate
  where
  type
    Rs ContentOrderreturnsLabelsCreate =
      ReturnShippingLabel
  type
    Scopes ContentOrderreturnsLabelsCreate =
      '[Content'FullControl]
  requestClient ContentOrderreturnsLabelsCreate {..} =
    go
      merchantId
      returnId
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
              Core.Proxy ContentOrderreturnsLabelsCreateResource
          )
          Core.mempty
