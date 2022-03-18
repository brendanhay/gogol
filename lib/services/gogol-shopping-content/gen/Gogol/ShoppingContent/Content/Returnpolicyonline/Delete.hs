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
-- Module      : Gogol.ShoppingContent.Content.Returnpolicyonline.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing return policy.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.delete@.
module Gogol.ShoppingContent.Content.Returnpolicyonline.Delete
  ( -- * Resource
    ContentReturnpolicyonlineDeleteResource,

    -- ** Constructing a Request
    newContentReturnpolicyonlineDelete,
    ContentReturnpolicyonlineDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.delete@ method which the
-- 'ContentReturnpolicyonlineDelete' request conforms to.
type ContentReturnpolicyonlineDeleteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "returnpolicyonline"
    Core.:> Core.Capture "returnPolicyId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an existing return policy.
--
-- /See:/ 'newContentReturnpolicyonlineDelete' smart constructor.
data ContentReturnpolicyonlineDelete = ContentReturnpolicyonlineDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id of the merchant for which to retrieve the return policy online object.
    merchantId :: Core.Int64,
    -- | Required. The id of the return policy to delete.
    returnPolicyId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentReturnpolicyonlineDelete' with the minimum fields required to make a request.
newContentReturnpolicyonlineDelete ::
  -- |  Required. The id of the merchant for which to retrieve the return policy online object. See 'merchantId'.
  Core.Int64 ->
  -- |  Required. The id of the return policy to delete. See 'returnPolicyId'.
  Core.Text ->
  ContentReturnpolicyonlineDelete
newContentReturnpolicyonlineDelete merchantId returnPolicyId =
  ContentReturnpolicyonlineDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      returnPolicyId = returnPolicyId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentReturnpolicyonlineDelete
  where
  type Rs ContentReturnpolicyonlineDelete = ()
  type
    Scopes ContentReturnpolicyonlineDelete =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentReturnpolicyonlineDelete {..} =
    go
      merchantId
      returnPolicyId
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
          ( Core.Proxy ::
              Core.Proxy ContentReturnpolicyonlineDeleteResource
          )
          Core.mempty
