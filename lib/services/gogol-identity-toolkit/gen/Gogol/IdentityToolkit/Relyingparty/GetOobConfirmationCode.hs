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
-- Module      : Gogol.IdentityToolkit.Relyingparty.GetOobConfirmationCode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a code for user action confirmation.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getOobConfirmationCode@.
module Gogol.IdentityToolkit.Relyingparty.GetOobConfirmationCode
  ( -- * Resource
    IdentityToolkitRelyingpartyGetOobConfirmationCodeResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyGetOobConfirmationCode (..),
    newIdentityToolkitRelyingpartyGetOobConfirmationCode,
  )
where

import Gogol.IdentityToolkit.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.getOobConfirmationCode@ method which the
-- 'IdentityToolkitRelyingpartyGetOobConfirmationCode' request conforms to.
type IdentityToolkitRelyingpartyGetOobConfirmationCodeResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "getOobConfirmationCode"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Relyingparty
    Core.:> Core.Post '[Core.JSON] GetOobConfirmationCodeResponse

-- | Get a code for user action confirmation.
--
-- /See:/ 'newIdentityToolkitRelyingpartyGetOobConfirmationCode' smart constructor.
newtype IdentityToolkitRelyingpartyGetOobConfirmationCode = IdentityToolkitRelyingpartyGetOobConfirmationCode
  { -- | Multipart request metadata.
    payload :: Relyingparty
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyGetOobConfirmationCode' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyGetOobConfirmationCode ::
  -- |  Multipart request metadata. See 'payload'.
  Relyingparty ->
  IdentityToolkitRelyingpartyGetOobConfirmationCode
newIdentityToolkitRelyingpartyGetOobConfirmationCode payload =
  IdentityToolkitRelyingpartyGetOobConfirmationCode {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyGetOobConfirmationCode
  where
  type
    Rs
      IdentityToolkitRelyingpartyGetOobConfirmationCode =
      GetOobConfirmationCodeResponse
  type
    Scopes
      IdentityToolkitRelyingpartyGetOobConfirmationCode =
      '[CloudPlatform'FullControl]
  requestClient
    IdentityToolkitRelyingpartyGetOobConfirmationCode {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartyGetOobConfirmationCodeResource
            )
            Core.mempty
