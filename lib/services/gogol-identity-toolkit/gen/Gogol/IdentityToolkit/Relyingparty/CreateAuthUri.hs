{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.IdentityToolkit.Relyingparty.CreateAuthUri
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.createAuthUri@.
module Gogol.IdentityToolkit.Relyingparty.CreateAuthUri
  ( -- * Resource
    IdentityToolkitRelyingpartyCreateAuthUriResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyCreateAuthUri (..),
    newIdentityToolkitRelyingpartyCreateAuthUri,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.createAuthUri@ method which the
-- 'IdentityToolkitRelyingpartyCreateAuthUri' request conforms to.
type IdentityToolkitRelyingpartyCreateAuthUriResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "createAuthUri"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyCreateAuthUriRequest
    Core.:> Core.Post '[Core.JSON] CreateAuthUriResponse

-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ 'newIdentityToolkitRelyingpartyCreateAuthUri' smart constructor.
newtype IdentityToolkitRelyingpartyCreateAuthUri = IdentityToolkitRelyingpartyCreateAuthUri
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyCreateAuthUriRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyCreateAuthUri' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyCreateAuthUri ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyCreateAuthUriRequest ->
  IdentityToolkitRelyingpartyCreateAuthUri
newIdentityToolkitRelyingpartyCreateAuthUri payload =
  IdentityToolkitRelyingpartyCreateAuthUri {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyCreateAuthUri
  where
  type
    Rs IdentityToolkitRelyingpartyCreateAuthUri =
      CreateAuthUriResponse
  type
    Scopes IdentityToolkitRelyingpartyCreateAuthUri =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartyCreateAuthUri {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyCreateAuthUriResource
          )
          Core.mempty
