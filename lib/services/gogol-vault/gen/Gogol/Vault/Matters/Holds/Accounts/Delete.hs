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
-- Module      : Gogol.Vault.Matters.Holds.Accounts.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an account from a hold.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.accounts.delete@.
module Gogol.Vault.Matters.Holds.Accounts.Delete
    (
    -- * Resource
      VaultMattersHoldsAccountsDeleteResource

    -- ** Constructing a Request
    , newVaultMattersHoldsAccountsDelete
    , VaultMattersHoldsAccountsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.accounts.delete@ method which the
-- 'VaultMattersHoldsAccountsDelete' request conforms to.
type VaultMattersHoldsAccountsDeleteResource =
     "v1" Core.:>
       "matters" Core.:>
         Core.Capture "matterId" Core.Text Core.:>
           "holds" Core.:>
             Core.Capture "holdId" Core.Text Core.:>
               "accounts" Core.:>
                 Core.Capture "accountId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] Empty

-- | Removes an account from a hold.
--
-- /See:/ 'newVaultMattersHoldsAccountsDelete' smart constructor.
data VaultMattersHoldsAccountsDelete = VaultMattersHoldsAccountsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the account to remove from the hold.
    , accountId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The hold ID.
    , holdId :: Core.Text
      -- | The matter ID.
    , matterId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsAccountsDelete' with the minimum fields required to make a request.
newVaultMattersHoldsAccountsDelete 
    ::  Core.Text
       -- ^  The ID of the account to remove from the hold. See 'accountId'.
    -> Core.Text
       -- ^  The hold ID. See 'holdId'.
    -> Core.Text
       -- ^  The matter ID. See 'matterId'.
    -> VaultMattersHoldsAccountsDelete
newVaultMattersHoldsAccountsDelete accountId holdId matterId =
  VaultMattersHoldsAccountsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , holdId = holdId
    , matterId = matterId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           VaultMattersHoldsAccountsDelete
         where
        type Rs VaultMattersHoldsAccountsDelete = Empty
        type Scopes VaultMattersHoldsAccountsDelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient VaultMattersHoldsAccountsDelete{..}
          = go matterId holdId accountId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              vaultService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy VaultMattersHoldsAccountsDeleteResource)
                      Core.mempty

