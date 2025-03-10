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
-- Module      : Gogol.ShoppingContent.Content.Conversionsources.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Archives an existing conversion source. It will be recoverable for 30 days. This archiving behavior is not typical in the Content API and unique to this service.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.conversionsources.delete@.
module Gogol.ShoppingContent.Content.Conversionsources.Delete
  ( -- * Resource
    ContentConversionsourcesDeleteResource,

    -- ** Constructing a Request
    ContentConversionsourcesDelete (..),
    newContentConversionsourcesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.conversionsources.delete@ method which the
-- 'ContentConversionsourcesDelete' request conforms to.
type ContentConversionsourcesDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] ()

-- | Archives an existing conversion source. It will be recoverable for 30 days. This archiving behavior is not typical in the Content API and unique to this service.
--
-- /See:/ 'newContentConversionsourcesDelete' smart constructor.
data ContentConversionsourcesDelete = ContentConversionsourcesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the conversion source to be deleted.
    conversionSourceId :: Core.Text,
    -- | Required. The ID of the account that owns the new conversion source.
    merchantId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentConversionsourcesDelete' with the minimum fields required to make a request.
newContentConversionsourcesDelete ::
  -- |  Required. The ID of the conversion source to be deleted. See 'conversionSourceId'.
  Core.Text ->
  -- |  Required. The ID of the account that owns the new conversion source. See 'merchantId'.
  Core.Int64 ->
  ContentConversionsourcesDelete
newContentConversionsourcesDelete conversionSourceId merchantId =
  ContentConversionsourcesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      conversionSourceId = conversionSourceId,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentConversionsourcesDelete where
  type Rs ContentConversionsourcesDelete = ()
  type Scopes ContentConversionsourcesDelete = '[Content'FullControl]
  requestClient ContentConversionsourcesDelete {..} =
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
          (Core.Proxy :: Core.Proxy ContentConversionsourcesDeleteResource)
          Core.mempty
