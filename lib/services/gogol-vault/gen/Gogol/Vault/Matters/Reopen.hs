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
-- Module      : Gogol.Vault.Matters.Reopen
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reopens the specified matter. Returns the matter with updated state.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.reopen@.
module Gogol.Vault.Matters.Reopen
    (
    -- * Resource
      VaultMattersReopenResource

    -- ** Constructing a Request
    , newVaultMattersReopen
    , VaultMattersReopen
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.reopen@ method which the
-- 'VaultMattersReopen' request conforms to.
type VaultMattersReopenResource =
     "v1" Core.:>
       "matters" Core.:>
         Core.CaptureMode "matterId" "reopen" Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] ReopenMatterRequest Core.:>
                         Core.Post '[Core.JSON] ReopenMatterResponse

-- | Reopens the specified matter. Returns the matter with updated state.
--
-- /See:/ 'newVaultMattersReopen' smart constructor.
data VaultMattersReopen = VaultMattersReopen
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The matter ID.
    , matterId :: Core.Text
      -- | Multipart request metadata.
    , payload :: ReopenMatterRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersReopen' with the minimum fields required to make a request.
newVaultMattersReopen 
    ::  Core.Text
       -- ^  The matter ID. See 'matterId'.
    -> ReopenMatterRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> VaultMattersReopen
newVaultMattersReopen matterId payload =
  VaultMattersReopen
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , matterId = matterId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersReopen where
        type Rs VaultMattersReopen = ReopenMatterResponse
        type Scopes VaultMattersReopen =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient VaultMattersReopen{..}
          = go matterId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              vaultService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy VaultMattersReopenResource)
                      Core.mempty

