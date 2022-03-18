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
-- Module      : Gogol.AdExchangeBuyer.Marketplacenotes.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add notes to the proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacenotes.insert@.
module Gogol.AdExchangeBuyer.Marketplacenotes.Insert
    (
    -- * Resource
      AdExchangeBuyerMarketplacenotesInsertResource

    -- ** Constructing a Request
    , newAdExchangeBuyerMarketplacenotesInsert
    , AdExchangeBuyerMarketplacenotesInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.marketplacenotes.insert@ method which the
-- 'AdExchangeBuyerMarketplacenotesInsert' request conforms to.
type AdExchangeBuyerMarketplacenotesInsertResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "proposals" Core.:>
           Core.Capture "proposalId" Core.Text Core.:>
             "notes" Core.:>
               "insert" Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] AddOrderNotesRequest
                     Core.:> Core.Post '[Core.JSON] AddOrderNotesResponse

-- | Add notes to the proposal
--
-- /See:/ 'newAdExchangeBuyerMarketplacenotesInsert' smart constructor.
data AdExchangeBuyerMarketplacenotesInsert = AdExchangeBuyerMarketplacenotesInsert
    {
      -- | Multipart request metadata.
      payload :: AddOrderNotesRequest
      -- | The proposalId to add notes for.
    , proposalId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplacenotesInsert' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplacenotesInsert 
    ::  AddOrderNotesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The proposalId to add notes for. See 'proposalId'.
    -> AdExchangeBuyerMarketplacenotesInsert
newAdExchangeBuyerMarketplacenotesInsert payload proposalId =
  AdExchangeBuyerMarketplacenotesInsert
    {payload = payload, proposalId = proposalId}

instance Core.GoogleRequest
           AdExchangeBuyerMarketplacenotesInsert
         where
        type Rs AdExchangeBuyerMarketplacenotesInsert =
             AddOrderNotesResponse
        type Scopes AdExchangeBuyerMarketplacenotesInsert =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyerMarketplacenotesInsert{..}
          = go proposalId (Core.Just Core.AltJSON) payload
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerMarketplacenotesInsertResource)
                      Core.mempty

