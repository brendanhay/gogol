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
-- Module      : Gogol.IdentityToolkit.Relyingparty.UploadAccount
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch upload existing user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.uploadAccount@.
module Gogol.IdentityToolkit.Relyingparty.UploadAccount
  ( -- * Resource
    IdentityToolkitRelyingpartyUploadAccountResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyUploadAccount (..),
    newIdentityToolkitRelyingpartyUploadAccount,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.uploadAccount@ method which the
-- 'IdentityToolkitRelyingpartyUploadAccount' request conforms to.
type IdentityToolkitRelyingpartyUploadAccountResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "uploadAccount"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyUploadAccountRequest
    Core.:> Core.Post '[Core.JSON] UploadAccountResponse

-- | Batch upload existing user accounts.
--
-- /See:/ 'newIdentityToolkitRelyingpartyUploadAccount' smart constructor.
newtype IdentityToolkitRelyingpartyUploadAccount = IdentityToolkitRelyingpartyUploadAccount
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyUploadAccountRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyUploadAccount' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyUploadAccount ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyUploadAccountRequest ->
  IdentityToolkitRelyingpartyUploadAccount
newIdentityToolkitRelyingpartyUploadAccount payload =
  IdentityToolkitRelyingpartyUploadAccount {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyUploadAccount
  where
  type
    Rs IdentityToolkitRelyingpartyUploadAccount =
      UploadAccountResponse
  type
    Scopes IdentityToolkitRelyingpartyUploadAccount =
      '[CloudPlatform'FullControl, Firebase'FullControl]
  requestClient IdentityToolkitRelyingpartyUploadAccount {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyUploadAccountResource
          )
          Core.mempty
