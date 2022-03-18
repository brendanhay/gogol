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
-- Module      : Network.Google.IdentityToolkit.Relyingparty.EmailLinkSignin
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.emailLinkSignin@.
module Network.Google.IdentityToolkit.Relyingparty.EmailLinkSignin
  ( -- * Resource
    IdentityToolkitRelyingpartyEmailLinkSigninResource,

    -- ** Constructing a Request
    newIdentityToolkitRelyingpartyEmailLinkSignin,
    IdentityToolkitRelyingpartyEmailLinkSignin,
  )
where

import Network.Google.IdentityToolkit.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.emailLinkSignin@ method which the
-- 'IdentityToolkitRelyingpartyEmailLinkSignin' request conforms to.
type IdentityToolkitRelyingpartyEmailLinkSigninResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "emailLinkSignin"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    Core.:> Core.Post '[Core.JSON] EmailLinkSigninResponse

-- | Reset password for a user.
--
-- /See:/ 'newIdentityToolkitRelyingpartyEmailLinkSignin' smart constructor.
newtype IdentityToolkitRelyingpartyEmailLinkSignin = IdentityToolkitRelyingpartyEmailLinkSignin
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyEmailLinkSigninRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyEmailLinkSignin' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyEmailLinkSignin ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyEmailLinkSigninRequest ->
  IdentityToolkitRelyingpartyEmailLinkSignin
newIdentityToolkitRelyingpartyEmailLinkSignin payload =
  IdentityToolkitRelyingpartyEmailLinkSignin {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyEmailLinkSignin
  where
  type
    Rs IdentityToolkitRelyingpartyEmailLinkSignin =
      EmailLinkSigninResponse
  type
    Scopes
      IdentityToolkitRelyingpartyEmailLinkSignin =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IdentityToolkitRelyingpartyEmailLinkSignin {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartyEmailLinkSigninResource
            )
            Core.mempty
