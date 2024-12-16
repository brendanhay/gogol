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
-- Module      : Gogol.IdentityToolkit.Relyingparty.GetProjectConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get project configuration.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getProjectConfig@.
module Gogol.IdentityToolkit.Relyingparty.GetProjectConfig
    (
    -- * Resource
      IdentityToolkitRelyingpartyGetProjectConfigResource

    -- ** Constructing a Request
    , IdentityToolkitRelyingpartyGetProjectConfig (..)
    , newIdentityToolkitRelyingpartyGetProjectConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.getProjectConfig@ method which the
-- 'IdentityToolkitRelyingpartyGetProjectConfig' request conforms to.
type IdentityToolkitRelyingpartyGetProjectConfigResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "getProjectConfig" Core.:>
             Core.QueryParam "delegatedProjectNumber" Core.Text
               Core.:>
               Core.QueryParam "projectNumber" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON]
                     IdentitytoolkitRelyingpartyGetProjectConfigResponse

-- | Get project configuration.
--
-- /See:/ 'newIdentityToolkitRelyingpartyGetProjectConfig' smart constructor.
data IdentityToolkitRelyingpartyGetProjectConfig = IdentityToolkitRelyingpartyGetProjectConfig
    {
      -- | Delegated GCP project number of the request.
      delegatedProjectNumber :: (Core.Maybe Core.Text)
      -- | GCP project number of the request.
    , projectNumber :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyGetProjectConfig' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyGetProjectConfig 
    ::  IdentityToolkitRelyingpartyGetProjectConfig
newIdentityToolkitRelyingpartyGetProjectConfig =
  IdentityToolkitRelyingpartyGetProjectConfig
    {delegatedProjectNumber = Core.Nothing, projectNumber = Core.Nothing}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartyGetProjectConfig
         where
        type Rs IdentityToolkitRelyingpartyGetProjectConfig =
             IdentitytoolkitRelyingpartyGetProjectConfigResponse
        type Scopes
               IdentityToolkitRelyingpartyGetProjectConfig
             = '[CloudPlatform'FullControl]
        requestClient
          IdentityToolkitRelyingpartyGetProjectConfig{..}
          = go delegatedProjectNumber projectNumber
              (Core.Just Core.AltJSON)
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartyGetProjectConfigResource)
                      Core.mempty

