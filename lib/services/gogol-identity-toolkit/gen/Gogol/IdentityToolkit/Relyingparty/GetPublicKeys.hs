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
-- Module      : Gogol.IdentityToolkit.Relyingparty.GetPublicKeys
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get token signing public key.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getPublicKeys@.
module Gogol.IdentityToolkit.Relyingparty.GetPublicKeys
  ( -- * Resource
    IdentityToolkitRelyingpartyGetPublicKeysResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyGetPublicKeys (..),
    newIdentityToolkitRelyingpartyGetPublicKeys,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.getPublicKeys@ method which the
-- 'IdentityToolkitRelyingpartyGetPublicKeys' request conforms to.
type IdentityToolkitRelyingpartyGetPublicKeysResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "publicKeys"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              IdentitytoolkitRelyingpartyGetPublicKeysResponse

-- | Get token signing public key.
--
-- /See:/ 'newIdentityToolkitRelyingpartyGetPublicKeys' smart constructor.
data IdentityToolkitRelyingpartyGetPublicKeys = IdentityToolkitRelyingpartyGetPublicKeys
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyGetPublicKeys' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyGetPublicKeys ::
  IdentityToolkitRelyingpartyGetPublicKeys
newIdentityToolkitRelyingpartyGetPublicKeys =
  IdentityToolkitRelyingpartyGetPublicKeys

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyGetPublicKeys
  where
  type
    Rs IdentityToolkitRelyingpartyGetPublicKeys =
      IdentitytoolkitRelyingpartyGetPublicKeysResponse
  type
    Scopes IdentityToolkitRelyingpartyGetPublicKeys =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartyGetPublicKeys {} =
    go (Core.Just Core.AltJSON) identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyGetPublicKeysResource
          )
          Core.mempty
