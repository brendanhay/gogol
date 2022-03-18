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
-- Module      : Network.Google.ShoppingContent.Content.Accounts.Credentials.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads credentials for the Merchant Center account. If credentials already exist for this Merchant Center account and purpose, this method updates them.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.credentials.create@.
module Network.Google.ShoppingContent.Content.Accounts.Credentials.Create
  ( -- * Resource
    ContentAccountsCredentialsCreateResource,

    -- ** Constructing a Request
    newContentAccountsCredentialsCreate,
    ContentAccountsCredentialsCreate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.credentials.create@ method which the
-- 'ContentAccountsCredentialsCreate' request conforms to.
type ContentAccountsCredentialsCreateResource =
  "content"
    Core.:> "v2.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "credentials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccountCredentials
    Core.:> Core.Post '[Core.JSON] AccountCredentials

-- | Uploads credentials for the Merchant Center account. If credentials already exist for this Merchant Center account and purpose, this method updates them.
--
-- /See:/ 'newContentAccountsCredentialsCreate' smart constructor.
data ContentAccountsCredentialsCreate = ContentAccountsCredentialsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The merchant id of the account these credentials belong to.
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AccountCredentials,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsCredentialsCreate' with the minimum fields required to make a request.
newContentAccountsCredentialsCreate ::
  -- |  Required. The merchant id of the account these credentials belong to. See 'accountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  AccountCredentials ->
  ContentAccountsCredentialsCreate
newContentAccountsCredentialsCreate accountId payload =
  ContentAccountsCredentialsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentAccountsCredentialsCreate
  where
  type
    Rs ContentAccountsCredentialsCreate =
      AccountCredentials
  type
    Scopes ContentAccountsCredentialsCreate =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentAccountsCredentialsCreate {..} =
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
              Core.Proxy ContentAccountsCredentialsCreateResource
          )
          Core.mempty
