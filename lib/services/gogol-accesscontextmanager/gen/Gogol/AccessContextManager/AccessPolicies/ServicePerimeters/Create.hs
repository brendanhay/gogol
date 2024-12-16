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
-- Module      : Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.create@.
module Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Create
    (
    -- * Resource
      AccessContextManagerAccessPoliciesServicePerimetersCreateResource

    -- ** Constructing a Request
    , AccessContextManagerAccessPoliciesServicePerimetersCreate (..)
    , newAccessContextManagerAccessPoliciesServicePerimetersCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.create@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersCreate' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "servicePerimeters" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] ServicePerimeter Core.:>
                         Core.Post '[Core.JSON] Operation

-- | Creates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersCreate' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersCreate = AccessContextManagerAccessPoliciesServicePerimetersCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the access policy which owns this Service Perimeter. Format: @accessPolicies\/{policy_id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: ServicePerimeter
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersCreate' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersCreate 
    ::  Core.Text
       -- ^  Required. Resource name for the access policy which owns this Service Perimeter. Format: @accessPolicies\/{policy_id}@ See 'parent'.
    -> ServicePerimeter
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessContextManagerAccessPoliciesServicePerimetersCreate
newAccessContextManagerAccessPoliciesServicePerimetersCreate parent payload =
  AccessContextManagerAccessPoliciesServicePerimetersCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesServicePerimetersCreate
         where
        type Rs
               AccessContextManagerAccessPoliciesServicePerimetersCreate
             = Operation
        type Scopes
               AccessContextManagerAccessPoliciesServicePerimetersCreate
             = '[CloudPlatform'FullControl]
        requestClient
          AccessContextManagerAccessPoliciesServicePerimetersCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesServicePerimetersCreateResource)
                      Core.mempty

