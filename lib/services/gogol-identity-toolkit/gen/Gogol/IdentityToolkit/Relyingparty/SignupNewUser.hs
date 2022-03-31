{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IdentityToolkit.Relyingparty.SignupNewUser
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signup new user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.signupNewUser@.
module Gogol.IdentityToolkit.Relyingparty.SignupNewUser
  ( -- * Resource
    IdentityToolkitRelyingpartySignupNewUserResource,

    -- ** Constructing a Request
    newIdentityToolkitRelyingpartySignupNewUser,
    IdentityToolkitRelyingpartySignupNewUser,
  )
where

import Gogol.IdentityToolkit.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.signupNewUser@ method which the
-- 'IdentityToolkitRelyingpartySignupNewUser' request conforms to.
type IdentityToolkitRelyingpartySignupNewUserResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "signupNewUser"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartySignupNewUserRequest
    Core.:> Core.Post '[Core.JSON] SignupNewUserResponse

-- | Signup new user.
--
-- /See:/ 'newIdentityToolkitRelyingpartySignupNewUser' smart constructor.
newtype IdentityToolkitRelyingpartySignupNewUser = IdentityToolkitRelyingpartySignupNewUser
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartySignupNewUserRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartySignupNewUser' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartySignupNewUser ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartySignupNewUserRequest ->
  IdentityToolkitRelyingpartySignupNewUser
newIdentityToolkitRelyingpartySignupNewUser payload =
  IdentityToolkitRelyingpartySignupNewUser {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartySignupNewUser
  where
  type
    Rs IdentityToolkitRelyingpartySignupNewUser =
      SignupNewUserResponse
  type
    Scopes IdentityToolkitRelyingpartySignupNewUser =
      '[CloudPlatform'FullControl]
  requestClient
    IdentityToolkitRelyingpartySignupNewUser {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartySignupNewUserResource
            )
            Core.mempty
