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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of the authenticated user\'s pretargeting configurations.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.list@.
module Gogol.AdExchangeBuyer.PretargetingConfig.List
  ( -- * Resource
    AdExchangeBuyerPretargetingConfigListResource,

    -- ** Constructing a Request
    AdExchangeBuyerPretargetingConfigList (..),
    newAdExchangeBuyerPretargetingConfigList,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.pretargetingConfig.list@ method which the
-- 'AdExchangeBuyerPretargetingConfigList' request conforms to.
type AdExchangeBuyerPretargetingConfigListResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "pretargetingconfigs"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PretargetingConfigList

-- | Retrieves a list of the authenticated user\'s pretargeting configurations.
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigList' smart constructor.
newtype AdExchangeBuyerPretargetingConfigList = AdExchangeBuyerPretargetingConfigList
  { -- | The account id to get the pretargeting configs for.
    accountId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigList' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigList ::
  -- |  The account id to get the pretargeting configs for. See 'accountId'.
  Core.Int64 ->
  AdExchangeBuyerPretargetingConfigList
newAdExchangeBuyerPretargetingConfigList accountId =
  AdExchangeBuyerPretargetingConfigList {accountId = accountId}

instance Core.GoogleRequest AdExchangeBuyerPretargetingConfigList where
  type
    Rs AdExchangeBuyerPretargetingConfigList =
      PretargetingConfigList
  type
    Scopes AdExchangeBuyerPretargetingConfigList =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerPretargetingConfigList {..} =
    go accountId (Core.Just Core.AltJSON) adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerPretargetingConfigListResource
          )
          Core.mempty
