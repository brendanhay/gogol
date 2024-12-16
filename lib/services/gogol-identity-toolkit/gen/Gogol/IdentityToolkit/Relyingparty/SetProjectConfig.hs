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
-- Module      : Gogol.IdentityToolkit.Relyingparty.SetProjectConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set project configuration.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.setProjectConfig@.
module Gogol.IdentityToolkit.Relyingparty.SetProjectConfig
    (
    -- * Resource
      IdentityToolkitRelyingpartySetProjectConfigResource

    -- ** Constructing a Request
    , IdentityToolkitRelyingpartySetProjectConfig (..)
    , newIdentityToolkitRelyingpartySetProjectConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.setProjectConfig@ method which the
-- 'IdentityToolkitRelyingpartySetProjectConfig' request conforms to.
type IdentityToolkitRelyingpartySetProjectConfigResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "setProjectConfig" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 IdentitytoolkitRelyingpartySetProjectConfigRequest
                 Core.:>
                 Core.Post '[Core.JSON]
                   IdentitytoolkitRelyingpartySetProjectConfigResponse

-- | Set project configuration.
--
-- /See:/ 'newIdentityToolkitRelyingpartySetProjectConfig' smart constructor.
newtype IdentityToolkitRelyingpartySetProjectConfig = IdentityToolkitRelyingpartySetProjectConfig
    {
      -- | Multipart request metadata.
      payload :: IdentitytoolkitRelyingpartySetProjectConfigRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartySetProjectConfig' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartySetProjectConfig 
    ::  IdentitytoolkitRelyingpartySetProjectConfigRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IdentityToolkitRelyingpartySetProjectConfig
newIdentityToolkitRelyingpartySetProjectConfig payload =
  IdentityToolkitRelyingpartySetProjectConfig {payload = payload}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartySetProjectConfig
         where
        type Rs IdentityToolkitRelyingpartySetProjectConfig =
             IdentitytoolkitRelyingpartySetProjectConfigResponse
        type Scopes
               IdentityToolkitRelyingpartySetProjectConfig
             = '[CloudPlatform'FullControl]
        requestClient
          IdentityToolkitRelyingpartySetProjectConfig{..}
          = go (Core.Just Core.AltJSON) payload
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartySetProjectConfigResource)
                      Core.mempty

