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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Requestphoneverification
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request verification code to start phone verification.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.requestphoneverification@.
module Gogol.ShoppingContent.Content.Accounts.Requestphoneverification
  ( -- * Resource
    ContentAccountsRequestphoneverificationResource,

    -- ** Constructing a Request
    ContentAccountsRequestphoneverification (..),
    newContentAccountsRequestphoneverification,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.requestphoneverification@ method which the
-- 'ContentAccountsRequestphoneverification' request conforms to.
type ContentAccountsRequestphoneverificationResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "requestphoneverification"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RequestPhoneVerificationRequest
    Core.:> Core.Post '[Core.JSON] RequestPhoneVerificationResponse

-- | Request verification code to start phone verification.
--
-- /See:/ 'newContentAccountsRequestphoneverification' smart constructor.
data ContentAccountsRequestphoneverification = ContentAccountsRequestphoneverification
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: RequestPhoneVerificationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsRequestphoneverification' with the minimum fields required to make a request.
newContentAccountsRequestphoneverification ::
  -- |  Required. The ID of the account. See 'accountId'.
  Core.Int64 ->
  -- |  Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  RequestPhoneVerificationRequest ->
  ContentAccountsRequestphoneverification
newContentAccountsRequestphoneverification
  accountId
  merchantId
  payload =
    ContentAccountsRequestphoneverification
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        accountId = accountId,
        callback = Core.Nothing,
        merchantId = merchantId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ContentAccountsRequestphoneverification where
  type
    Rs ContentAccountsRequestphoneverification =
      RequestPhoneVerificationResponse
  type
    Scopes ContentAccountsRequestphoneverification =
      '[Content'FullControl]
  requestClient ContentAccountsRequestphoneverification {..} =
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
          ( Core.Proxy ::
              Core.Proxy ContentAccountsRequestphoneverificationResource
          )
          Core.mempty
