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
-- Module      : Gogol.AdExchangeBuyer.Creatives.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit a new creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.insert@.
module Gogol.AdExchangeBuyer.Creatives.Insert
  ( -- * Resource
    AdExchangeBuyerCreativesInsertResource,

    -- ** Constructing a Request
    AdExchangeBuyerCreativesInsert (..),
    newAdExchangeBuyerCreativesInsert,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.creatives.insert@ method which the
-- 'AdExchangeBuyerCreativesInsert' request conforms to.
type AdExchangeBuyerCreativesInsertResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "creatives"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Creative
    Core.:> Core.Post '[Core.JSON] Creative

-- | Submit a new creative.
--
-- /See:/ 'newAdExchangeBuyerCreativesInsert' smart constructor.
newtype AdExchangeBuyerCreativesInsert = AdExchangeBuyerCreativesInsert
  { -- | Multipart request metadata.
    payload :: Creative
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerCreativesInsert' with the minimum fields required to make a request.
newAdExchangeBuyerCreativesInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Creative ->
  AdExchangeBuyerCreativesInsert
newAdExchangeBuyerCreativesInsert payload =
  AdExchangeBuyerCreativesInsert {payload = payload}

instance Core.GoogleRequest AdExchangeBuyerCreativesInsert where
  type Rs AdExchangeBuyerCreativesInsert = Creative
  type Scopes AdExchangeBuyerCreativesInsert = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerCreativesInsert {..} =
    go (Core.Just Core.AltJSON) payload adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerCreativesInsertResource)
          Core.mempty
