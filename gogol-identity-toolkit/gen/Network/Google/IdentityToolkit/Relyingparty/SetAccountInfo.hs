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
-- Module      : Network.Google.IdentityToolkit.Relyingparty.SetAccountInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set account info for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.setAccountInfo@.
module Network.Google.IdentityToolkit.Relyingparty.SetAccountInfo
  ( -- * Resource
    IdentityToolkitRelyingpartySetAccountInfoResource,

    -- ** Constructing a Request
    newIdentityToolkitRelyingpartySetAccountInfo,
    IdentityToolkitRelyingpartySetAccountInfo,
  )
where

import Network.Google.IdentityToolkit.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.setAccountInfo@ method which the
-- 'IdentityToolkitRelyingpartySetAccountInfo' request conforms to.
type IdentityToolkitRelyingpartySetAccountInfoResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "setAccountInfo"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartySetAccountInfoRequest
    Core.:> Core.Post '[Core.JSON] SetAccountInfoResponse

-- | Set account info for a user.
--
-- /See:/ 'newIdentityToolkitRelyingpartySetAccountInfo' smart constructor.
newtype IdentityToolkitRelyingpartySetAccountInfo = IdentityToolkitRelyingpartySetAccountInfo
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartySetAccountInfoRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartySetAccountInfo' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartySetAccountInfo ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartySetAccountInfoRequest ->
  IdentityToolkitRelyingpartySetAccountInfo
newIdentityToolkitRelyingpartySetAccountInfo payload =
  IdentityToolkitRelyingpartySetAccountInfo {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartySetAccountInfo
  where
  type
    Rs IdentityToolkitRelyingpartySetAccountInfo =
      SetAccountInfoResponse
  type
    Scopes IdentityToolkitRelyingpartySetAccountInfo =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IdentityToolkitRelyingpartySetAccountInfo {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartySetAccountInfoResource
            )
            Core.mempty
