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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AccessLevels.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an access level. The long-running operation from this RPC has a successful status after the changes to the access level propagate to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.patch@.
module Gogol.AccessContextManager.AccessPolicies.AccessLevels.Patch
    (
    -- * Resource
      AccessContextManagerAccessPoliciesAccessLevelsPatchResource

    -- ** Constructing a Request
    , newAccessContextManagerAccessPoliciesAccessLevelsPatch
    , AccessContextManagerAccessPoliciesAccessLevelsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.patch@ method which the
-- 'AccessContextManagerAccessPoliciesAccessLevelsPatch' request conforms to.
type AccessContextManagerAccessPoliciesAccessLevelsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] AccessLevel Core.:>
                         Core.Patch '[Core.JSON] Operation

-- | Updates an access level. The long-running operation from this RPC has a successful status after the changes to the access level propagate to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAccessLevelsPatch' smart constructor.
data AccessContextManagerAccessPoliciesAccessLevelsPatch = AccessContextManagerAccessPoliciesAccessLevelsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the Access Level. The @short_name@ component must begin with a letter and only include alphanumeric and \'_\'. Format: @accessPolicies\/{access_policy}\/accessLevels\/{access_level}@. The maximum length of the @access_level@ component is 50 characters.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AccessLevel
      -- | Required. Mask to control which fields get updated. Must be non-empty.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAccessLevelsPatch' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAccessLevelsPatch 
    ::  Core.Text
       -- ^  Required. Resource name for the Access Level. The @short_name@ component must begin with a letter and only include alphanumeric and \'_\'. Format: @accessPolicies\/{access_policy}\/accessLevels\/{access_level}@. The maximum length of the @access_level@ component is 50 characters. See 'name'.
    -> AccessLevel
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessContextManagerAccessPoliciesAccessLevelsPatch
newAccessContextManagerAccessPoliciesAccessLevelsPatch name payload =
  AccessContextManagerAccessPoliciesAccessLevelsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesAccessLevelsPatch
         where
        type Rs
               AccessContextManagerAccessPoliciesAccessLevelsPatch
             = Operation
        type Scopes
               AccessContextManagerAccessPoliciesAccessLevelsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerAccessPoliciesAccessLevelsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesAccessLevelsPatchResource)
                      Core.mempty

