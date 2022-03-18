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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific pretargeting configuration
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.get@.
module Gogol.AdExchangeBuyer.PretargetingConfig.Get
    (
    -- * Resource
      AdExchangeBuyerPretargetingConfigGetResource

    -- ** Constructing a Request
    , newAdExchangeBuyerPretargetingConfigGet
    , AdExchangeBuyerPretargetingConfigGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.pretargetingConfig.get@ method which the
-- 'AdExchangeBuyerPretargetingConfigGet' request conforms to.
type AdExchangeBuyerPretargetingConfigGetResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "pretargetingconfigs" Core.:>
           Core.Capture "accountId" Core.Int64 Core.:>
             Core.Capture "configId" Core.Int64 Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] PretargetingConfig

-- | Gets a specific pretargeting configuration
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigGet' smart constructor.
data AdExchangeBuyerPretargetingConfigGet = AdExchangeBuyerPretargetingConfigGet
    {
      -- | The account id to get the pretargeting config for.
      accountId :: Core.Int64
      -- | The specific id of the configuration to retrieve.
    , configId :: Core.Int64
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigGet' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigGet 
    ::  Core.Int64
       -- ^  The account id to get the pretargeting config for. See 'accountId'.
    -> Core.Int64
       -- ^  The specific id of the configuration to retrieve. See 'configId'.
    -> AdExchangeBuyerPretargetingConfigGet
newAdExchangeBuyerPretargetingConfigGet accountId configId =
  AdExchangeBuyerPretargetingConfigGet
    {accountId = accountId, configId = configId}

instance Core.GoogleRequest
           AdExchangeBuyerPretargetingConfigGet
         where
        type Rs AdExchangeBuyerPretargetingConfigGet =
             PretargetingConfig
        type Scopes AdExchangeBuyerPretargetingConfigGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyerPretargetingConfigGet{..}
          = go accountId configId (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerPretargetingConfigGetResource)
                      Core.mempty

