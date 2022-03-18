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
-- Module      : Network.Google.AdExchangeBuyer2.Accounts.Creatives.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.update@.
module Network.Google.AdExchangeBuyer2.Accounts.Creatives.Update
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesUpdateResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsCreativesUpdate,
    AdExchangeBuyer2AccountsCreativesUpdate,
  )
where

import Network.Google.AdExchangeBuyer2.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.update@ method which the
-- 'AdExchangeBuyer2AccountsCreativesUpdate' request conforms to.
type AdExchangeBuyer2AccountsCreativesUpdateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.Capture "creativeId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Creative
    Core.:> Core.Put '[Core.JSON] Creative

-- | Updates a creative.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesUpdate' smart constructor.
data AdExchangeBuyer2AccountsCreativesUpdate = AdExchangeBuyer2AccountsCreativesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account that this creative belongs to. Can be used to filter the response of the creatives.list method.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The buyer-defined creative ID of this creative. Can be used to filter the response of the creatives.list method.
    creativeId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Creative,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesUpdate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesUpdate ::
  -- |  The account that this creative belongs to. Can be used to filter the response of the creatives.list method. See 'accountId'.
  Core.Text ->
  -- |  The buyer-defined creative ID of this creative. Can be used to filter the response of the creatives.list method. See 'creativeId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Creative ->
  AdExchangeBuyer2AccountsCreativesUpdate
newAdExchangeBuyer2AccountsCreativesUpdate accountId creativeId payload =
  AdExchangeBuyer2AccountsCreativesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      creativeId = creativeId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsCreativesUpdate
  where
  type
    Rs AdExchangeBuyer2AccountsCreativesUpdate =
      Creative
  type
    Scopes AdExchangeBuyer2AccountsCreativesUpdate =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsCreativesUpdate {..} =
      go
        accountId
        creativeId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsCreativesUpdateResource
            )
            Core.mempty
