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
-- Module      : Gogol.BinaryAuthorization.Systempolicy.GetPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current system policy in the specified location.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.systempolicy.getPolicy@.
module Gogol.BinaryAuthorization.Systempolicy.GetPolicy
    (
    -- * Resource
      BinaryAuthorizationSystempolicyGetPolicyResource

    -- ** Constructing a Request
    , BinaryAuthorizationSystempolicyGetPolicy (..)
    , newBinaryAuthorizationSystempolicyGetPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Types

-- | A resource alias for @binaryauthorization.systempolicy.getPolicy@ method which the
-- 'BinaryAuthorizationSystempolicyGetPolicy' request conforms to.
type BinaryAuthorizationSystempolicyGetPolicyResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Policy

-- | Gets the current system policy in the specified location.
--
-- /See:/ 'newBinaryAuthorizationSystempolicyGetPolicy' smart constructor.
data BinaryAuthorizationSystempolicyGetPolicy = BinaryAuthorizationSystempolicyGetPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name, in the format @locations\/*\/policy@. Note that the system policy is not associated with a project.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationSystempolicyGetPolicy' with the minimum fields required to make a request.
newBinaryAuthorizationSystempolicyGetPolicy 
    ::  Core.Text
       -- ^  Required. The resource name, in the format @locations\/*\/policy@. Note that the system policy is not associated with a project. See 'name'.
    -> BinaryAuthorizationSystempolicyGetPolicy
newBinaryAuthorizationSystempolicyGetPolicy name =
  BinaryAuthorizationSystempolicyGetPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BinaryAuthorizationSystempolicyGetPolicy
         where
        type Rs BinaryAuthorizationSystempolicyGetPolicy =
             Policy
        type Scopes BinaryAuthorizationSystempolicyGetPolicy
             = '[CloudPlatform'FullControl]
        requestClient
          BinaryAuthorizationSystempolicyGetPolicy{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              binaryAuthorizationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BinaryAuthorizationSystempolicyGetPolicyResource)
                      Core.mempty

