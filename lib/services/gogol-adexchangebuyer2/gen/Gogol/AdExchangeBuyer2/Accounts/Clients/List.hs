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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the clients for the current sponsor buyer.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.list@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.List
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsListResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsClientsList (..),
    newAdExchangeBuyer2AccountsClientsList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.list@ method which the
-- 'AdExchangeBuyer2AccountsClientsList' request conforms to.
type AdExchangeBuyer2AccountsClientsListResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "partnerClientId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListClientsResponse

-- | Lists all the clients for the current sponsor buyer.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsList' smart constructor.
data AdExchangeBuyer2AccountsClientsList = AdExchangeBuyer2AccountsClientsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Unique numerical account ID of the sponsor buyer to list the clients for.
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. The server may return fewer clients than requested. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListClientsResponse.nextPageToken returned from the previous call to the accounts.clients.list method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional unique identifier (from the standpoint of an Ad Exchange sponsor buyer partner) of the client to return. If specified, at most one client will be returned in the response.
    partnerClientId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsList ::
  -- |  Unique numerical account ID of the sponsor buyer to list the clients for. See 'accountId'.
  Core.Int64 ->
  AdExchangeBuyer2AccountsClientsList
newAdExchangeBuyer2AccountsClientsList accountId =
  AdExchangeBuyer2AccountsClientsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      partnerClientId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsList
  where
  type
    Rs AdExchangeBuyer2AccountsClientsList =
      ListClientsResponse
  type
    Scopes AdExchangeBuyer2AccountsClientsList =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyer2AccountsClientsList {..} =
    go
      accountId
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      partnerClientId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adExchangeBuyer2Service
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AdExchangeBuyer2AccountsClientsListResource
          )
          Core.mempty
