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
-- Module      : Gogol.AdExchangeBuyer.Marketplacenotes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all the notes associated with a proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacenotes.list@.
module Gogol.AdExchangeBuyer.Marketplacenotes.List
    (
    -- * Resource
      AdExchangeBuyerMarketplacenotesListResource

    -- ** Constructing a Request
    , newAdExchangeBuyerMarketplacenotesList
    , AdExchangeBuyerMarketplacenotesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.marketplacenotes.list@ method which the
-- 'AdExchangeBuyerMarketplacenotesList' request conforms to.
type AdExchangeBuyerMarketplacenotesListResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "proposals" Core.:>
           Core.Capture "proposalId" Core.Text Core.:>
             "notes" Core.:>
               Core.QueryParam "pqlQuery" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] GetOrderNotesResponse

-- | Get all the notes associated with a proposal
--
-- /See:/ 'newAdExchangeBuyerMarketplacenotesList' smart constructor.
data AdExchangeBuyerMarketplacenotesList = AdExchangeBuyerMarketplacenotesList
    {
      -- | Query string to retrieve specific notes. To search the text contents of notes, please use syntax like \"WHERE note.note = \"foo\" or \"WHERE note.note LIKE \"%bar%\"
      pqlQuery :: (Core.Maybe Core.Text)
      -- | The proposalId to get notes for. To search across all proposals specify order_id = \'-\' as part of the URL.
    , proposalId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplacenotesList' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplacenotesList 
    ::  Core.Text
       -- ^  The proposalId to get notes for. To search across all proposals specify order_id = \'-\' as part of the URL. See 'proposalId'.
    -> AdExchangeBuyerMarketplacenotesList
newAdExchangeBuyerMarketplacenotesList proposalId =
  AdExchangeBuyerMarketplacenotesList
    {pqlQuery = Core.Nothing, proposalId = proposalId}

instance Core.GoogleRequest
           AdExchangeBuyerMarketplacenotesList
         where
        type Rs AdExchangeBuyerMarketplacenotesList =
             GetOrderNotesResponse
        type Scopes AdExchangeBuyerMarketplacenotesList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AdExchangeBuyerMarketplacenotesList{..}
          = go proposalId pqlQuery (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerMarketplacenotesListResource)
                      Core.mempty

