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
-- Module      : Gogol.IAM.Permissions.QueryTestablePermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists every permission that you can test on a resource. A permission is testable if you can check whether a principal has that permission on the resource.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.permissions.queryTestablePermissions@.
module Gogol.IAM.Permissions.QueryTestablePermissions
    (
    -- * Resource
      IAMPermissionsQueryTestablePermissionsResource

    -- ** Constructing a Request
    , newIAMPermissionsQueryTestablePermissions
    , IAMPermissionsQueryTestablePermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAM.Types

-- | A resource alias for @iam.permissions.queryTestablePermissions@ method which the
-- 'IAMPermissionsQueryTestablePermissions' request conforms to.
type IAMPermissionsQueryTestablePermissionsResource =
     "v1" Core.:>
       "permissions:queryTestablePermissions" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       QueryTestablePermissionsRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         QueryTestablePermissionsResponse

-- | Lists every permission that you can test on a resource. A permission is testable if you can check whether a principal has that permission on the resource.
--
-- /See:/ 'newIAMPermissionsQueryTestablePermissions' smart constructor.
data IAMPermissionsQueryTestablePermissions = IAMPermissionsQueryTestablePermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: QueryTestablePermissionsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMPermissionsQueryTestablePermissions' with the minimum fields required to make a request.
newIAMPermissionsQueryTestablePermissions 
    ::  QueryTestablePermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMPermissionsQueryTestablePermissions
newIAMPermissionsQueryTestablePermissions payload =
  IAMPermissionsQueryTestablePermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           IAMPermissionsQueryTestablePermissions
         where
        type Rs IAMPermissionsQueryTestablePermissions =
             QueryTestablePermissionsResponse
        type Scopes IAMPermissionsQueryTestablePermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IAMPermissionsQueryTestablePermissions{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              iAMService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMPermissionsQueryTestablePermissionsResource)
                      Core.mempty

