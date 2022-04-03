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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Verifyphonenumber
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates verification code to verify phone number for the account. If successful this will overwrite the value of @accounts.businessinformation.phoneNumber@. Only verified phone number will replace an existing verified phone number.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.verifyphonenumber@.
module Gogol.ShoppingContent.Content.Accounts.Verifyphonenumber
  ( -- * Resource
    ContentAccountsVerifyphonenumberResource,

    -- ** Constructing a Request
    ContentAccountsVerifyphonenumber (..),
    newContentAccountsVerifyphonenumber,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.verifyphonenumber@ method which the
-- 'ContentAccountsVerifyphonenumber' request conforms to.
type ContentAccountsVerifyphonenumberResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "verifyphonenumber"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] VerifyPhoneNumberRequest
    Core.:> Core.Post '[Core.JSON] VerifyPhoneNumberResponse

-- | Validates verification code to verify phone number for the account. If successful this will overwrite the value of @accounts.businessinformation.phoneNumber@. Only verified phone number will replace an existing verified phone number.
--
-- /See:/ 'newContentAccountsVerifyphonenumber' smart constructor.
data ContentAccountsVerifyphonenumber = ContentAccountsVerifyphonenumber
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
    payload :: VerifyPhoneNumberRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsVerifyphonenumber' with the minimum fields required to make a request.
newContentAccountsVerifyphonenumber ::
  -- |  Required. The ID of the account. See 'accountId'.
  Core.Int64 ->
  -- |  Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  VerifyPhoneNumberRequest ->
  ContentAccountsVerifyphonenumber
newContentAccountsVerifyphonenumber accountId merchantId payload =
  ContentAccountsVerifyphonenumber
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentAccountsVerifyphonenumber
  where
  type
    Rs ContentAccountsVerifyphonenumber =
      VerifyPhoneNumberResponse
  type
    Scopes ContentAccountsVerifyphonenumber =
      '[Content'FullControl]
  requestClient ContentAccountsVerifyphonenumber {..} =
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
              Core.Proxy ContentAccountsVerifyphonenumberResource
          )
          Core.mempty
