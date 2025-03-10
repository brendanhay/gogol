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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Claimwebsite
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims the website of a Merchant Center sub-account. Merchant accounts with approved third-party CSSs aren\'t required to claim a website.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.claimwebsite@.
module Gogol.ShoppingContent.Content.Accounts.Claimwebsite
  ( -- * Resource
    ContentAccountsClaimwebsiteResource,

    -- ** Constructing a Request
    ContentAccountsClaimwebsite (..),
    newContentAccountsClaimwebsite,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.claimwebsite@ method which the
-- 'ContentAccountsClaimwebsite' request conforms to.
type ContentAccountsClaimwebsiteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Word64
    Core.:> "claimwebsite"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "overwrite" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AccountsClaimWebsiteResponse

-- | Claims the website of a Merchant Center sub-account. Merchant accounts with approved third-party CSSs aren\'t required to claim a website.
--
-- /See:/ 'newContentAccountsClaimwebsite' smart constructor.
data ContentAccountsClaimwebsite = ContentAccountsClaimwebsite
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the account whose website is claimed.
    accountId :: Core.Word64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    merchantId :: Core.Word64,
    -- | Only available to selected merchants, for example multi-client accounts (MCAs) and their sub-accounts. When set to @True@, this option removes any existing claim on the requested website and replaces it with a claim from the account that makes the request.
    overwrite :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsClaimwebsite' with the minimum fields required to make a request.
newContentAccountsClaimwebsite ::
  -- |  The ID of the account whose website is claimed. See 'accountId'.
  Core.Word64 ->
  -- |  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
  Core.Word64 ->
  ContentAccountsClaimwebsite
newContentAccountsClaimwebsite accountId merchantId =
  ContentAccountsClaimwebsite
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      merchantId = merchantId,
      overwrite = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsClaimwebsite where
  type Rs ContentAccountsClaimwebsite = AccountsClaimWebsiteResponse
  type Scopes ContentAccountsClaimwebsite = '[Content'FullControl]
  requestClient ContentAccountsClaimwebsite {..} =
    go
      merchantId
      accountId
      xgafv
      accessToken
      callback
      overwrite
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentAccountsClaimwebsiteResource)
          Core.mempty
