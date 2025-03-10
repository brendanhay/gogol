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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Returncarrier.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Links return carrier to a merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.create@.
module Gogol.ShoppingContent.Content.Accounts.Returncarrier.Create
  ( -- * Resource
    ContentAccountsReturncarrierCreateResource,

    -- ** Constructing a Request
    ContentAccountsReturncarrierCreate (..),
    newContentAccountsReturncarrierCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.create@ method which the
-- 'ContentAccountsReturncarrierCreate' request conforms to.
type ContentAccountsReturncarrierCreateResource =
  "content"
    Core.:> "v2.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "returncarrier"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccountReturnCarrier
    Core.:> Core.Post '[Core.JSON] AccountReturnCarrier

-- | Links return carrier to a merchant account.
--
-- /See:/ 'newContentAccountsReturncarrierCreate' smart constructor.
data ContentAccountsReturncarrierCreate = ContentAccountsReturncarrierCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The Merchant Center Account Id under which the Return Carrier is to be linked.
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AccountReturnCarrier,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsReturncarrierCreate' with the minimum fields required to make a request.
newContentAccountsReturncarrierCreate ::
  -- |  Required. The Merchant Center Account Id under which the Return Carrier is to be linked. See 'accountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  AccountReturnCarrier ->
  ContentAccountsReturncarrierCreate
newContentAccountsReturncarrierCreate accountId payload =
  ContentAccountsReturncarrierCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsReturncarrierCreate where
  type Rs ContentAccountsReturncarrierCreate = AccountReturnCarrier
  type
    Scopes ContentAccountsReturncarrierCreate =
      '[Content'FullControl]
  requestClient ContentAccountsReturncarrierCreate {..} =
    go
      accountId
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
              Core.Proxy ContentAccountsReturncarrierCreateResource
          )
          Core.mempty
