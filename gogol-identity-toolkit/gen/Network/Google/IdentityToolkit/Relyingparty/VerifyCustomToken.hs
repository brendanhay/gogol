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
-- Module      : Network.Google.IdentityToolkit.Relyingparty.VerifyCustomToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the developer asserted ID token.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyCustomToken@.
module Network.Google.IdentityToolkit.Relyingparty.VerifyCustomToken
  ( -- * Resource
    IdentityToolkitRelyingpartyVerifyCustomTokenResource,

    -- ** Constructing a Request
    newIdentityToolkitRelyingpartyVerifyCustomToken,
    IdentityToolkitRelyingpartyVerifyCustomToken,
  )
where

import Network.Google.IdentityToolkit.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.verifyCustomToken@ method which the
-- 'IdentityToolkitRelyingpartyVerifyCustomToken' request conforms to.
type IdentityToolkitRelyingpartyVerifyCustomTokenResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "verifyCustomToken"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    Core.:> Core.Post '[Core.JSON] VerifyCustomTokenResponse

-- | Verifies the developer asserted ID token.
--
-- /See:/ 'newIdentityToolkitRelyingpartyVerifyCustomToken' smart constructor.
newtype IdentityToolkitRelyingpartyVerifyCustomToken = IdentityToolkitRelyingpartyVerifyCustomToken
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyVerifyCustomToken' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyVerifyCustomToken ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyVerifyCustomTokenRequest ->
  IdentityToolkitRelyingpartyVerifyCustomToken
newIdentityToolkitRelyingpartyVerifyCustomToken payload =
  IdentityToolkitRelyingpartyVerifyCustomToken {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyVerifyCustomToken
  where
  type
    Rs IdentityToolkitRelyingpartyVerifyCustomToken =
      VerifyCustomTokenResponse
  type
    Scopes
      IdentityToolkitRelyingpartyVerifyCustomToken =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IdentityToolkitRelyingpartyVerifyCustomToken {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartyVerifyCustomTokenResource
            )
            Core.mempty
