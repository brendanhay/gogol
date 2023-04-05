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
-- Module      : Gogol.ShoppingContent.Content.Conversionsources.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information of an existing conversion source.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.conversionsources.patch@.
module Gogol.ShoppingContent.Content.Conversionsources.Patch
  ( -- * Resource
    ContentConversionsourcesPatchResource,

    -- ** Constructing a Request
    ContentConversionsourcesPatch (..),
    newContentConversionsourcesPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.conversionsources.patch@ method which the
-- 'ContentConversionsourcesPatch' request conforms to.
type ContentConversionsourcesPatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "conversionsources"
    Core.:> Core.Capture "conversionSourceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ConversionSource
    Core.:> Core.Patch '[Core.JSON] ConversionSource

-- | Updates information of an existing conversion source.
--
-- /See:/ 'newContentConversionsourcesPatch' smart constructor.
data ContentConversionsourcesPatch = ContentConversionsourcesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the conversion source to be updated.
    conversionSourceId :: Core.Text,
    -- | Required. The ID of the account that owns the new conversion source.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ConversionSource,
    -- | Required. List of fields being updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentConversionsourcesPatch' with the minimum fields required to make a request.
newContentConversionsourcesPatch ::
  -- |  Required. The ID of the conversion source to be updated. See 'conversionSourceId'.
  Core.Text ->
  -- |  Required. The ID of the account that owns the new conversion source. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ConversionSource ->
  ContentConversionsourcesPatch
newContentConversionsourcesPatch conversionSourceId merchantId payload =
  ContentConversionsourcesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      conversionSourceId = conversionSourceId,
      merchantId = merchantId,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentConversionsourcesPatch
  where
  type
    Rs ContentConversionsourcesPatch =
      ConversionSource
  type
    Scopes ContentConversionsourcesPatch =
      '[Content'FullControl]
  requestClient ContentConversionsourcesPatch {..} =
    go
      merchantId
      conversionSourceId
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentConversionsourcesPatchResource
          )
          Core.mempty
