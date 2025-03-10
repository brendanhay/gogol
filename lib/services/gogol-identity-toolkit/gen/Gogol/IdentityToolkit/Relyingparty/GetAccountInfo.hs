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
-- Module      : Gogol.IdentityToolkit.Relyingparty.GetAccountInfo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the account info.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getAccountInfo@.
module Gogol.IdentityToolkit.Relyingparty.GetAccountInfo
  ( -- * Resource
    IdentityToolkitRelyingpartyGetAccountInfoResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyGetAccountInfo (..),
    newIdentityToolkitRelyingpartyGetAccountInfo,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.getAccountInfo@ method which the
-- 'IdentityToolkitRelyingpartyGetAccountInfo' request conforms to.
type IdentityToolkitRelyingpartyGetAccountInfoResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "getAccountInfo"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyGetAccountInfoRequest
    Core.:> Core.Post '[Core.JSON] GetAccountInfoResponse

-- | Returns the account info.
--
-- /See:/ 'newIdentityToolkitRelyingpartyGetAccountInfo' smart constructor.
newtype IdentityToolkitRelyingpartyGetAccountInfo = IdentityToolkitRelyingpartyGetAccountInfo
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyGetAccountInfoRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyGetAccountInfo' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyGetAccountInfo ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyGetAccountInfoRequest ->
  IdentityToolkitRelyingpartyGetAccountInfo
newIdentityToolkitRelyingpartyGetAccountInfo payload =
  IdentityToolkitRelyingpartyGetAccountInfo {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyGetAccountInfo
  where
  type
    Rs IdentityToolkitRelyingpartyGetAccountInfo =
      GetAccountInfoResponse
  type
    Scopes IdentityToolkitRelyingpartyGetAccountInfo =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartyGetAccountInfo {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyGetAccountInfoResource
          )
          Core.mempty
