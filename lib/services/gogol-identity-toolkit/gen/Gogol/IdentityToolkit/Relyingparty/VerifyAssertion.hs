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
-- Module      : Gogol.IdentityToolkit.Relyingparty.VerifyAssertion
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the assertion returned by the IdP.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyAssertion@.
module Gogol.IdentityToolkit.Relyingparty.VerifyAssertion
    (
    -- * Resource
      IdentityToolkitRelyingpartyVerifyAssertionResource

    -- ** Constructing a Request
    , IdentityToolkitRelyingpartyVerifyAssertion (..)
    , newIdentityToolkitRelyingpartyVerifyAssertion
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.verifyAssertion@ method which the
-- 'IdentityToolkitRelyingpartyVerifyAssertion' request conforms to.
type IdentityToolkitRelyingpartyVerifyAssertionResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "verifyAssertion" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 IdentitytoolkitRelyingpartyVerifyAssertionRequest
                 Core.:>
                 Core.Post '[Core.JSON] VerifyAssertionResponse

-- | Verifies the assertion returned by the IdP.
--
-- /See:/ 'newIdentityToolkitRelyingpartyVerifyAssertion' smart constructor.
newtype IdentityToolkitRelyingpartyVerifyAssertion = IdentityToolkitRelyingpartyVerifyAssertion
    {
      -- | Multipart request metadata.
      payload :: IdentitytoolkitRelyingpartyVerifyAssertionRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyVerifyAssertion' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyVerifyAssertion 
    ::  IdentitytoolkitRelyingpartyVerifyAssertionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IdentityToolkitRelyingpartyVerifyAssertion
newIdentityToolkitRelyingpartyVerifyAssertion payload =
  IdentityToolkitRelyingpartyVerifyAssertion {payload = payload}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartyVerifyAssertion
         where
        type Rs IdentityToolkitRelyingpartyVerifyAssertion =
             VerifyAssertionResponse
        type Scopes
               IdentityToolkitRelyingpartyVerifyAssertion
             = '[CloudPlatform'FullControl]
        requestClient
          IdentityToolkitRelyingpartyVerifyAssertion{..}
          = go (Core.Just Core.AltJSON) payload
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartyVerifyAssertionResource)
                      Core.mempty

