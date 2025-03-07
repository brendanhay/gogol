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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Updatelabels
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates labels that are assigned to the Merchant Center account by CSS user.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.updatelabels@.
module Gogol.ShoppingContent.Content.Accounts.Updatelabels
  ( -- * Resource
    ContentAccountsUpdatelabelsResource,

    -- ** Constructing a Request
    ContentAccountsUpdatelabels (..),
    newContentAccountsUpdatelabels,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.updatelabels@ method which the
-- 'ContentAccountsUpdatelabels' request conforms to.
type ContentAccountsUpdatelabelsResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Word64
    Core.:> "updatelabels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccountsUpdateLabelsRequest
    Core.:> Core.Post '[Core.JSON] AccountsUpdateLabelsResponse

-- | Updates labels that are assigned to the Merchant Center account by CSS user.
--
-- /See:/ 'newContentAccountsUpdatelabels' smart constructor.
data ContentAccountsUpdatelabels = ContentAccountsUpdatelabels
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the account whose labels are updated.
    accountId :: Core.Word64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the managing account.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: AccountsUpdateLabelsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsUpdatelabels' with the minimum fields required to make a request.
newContentAccountsUpdatelabels ::
  -- |  The ID of the account whose labels are updated. See 'accountId'.
  Core.Word64 ->
  -- |  The ID of the managing account. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  AccountsUpdateLabelsRequest ->
  ContentAccountsUpdatelabels
newContentAccountsUpdatelabels accountId merchantId payload =
  ContentAccountsUpdatelabels
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsUpdatelabels where
  type Rs ContentAccountsUpdatelabels = AccountsUpdateLabelsResponse
  type Scopes ContentAccountsUpdatelabels = '[Content'FullControl]
  requestClient ContentAccountsUpdatelabels {..} =
    go
      merchantId
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
          (Core.Proxy :: Core.Proxy ContentAccountsUpdatelabelsResource)
          Core.mempty
