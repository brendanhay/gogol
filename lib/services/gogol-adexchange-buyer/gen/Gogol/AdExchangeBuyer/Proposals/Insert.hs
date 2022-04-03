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
-- Module      : Gogol.AdExchangeBuyer.Proposals.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create the given list of proposals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.insert@.
module Gogol.AdExchangeBuyer.Proposals.Insert
  ( -- * Resource
    AdExchangeBuyerProposalsInsertResource,

    -- ** Constructing a Request
    AdExchangeBuyerProposalsInsert (..),
    newAdExchangeBuyerProposalsInsert,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.proposals.insert@ method which the
-- 'AdExchangeBuyerProposalsInsert' request conforms to.
type AdExchangeBuyerProposalsInsertResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> "insert"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateOrdersRequest
    Core.:> Core.Post '[Core.JSON] CreateOrdersResponse

-- | Create the given list of proposals
--
-- /See:/ 'newAdExchangeBuyerProposalsInsert' smart constructor.
newtype AdExchangeBuyerProposalsInsert = AdExchangeBuyerProposalsInsert
  { -- | Multipart request metadata.
    payload :: CreateOrdersRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsInsert' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  CreateOrdersRequest ->
  AdExchangeBuyerProposalsInsert
newAdExchangeBuyerProposalsInsert payload =
  AdExchangeBuyerProposalsInsert {payload = payload}

instance
  Core.GoogleRequest
    AdExchangeBuyerProposalsInsert
  where
  type
    Rs AdExchangeBuyerProposalsInsert =
      CreateOrdersResponse
  type
    Scopes AdExchangeBuyerProposalsInsert =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerProposalsInsert {..} =
    go
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerProposalsInsertResource
          )
          Core.mempty
