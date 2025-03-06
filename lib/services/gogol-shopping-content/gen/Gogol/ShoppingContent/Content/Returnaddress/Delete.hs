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
-- Module      : Gogol.ShoppingContent.Content.Returnaddress.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a return address for the given Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnaddress.delete@.
module Gogol.ShoppingContent.Content.Returnaddress.Delete
  ( -- * Resource
    ContentReturnaddressDeleteResource,

    -- ** Constructing a Request
    ContentReturnaddressDelete (..),
    newContentReturnaddressDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.returnaddress.delete@ method which the
-- 'ContentReturnaddressDelete' request conforms to.
type ContentReturnaddressDeleteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "returnaddress"
    Core.:> Core.Capture "returnAddressId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a return address for the given Merchant Center account.
--
-- /See:/ 'newContentReturnaddressDelete' smart constructor.
data ContentReturnaddressDelete = ContentReturnaddressDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The Merchant Center account from which to delete the given return address.
    merchantId :: Core.Word64,
    -- | Return address ID generated by Google.
    returnAddressId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentReturnaddressDelete' with the minimum fields required to make a request.
newContentReturnaddressDelete ::
  -- |  The Merchant Center account from which to delete the given return address. See 'merchantId'.
  Core.Word64 ->
  -- |  Return address ID generated by Google. See 'returnAddressId'.
  Core.Text ->
  ContentReturnaddressDelete
newContentReturnaddressDelete merchantId returnAddressId =
  ContentReturnaddressDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      returnAddressId = returnAddressId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentReturnaddressDelete where
  type Rs ContentReturnaddressDelete = ()
  type Scopes ContentReturnaddressDelete = '[Content'FullControl]
  requestClient ContentReturnaddressDelete {..} =
    go
      merchantId
      returnAddressId
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
          (Core.Proxy :: Core.Proxy ContentReturnaddressDeleteResource)
          Core.mempty
