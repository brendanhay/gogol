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
-- Module      : Gogol.Vault.Matters.Holds.Accounts.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an account to a hold. Accounts can be added only to a hold that does not have an organizational unit set. If you try to add an account to an organizational unit-based hold, an error is returned.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.accounts.create@.
module Gogol.Vault.Matters.Holds.Accounts.Create
    (
    -- * Resource
      VaultMattersHoldsAccountsCreateResource

    -- ** Constructing a Request
    , VaultMattersHoldsAccountsCreate (..)
    , newVaultMattersHoldsAccountsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.accounts.create@ method which the
-- 'VaultMattersHoldsAccountsCreate' request conforms to.
type VaultMattersHoldsAccountsCreateResource =
     "v1" Core.:>
       "matters" Core.:>
         Core.Capture "matterId" Core.Text Core.:>
           "holds" Core.:>
             Core.Capture "holdId" Core.Text Core.:>
               "accounts" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] HeldAccount Core.:>
                               Core.Post '[Core.JSON] HeldAccount

-- | Adds an account to a hold. Accounts can be added only to a hold that does not have an organizational unit set. If you try to add an account to an organizational unit-based hold, an error is returned.
--
-- /See:/ 'newVaultMattersHoldsAccountsCreate' smart constructor.
data VaultMattersHoldsAccountsCreate = VaultMattersHoldsAccountsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The hold ID.
    , holdId :: Core.Text
      -- | The matter ID.
    , matterId :: Core.Text
      -- | Multipart request metadata.
    , payload :: HeldAccount
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsAccountsCreate' with the minimum fields required to make a request.
newVaultMattersHoldsAccountsCreate 
    ::  Core.Text
       -- ^  The hold ID. See 'holdId'.
    -> Core.Text
       -- ^  The matter ID. See 'matterId'.
    -> HeldAccount
       -- ^  Multipart request metadata. See 'payload'.
    -> VaultMattersHoldsAccountsCreate
newVaultMattersHoldsAccountsCreate holdId matterId payload =
  VaultMattersHoldsAccountsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , holdId = holdId
    , matterId = matterId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           VaultMattersHoldsAccountsCreate
         where
        type Rs VaultMattersHoldsAccountsCreate = HeldAccount
        type Scopes VaultMattersHoldsAccountsCreate =
             '[Ediscovery'FullControl]
        requestClient VaultMattersHoldsAccountsCreate{..}
          = go matterId holdId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              vaultService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy VaultMattersHoldsAccountsCreateResource)
                      Core.mempty

