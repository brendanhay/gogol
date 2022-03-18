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
-- Module      : Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace all existing service perimeters in an access policy with the service perimeters provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. Replacements containing errors result in an error response for the first error encountered. Upon an error, replacement are cancelled and existing service perimeters are not affected. The Operation.response field contains ReplaceServicePerimetersResponse.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.replaceAll@.
module Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
    (
    -- * Resource
      AccessContextManagerAccessPoliciesServicePerimetersReplaceAllResource

    -- ** Constructing a Request
    , newAccessContextManagerAccessPoliciesServicePerimetersReplaceAll
    , AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.replaceAll@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersReplaceAll' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersReplaceAllResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "servicePerimeters:replaceAll" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         ReplaceServicePerimetersRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Replace all existing service perimeters in an access policy with the service perimeters provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. Replacements containing errors result in an error response for the first error encountered. Upon an error, replacement are cancelled and existing service perimeters are not affected. The Operation.response field contains ReplaceServicePerimetersResponse.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersReplaceAll' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersReplaceAll = AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the access policy which owns these Service Perimeters. Format: @accessPolicies\/{policy_id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: ReplaceServicePerimetersRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersReplaceAll' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersReplaceAll 
    ::  Core.Text
       -- ^  Required. Resource name for the access policy which owns these Service Perimeters. Format: @accessPolicies\/{policy_id}@ See 'parent'.
    -> ReplaceServicePerimetersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
newAccessContextManagerAccessPoliciesServicePerimetersReplaceAll parent payload =
  AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
         where
        type Rs
               AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
             = Operation
        type Scopes
               AccessContextManagerAccessPoliciesServicePerimetersReplaceAll
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerAccessPoliciesServicePerimetersReplaceAll{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesServicePerimetersReplaceAllResource)
                      Core.mempty

