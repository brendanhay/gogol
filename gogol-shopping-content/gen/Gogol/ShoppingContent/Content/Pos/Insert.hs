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
-- Module      : Gogol.ShoppingContent.Content.Pos.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a store for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.insert@.
module Gogol.ShoppingContent.Content.Pos.Insert
  ( -- * Resource
    ContentPosInsertResource,

    -- ** Constructing a Request
    newContentPosInsert,
    ContentPosInsert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.pos.insert@ method which the
-- 'ContentPosInsert' request conforms to.
type ContentPosInsertResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "pos"
    Core.:> Core.Capture "targetMerchantId" Core.Word64
    Core.:> "store"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PosStore
    Core.:> Core.Post '[Core.JSON] PosStore

-- | Creates a store for the given merchant.
--
-- /See:/ 'newContentPosInsert' smart constructor.
data ContentPosInsert = ContentPosInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the POS or inventory data provider.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: PosStore,
    -- | The ID of the target merchant.
    targetMerchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPosInsert' with the minimum fields required to make a request.
newContentPosInsert ::
  -- |  The ID of the POS or inventory data provider. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  PosStore ->
  -- |  The ID of the target merchant. See 'targetMerchantId'.
  Core.Word64 ->
  ContentPosInsert
newContentPosInsert merchantId payload targetMerchantId =
  ContentPosInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      targetMerchantId = targetMerchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPosInsert where
  type Rs ContentPosInsert = PosStore
  type
    Scopes ContentPosInsert =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentPosInsert {..} =
    go
      merchantId
      targetMerchantId
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
          (Core.Proxy :: Core.Proxy ContentPosInsertResource)
          Core.mempty
