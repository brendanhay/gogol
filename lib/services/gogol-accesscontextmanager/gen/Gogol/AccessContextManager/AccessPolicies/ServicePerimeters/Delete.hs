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
-- Module      : Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a service perimeter based on the resource name. The long-running operation from this RPC has a successful status after the service perimeter is removed from long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.delete@.
module Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
    (
    -- * Resource
      AccessContextManagerAccessPoliciesServicePerimetersDeleteResource

    -- ** Constructing a Request
    , AccessContextManagerAccessPoliciesServicePerimetersDelete (..)
    , newAccessContextManagerAccessPoliciesServicePerimetersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.delete@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersDelete' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Operation

-- | Deletes a service perimeter based on the resource name. The long-running operation from this RPC has a successful status after the service perimeter is removed from long-lasting storage.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersDelete' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersDelete = AccessContextManagerAccessPoliciesServicePerimetersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the Service Perimeter. Format: @accessPolicies\/{policy_id}\/servicePerimeters\/{service_perimeter_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersDelete' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersDelete 
    ::  Core.Text
       -- ^  Required. Resource name for the Service Perimeter. Format: @accessPolicies\/{policy_id}\/servicePerimeters\/{service_perimeter_id}@ See 'name'.
    -> AccessContextManagerAccessPoliciesServicePerimetersDelete
newAccessContextManagerAccessPoliciesServicePerimetersDelete name =
  AccessContextManagerAccessPoliciesServicePerimetersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesServicePerimetersDelete
         where
        type Rs
               AccessContextManagerAccessPoliciesServicePerimetersDelete
             = Operation
        type Scopes
               AccessContextManagerAccessPoliciesServicePerimetersDelete
             = '[CloudPlatform'FullControl]
        requestClient
          AccessContextManagerAccessPoliciesServicePerimetersDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesServicePerimetersDeleteResource)
                      Core.mempty

