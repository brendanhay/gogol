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
-- Module      : Gogol.ShoppingContent.Content.Orderreturns.Acknowledge
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acks an order return in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.acknowledge@.
module Gogol.ShoppingContent.Content.Orderreturns.Acknowledge
  ( -- * Resource
    ContentOrderreturnsAcknowledgeResource,

    -- ** Constructing a Request
    newContentOrderreturnsAcknowledge,
    ContentOrderreturnsAcknowledge,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.acknowledge@ method which the
-- 'ContentOrderreturnsAcknowledge' request conforms to.
type ContentOrderreturnsAcknowledgeResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "orderreturns"
    Core.:> Core.Capture "returnId" Core.Text
    Core.:> "acknowledge"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              OrderreturnsAcknowledgeRequest
    Core.:> Core.Post
              '[Core.JSON]
              OrderreturnsAcknowledgeResponse

-- | Acks an order return in your Merchant Center account.
--
-- /See:/ 'newContentOrderreturnsAcknowledge' smart constructor.
data ContentOrderreturnsAcknowledge = ContentOrderreturnsAcknowledge
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account that manages the order. This cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: OrderreturnsAcknowledgeRequest,
    -- | The ID of the return.
    returnId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrderreturnsAcknowledge' with the minimum fields required to make a request.
newContentOrderreturnsAcknowledge ::
  -- |  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  OrderreturnsAcknowledgeRequest ->
  -- |  The ID of the return. See 'returnId'.
  Core.Text ->
  ContentOrderreturnsAcknowledge
newContentOrderreturnsAcknowledge merchantId payload returnId =
  ContentOrderreturnsAcknowledge
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
    ContentOrderreturnsAcknowledge
  where
  type
    Rs ContentOrderreturnsAcknowledge =
      OrderreturnsAcknowledgeResponse
  type
    Scopes ContentOrderreturnsAcknowledge =
      '[Content'FullControl]
  requestClient ContentOrderreturnsAcknowledge {..} =
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
              Core.Proxy ContentOrderreturnsAcknowledgeResource
          )
          Core.mempty
