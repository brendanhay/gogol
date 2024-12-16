{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Accounts.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.patch@.
module Gogol.AdExchangeBuyer.Accounts.Patch
    (
    -- * Resource
      AdExchangeBuyerAccountsPatchResource

    -- ** Constructing a Request
    , AdExchangeBuyerAccountsPatch (..)
    , newAdExchangeBuyerAccountsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.accounts.patch@ method which the
-- 'AdExchangeBuyerAccountsPatch' request conforms to.
type AdExchangeBuyerAccountsPatchResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "accounts" Core.:>
           Core.Capture "id" Core.Int32 Core.:>
             Core.QueryParam "confirmUnsafeAccountChange"
               Core.Bool
               Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.ReqBody '[Core.JSON] Account Core.:>
                   Core.Patch '[Core.JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'newAdExchangeBuyerAccountsPatch' smart constructor.
data AdExchangeBuyerAccountsPatch = AdExchangeBuyerAccountsPatch
    {
      -- | Confirmation for erasing bidder and cookie matching urls.
      confirmUnsafeAccountChange :: (Core.Maybe Core.Bool)
      -- | The account id
    , id :: Core.Int32
      -- | Multipart request metadata.
    , payload :: Account
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerAccountsPatch' with the minimum fields required to make a request.
newAdExchangeBuyerAccountsPatch 
    ::  Core.Int32
       -- ^  The account id See 'id'.
    -> Account
       -- ^  Multipart request metadata. See 'payload'.
    -> AdExchangeBuyerAccountsPatch
newAdExchangeBuyerAccountsPatch id payload =
  AdExchangeBuyerAccountsPatch
    {confirmUnsafeAccountChange = Core.Nothing, id = id, payload = payload}

instance Core.GoogleRequest
           AdExchangeBuyerAccountsPatch
         where
        type Rs AdExchangeBuyerAccountsPatch = Account
        type Scopes AdExchangeBuyerAccountsPatch =
             '[Adexchange'Buyer]
        requestClient AdExchangeBuyerAccountsPatch{..}
          = go id confirmUnsafeAccountChange
              (Core.Just Core.AltJSON)
              payload
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeBuyerAccountsPatchResource)
                      Core.mempty

