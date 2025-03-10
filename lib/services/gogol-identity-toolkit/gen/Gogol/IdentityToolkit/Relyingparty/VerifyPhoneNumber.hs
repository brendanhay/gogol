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
-- Module      : Gogol.IdentityToolkit.Relyingparty.VerifyPhoneNumber
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies ownership of a phone number and creates\/updates the user account accordingly.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyPhoneNumber@.
module Gogol.IdentityToolkit.Relyingparty.VerifyPhoneNumber
  ( -- * Resource
    IdentityToolkitRelyingpartyVerifyPhoneNumberResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyVerifyPhoneNumber (..),
    newIdentityToolkitRelyingpartyVerifyPhoneNumber,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.verifyPhoneNumber@ method which the
-- 'IdentityToolkitRelyingpartyVerifyPhoneNumber' request conforms to.
type IdentityToolkitRelyingpartyVerifyPhoneNumberResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "verifyPhoneNumber"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    Core.:> Core.Post
              '[Core.JSON]
              IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse

-- | Verifies ownership of a phone number and creates\/updates the user account accordingly.
--
-- /See:/ 'newIdentityToolkitRelyingpartyVerifyPhoneNumber' smart constructor.
newtype IdentityToolkitRelyingpartyVerifyPhoneNumber = IdentityToolkitRelyingpartyVerifyPhoneNumber
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyVerifyPhoneNumber' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyVerifyPhoneNumber ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest ->
  IdentityToolkitRelyingpartyVerifyPhoneNumber
newIdentityToolkitRelyingpartyVerifyPhoneNumber payload =
  IdentityToolkitRelyingpartyVerifyPhoneNumber {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyVerifyPhoneNumber
  where
  type
    Rs IdentityToolkitRelyingpartyVerifyPhoneNumber =
      IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
  type
    Scopes IdentityToolkitRelyingpartyVerifyPhoneNumber =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartyVerifyPhoneNumber {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyVerifyPhoneNumberResource
          )
          Core.mempty
