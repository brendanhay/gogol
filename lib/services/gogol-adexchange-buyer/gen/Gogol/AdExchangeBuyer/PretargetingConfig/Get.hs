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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific pretargeting configuration
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.get@.
module Gogol.AdExchangeBuyer.PretargetingConfig.Get
  ( -- * Resource
    AdExchangeBuyerPretargetingConfigGetResource,

    -- ** Constructing a Request
    AdExchangeBuyerPretargetingConfigGet (..),
    newAdExchangeBuyerPretargetingConfigGet,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.pretargetingConfig.get@ method which the
-- 'AdExchangeBuyerPretargetingConfigGet' request conforms to.
type AdExchangeBuyerPretargetingConfigGetResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "pretargetingconfigs"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.Capture "configId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PretargetingConfig

-- | Gets a specific pretargeting configuration
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigGet' smart constructor.
data AdExchangeBuyerPretargetingConfigGet = AdExchangeBuyerPretargetingConfigGet
  { -- | The account id to get the pretargeting config for.
    accountId :: Core.Int64,
    -- | The specific id of the configuration to retrieve.
    configId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigGet' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigGet ::
  -- |  The account id to get the pretargeting config for. See 'accountId'.
  Core.Int64 ->
  -- |  The specific id of the configuration to retrieve. See 'configId'.
  Core.Int64 ->
  AdExchangeBuyerPretargetingConfigGet
newAdExchangeBuyerPretargetingConfigGet accountId configId =
  AdExchangeBuyerPretargetingConfigGet
    { accountId = accountId,
      configId = configId
    }

instance Core.GoogleRequest AdExchangeBuyerPretargetingConfigGet where
  type Rs AdExchangeBuyerPretargetingConfigGet = PretargetingConfig
  type
    Scopes AdExchangeBuyerPretargetingConfigGet =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerPretargetingConfigGet {..} =
    go
      accountId
      configId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerPretargetingConfigGetResource
          )
          Core.mempty
