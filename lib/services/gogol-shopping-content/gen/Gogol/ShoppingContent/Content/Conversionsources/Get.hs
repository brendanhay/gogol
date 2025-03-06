{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ShoppingContent.Content.Conversionsources.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a conversion source.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.conversionsources.get@.
module Gogol.ShoppingContent.Content.Conversionsources.Get
  ( -- * Resource
    ContentConversionsourcesGetResource,

    -- ** Constructing a Request
    ContentConversionsourcesGet (..),
    newContentConversionsourcesGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.conversionsources.get@ method which the
-- 'ContentConversionsourcesGet' request conforms to.
type ContentConversionsourcesGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "conversionsources"
    Core.:> Core.Capture "conversionSourceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ConversionSource

-- | Fetches a conversion source.
--
-- /See:/ 'newContentConversionsourcesGet' smart constructor.
data ContentConversionsourcesGet = ContentConversionsourcesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The REST ID of the collection.
    conversionSourceId :: Core.Text,
    -- | Required. The ID of the account that owns the new conversion source.
    merchantId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentConversionsourcesGet' with the minimum fields required to make a request.
newContentConversionsourcesGet ::
  -- |  Required. The REST ID of the collection. See 'conversionSourceId'.
  Core.Text ->
  -- |  Required. The ID of the account that owns the new conversion source. See 'merchantId'.
  Core.Int64 ->
  ContentConversionsourcesGet
newContentConversionsourcesGet conversionSourceId merchantId =
  ContentConversionsourcesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      conversionSourceId = conversionSourceId,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentConversionsourcesGet where
  type Rs ContentConversionsourcesGet = ConversionSource
  type Scopes ContentConversionsourcesGet = '[Content'FullControl]
  requestClient ContentConversionsourcesGet {..} =
    go
      merchantId
      conversionSourceId
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
          (Core.Proxy :: Core.Proxy ContentConversionsourcesGetResource)
          Core.mempty
