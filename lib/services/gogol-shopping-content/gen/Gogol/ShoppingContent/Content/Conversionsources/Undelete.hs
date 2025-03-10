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
-- Module      : Gogol.ShoppingContent.Content.Conversionsources.Undelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Re-enables an archived conversion source.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.conversionsources.undelete@.
module Gogol.ShoppingContent.Content.Conversionsources.Undelete
  ( -- * Resource
    ContentConversionsourcesUndeleteResource,

    -- ** Constructing a Request
    ContentConversionsourcesUndelete (..),
    newContentConversionsourcesUndelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.conversionsources.undelete@ method which the
-- 'ContentConversionsourcesUndelete' request conforms to.
type ContentConversionsourcesUndeleteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "conversionsources"
    Core.:> Core.CaptureMode "conversionSourceId" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteConversionSourceRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Re-enables an archived conversion source.
--
-- /See:/ 'newContentConversionsourcesUndelete' smart constructor.
data ContentConversionsourcesUndelete = ContentConversionsourcesUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the conversion source to be undeleted.
    conversionSourceId :: Core.Text,
    -- | Required. The ID of the account that owns the new conversion source.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: UndeleteConversionSourceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentConversionsourcesUndelete' with the minimum fields required to make a request.
newContentConversionsourcesUndelete ::
  -- |  Required. The ID of the conversion source to be undeleted. See 'conversionSourceId'.
  Core.Text ->
  -- |  Required. The ID of the account that owns the new conversion source. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteConversionSourceRequest ->
  ContentConversionsourcesUndelete
newContentConversionsourcesUndelete
  conversionSourceId
  merchantId
  payload =
    ContentConversionsourcesUndelete
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        conversionSourceId = conversionSourceId,
        merchantId = merchantId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ContentConversionsourcesUndelete where
  type Rs ContentConversionsourcesUndelete = ()
  type
    Scopes ContentConversionsourcesUndelete =
      '[Content'FullControl]
  requestClient ContentConversionsourcesUndelete {..} =
    go
      merchantId
      conversionSourceId
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
          (Core.Proxy :: Core.Proxy ContentConversionsourcesUndeleteResource)
          Core.mempty
