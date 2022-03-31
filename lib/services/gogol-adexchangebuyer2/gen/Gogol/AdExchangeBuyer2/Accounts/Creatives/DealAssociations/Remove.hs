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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the association between a deal and a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.dealAssociations.remove@.
module Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemoveResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsCreativesDealAssociationsRemove,
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemove,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.dealAssociations.remove@ method which the
-- 'AdExchangeBuyer2AccountsCreativesDealAssociationsRemove' request conforms to.
type AdExchangeBuyer2AccountsCreativesDealAssociationsRemoveResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.Capture "creativeId" Core.Text
    Core.:> "dealAssociations:remove"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RemoveDealAssociationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Remove the association between a deal and a creative.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesDealAssociationsRemove' smart constructor.
data AdExchangeBuyer2AccountsCreativesDealAssociationsRemove = AdExchangeBuyer2AccountsCreativesDealAssociationsRemove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account the creative belongs to.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the creative associated with the deal.
    creativeId :: Core.Text,
    -- | Multipart request metadata.
    payload :: RemoveDealAssociationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesDealAssociationsRemove' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesDealAssociationsRemove ::
  -- |  The account the creative belongs to. See 'accountId'.
  Core.Text ->
  -- |  The ID of the creative associated with the deal. See 'creativeId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemoveDealAssociationRequest ->
  AdExchangeBuyer2AccountsCreativesDealAssociationsRemove
newAdExchangeBuyer2AccountsCreativesDealAssociationsRemove accountId creativeId payload =
  AdExchangeBuyer2AccountsCreativesDealAssociationsRemove
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
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemove
  where
  type
    Rs
      AdExchangeBuyer2AccountsCreativesDealAssociationsRemove =
      Empty
  type
    Scopes
      AdExchangeBuyer2AccountsCreativesDealAssociationsRemove =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemove {..} =
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
                  AdExchangeBuyer2AccountsCreativesDealAssociationsRemoveResource
            )
            Core.mempty
