{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IdentityToolkit.Relyingparty.VerifyPassword
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the user entered password.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyPassword@.
module Gogol.IdentityToolkit.Relyingparty.VerifyPassword
    (
    -- * Resource
      IdentityToolkitRelyingpartyVerifyPasswordResource

    -- ** Constructing a Request
    , IdentityToolkitRelyingpartyVerifyPassword (..)
    , newIdentityToolkitRelyingpartyVerifyPassword
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.verifyPassword@ method which the
-- 'IdentityToolkitRelyingpartyVerifyPassword' request conforms to.
type IdentityToolkitRelyingpartyVerifyPasswordResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "verifyPassword" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 IdentitytoolkitRelyingpartyVerifyPasswordRequest
                 Core.:> Core.Post '[Core.JSON] VerifyPasswordResponse

-- | Verifies the user entered password.
--
-- /See:/ 'newIdentityToolkitRelyingpartyVerifyPassword' smart constructor.
newtype IdentityToolkitRelyingpartyVerifyPassword = IdentityToolkitRelyingpartyVerifyPassword
    {
      -- | Multipart request metadata.
      payload :: IdentitytoolkitRelyingpartyVerifyPasswordRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyVerifyPassword' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyVerifyPassword 
    ::  IdentitytoolkitRelyingpartyVerifyPasswordRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IdentityToolkitRelyingpartyVerifyPassword
newIdentityToolkitRelyingpartyVerifyPassword payload =
  IdentityToolkitRelyingpartyVerifyPassword {payload = payload}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartyVerifyPassword
         where
        type Rs IdentityToolkitRelyingpartyVerifyPassword =
             VerifyPasswordResponse
        type Scopes IdentityToolkitRelyingpartyVerifyPassword
             = '[CloudPlatform'FullControl]
        requestClient
          IdentityToolkitRelyingpartyVerifyPassword{..}
          = go (Core.Just Core.AltJSON) payload
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartyVerifyPasswordResource)
                      Core.mempty

