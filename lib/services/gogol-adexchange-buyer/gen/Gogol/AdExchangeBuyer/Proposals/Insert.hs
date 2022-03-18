{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
    (
    -- * Resource
      AdExchangeBuyerProposalsInsertResource

    -- ** Constructing a Request
    , newAdExchangeBuyerProposalsInsert
    , AdExchangeBuyerProposalsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.proposals.insert@ method which the
-- 'AdExchangeBuyerProposalsInsert' request conforms to.
type AdExchangeBuyerProposalsInsertResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "proposals" Core.:>
           "insert" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON] CreateOrdersRequest Core.:>
                 Core.Post '[Core.JSON] CreateOrdersResponse

-- | Create the given list of proposals
--
-- /See:/ 'newAdExchangeBuyerProposalsInsert' smart constructor.
newtype AdExchangeBuyerProposalsInsert = AdExchangeBuyerProposalsInsert
    {
      -- | Multipart request metadata.
      payload :: CreateOrdersRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsInsert' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsInsert 
    ::  CreateOrdersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AdExchangeBuyerProposalsInsert
newAdExchangeBuyerProposalsInsert payload =
  AdExchangeBuyerProposalsInsert {payload = payload}

instance Core.GoogleRequest
           AdExchangeBuyerProposalsInsert
         where
        type Rs AdExchangeBuyerProposalsInsert =
             CreateOrdersResponse
        type Scopes AdExchangeBuyerProposalsInsert =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AdExchangeBuyerProposalsInsert{..}
          = go (Core.Just Core.AltJSON) payload
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeBuyerProposalsInsertResource)
                      Core.mempty

