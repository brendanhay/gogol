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
-- Module      : Gogol.ShoppingContent.Content.Collections.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a collection from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collections.delete@.
module Gogol.ShoppingContent.Content.Collections.Delete
  ( -- * Resource
    ContentCollectionsDeleteResource,

    -- ** Constructing a Request
    ContentCollectionsDelete (..),
    newContentCollectionsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.collections.delete@ method which the
-- 'ContentCollectionsDelete' request conforms to.
type ContentCollectionsDeleteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "collections"
    Core.:> Core.Capture "collectionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a collection from your Merchant Center account.
--
-- /See:/ 'newContentCollectionsDelete' smart constructor.
data ContentCollectionsDelete = ContentCollectionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The collectionId of the collection. CollectionId is the same as the REST ID of the collection.
    collectionId :: Core.Text,
    -- | Required. The ID of the account that contains the collection. This account cannot be a multi-client account.
    merchantId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentCollectionsDelete' with the minimum fields required to make a request.
newContentCollectionsDelete ::
  -- |  Required. The collectionId of the collection. CollectionId is the same as the REST ID of the collection. See 'collectionId'.
  Core.Text ->
  -- |  Required. The ID of the account that contains the collection. This account cannot be a multi-client account. See 'merchantId'.
  Core.Int64 ->
  ContentCollectionsDelete
newContentCollectionsDelete collectionId merchantId =
  ContentCollectionsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      collectionId = collectionId,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentCollectionsDelete where
  type Rs ContentCollectionsDelete = ()
  type Scopes ContentCollectionsDelete = '[Content'FullControl]
  requestClient ContentCollectionsDelete {..} =
    go
      merchantId
      collectionId
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
          (Core.Proxy :: Core.Proxy ContentCollectionsDeleteResource)
          Core.mempty
