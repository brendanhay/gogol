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
-- Module      : Gogol.Vault.Matters.Holds.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified hold and releases the accounts or organizational unit covered by the hold. If the data is not preserved by another hold or retention rule, it might be purged.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.delete@.
module Gogol.Vault.Matters.Holds.Delete
    (
    -- * Resource
      VaultMattersHoldsDeleteResource

    -- ** Constructing a Request
    , VaultMattersHoldsDelete (..)
    , newVaultMattersHoldsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.delete@ method which the
-- 'VaultMattersHoldsDelete' request conforms to.
type VaultMattersHoldsDeleteResource =
     "v1" Core.:>
       "matters" Core.:>
         Core.Capture "matterId" Core.Text Core.:>
           "holds" Core.:>
             Core.Capture "holdId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] Empty

-- | Removes the specified hold and releases the accounts or organizational unit covered by the hold. If the data is not preserved by another hold or retention rule, it might be purged.
--
-- /See:/ 'newVaultMattersHoldsDelete' smart constructor.
data VaultMattersHoldsDelete = VaultMattersHoldsDelete
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
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsDelete' with the minimum fields required to make a request.
newVaultMattersHoldsDelete 
    ::  Core.Text
       -- ^  The hold ID. See 'holdId'.
    -> Core.Text
       -- ^  The matter ID. See 'matterId'.
    -> VaultMattersHoldsDelete
newVaultMattersHoldsDelete holdId matterId =
  VaultMattersHoldsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , holdId = holdId
    , matterId = matterId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersHoldsDelete
         where
        type Rs VaultMattersHoldsDelete = Empty
        type Scopes VaultMattersHoldsDelete =
             '[Ediscovery'FullControl]
        requestClient VaultMattersHoldsDelete{..}
          = go matterId holdId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              vaultService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy VaultMattersHoldsDeleteResource)
                      Core.mempty

