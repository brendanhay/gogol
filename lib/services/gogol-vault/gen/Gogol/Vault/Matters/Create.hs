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
-- Module      : Gogol.Vault.Matters.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a matter with the given name and description. The initial state is open, and the owner is the method caller. Returns the created matter with default view.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.create@.
module Gogol.Vault.Matters.Create
    (
    -- * Resource
      VaultMattersCreateResource

    -- ** Constructing a Request
    , newVaultMattersCreate
    , VaultMattersCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.create@ method which the
-- 'VaultMattersCreate' request conforms to.
type VaultMattersCreateResource =
     "v1" Core.:>
       "matters" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Matter Core.:>
                       Core.Post '[Core.JSON] Matter

-- | Creates a matter with the given name and description. The initial state is open, and the owner is the method caller. Returns the created matter with default view.
--
-- /See:/ 'newVaultMattersCreate' smart constructor.
data VaultMattersCreate = VaultMattersCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Matter
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersCreate' with the minimum fields required to make a request.
newVaultMattersCreate 
    ::  Matter
       -- ^  Multipart request metadata. See 'payload'.
    -> VaultMattersCreate
newVaultMattersCreate payload =
  VaultMattersCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersCreate where
        type Rs VaultMattersCreate = Matter
        type Scopes VaultMattersCreate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient VaultMattersCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              vaultService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy VaultMattersCreateResource)
                      Core.mempty

