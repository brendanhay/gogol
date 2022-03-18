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
-- Module      : Gogol.IdentityToolkit.Relyingparty.GetAccountInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the account info.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getAccountInfo@.
module Gogol.IdentityToolkit.Relyingparty.GetAccountInfo
    (
    -- * Resource
      IdentityToolkitRelyingpartyGetAccountInfoResource

    -- ** Constructing a Request
    , newIdentityToolkitRelyingpartyGetAccountInfo
    , IdentityToolkitRelyingpartyGetAccountInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.getAccountInfo@ method which the
-- 'IdentityToolkitRelyingpartyGetAccountInfo' request conforms to.
type IdentityToolkitRelyingpartyGetAccountInfoResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "getAccountInfo" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 IdentitytoolkitRelyingpartyGetAccountInfoRequest
                 Core.:> Core.Post '[Core.JSON] GetAccountInfoResponse

-- | Returns the account info.
--
-- /See:/ 'newIdentityToolkitRelyingpartyGetAccountInfo' smart constructor.
newtype IdentityToolkitRelyingpartyGetAccountInfo = IdentityToolkitRelyingpartyGetAccountInfo
    {
      -- | Multipart request metadata.
      payload :: IdentitytoolkitRelyingpartyGetAccountInfoRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyGetAccountInfo' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyGetAccountInfo 
    ::  IdentitytoolkitRelyingpartyGetAccountInfoRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IdentityToolkitRelyingpartyGetAccountInfo
newIdentityToolkitRelyingpartyGetAccountInfo payload =
  IdentityToolkitRelyingpartyGetAccountInfo {payload = payload}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartyGetAccountInfo
         where
        type Rs IdentityToolkitRelyingpartyGetAccountInfo =
             GetAccountInfoResponse
        type Scopes IdentityToolkitRelyingpartyGetAccountInfo
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IdentityToolkitRelyingpartyGetAccountInfo{..}
          = go (Core.Just Core.AltJSON) payload
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartyGetAccountInfoResource)
                      Core.mempty

