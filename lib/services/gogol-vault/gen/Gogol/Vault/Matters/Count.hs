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
-- Module      : Gogol.Vault.Matters.Count
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Counts the accounts processed by the specified query.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.count@.
module Gogol.Vault.Matters.Count
    (
    -- * Resource
      VaultMattersCountResource

    -- ** Constructing a Request
    , VaultMattersCount (..)
    , newVaultMattersCount
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.count@ method which the
-- 'VaultMattersCount' request conforms to.
type VaultMattersCountResource =
     "v1" Core.:>
       "matters" Core.:>
         Core.CaptureMode "matterId" "count" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CountArtifactsRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Counts the accounts processed by the specified query.
--
-- /See:/ 'newVaultMattersCount' smart constructor.
data VaultMattersCount = VaultMattersCount
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
    , payload :: CountArtifactsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersCount' with the minimum fields required to make a request.
newVaultMattersCount 
    ::  Core.Text
       -- ^  The matter ID. See 'matterId'.
    -> CountArtifactsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> VaultMattersCount
newVaultMattersCount matterId payload =
  VaultMattersCount
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , matterId = matterId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersCount where
        type Rs VaultMattersCount = Operation
        type Scopes VaultMattersCount =
             '[Ediscovery'FullControl]
        requestClient VaultMattersCount{..}
          = go matterId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              vaultService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy VaultMattersCountResource)
                      Core.mempty

