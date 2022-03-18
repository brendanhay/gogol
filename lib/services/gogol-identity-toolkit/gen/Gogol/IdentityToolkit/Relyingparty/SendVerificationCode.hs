{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IdentityToolkit.Relyingparty.SendVerificationCode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send SMS verification code.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.sendVerificationCode@.
module Gogol.IdentityToolkit.Relyingparty.SendVerificationCode
    (
    -- * Resource
      IdentityToolkitRelyingpartySendVerificationCodeResource

    -- ** Constructing a Request
    , newIdentityToolkitRelyingpartySendVerificationCode
    , IdentityToolkitRelyingpartySendVerificationCode
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.sendVerificationCode@ method which the
-- 'IdentityToolkitRelyingpartySendVerificationCode' request conforms to.
type IdentityToolkitRelyingpartySendVerificationCodeResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "sendVerificationCode" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 IdentitytoolkitRelyingpartySendVerificationCodeRequest
                 Core.:>
                 Core.Post '[Core.JSON]
                   IdentitytoolkitRelyingpartySendVerificationCodeResponse

-- | Send SMS verification code.
--
-- /See:/ 'newIdentityToolkitRelyingpartySendVerificationCode' smart constructor.
newtype IdentityToolkitRelyingpartySendVerificationCode = IdentityToolkitRelyingpartySendVerificationCode
    {
      -- | Multipart request metadata.
      payload :: IdentitytoolkitRelyingpartySendVerificationCodeRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartySendVerificationCode' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartySendVerificationCode 
    ::  IdentitytoolkitRelyingpartySendVerificationCodeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IdentityToolkitRelyingpartySendVerificationCode
newIdentityToolkitRelyingpartySendVerificationCode payload =
  IdentityToolkitRelyingpartySendVerificationCode {payload = payload}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartySendVerificationCode
         where
        type Rs
               IdentityToolkitRelyingpartySendVerificationCode
             =
             IdentitytoolkitRelyingpartySendVerificationCodeResponse
        type Scopes
               IdentityToolkitRelyingpartySendVerificationCode
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IdentityToolkitRelyingpartySendVerificationCode{..}
          = go (Core.Just Core.AltJSON) payload
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartySendVerificationCodeResource)
                      Core.mempty

