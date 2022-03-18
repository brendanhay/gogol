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
-- Module      : Gogol.AndroidManagement.Enterprises.Policies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a policy. This operation is only permitted if no devices are currently referencing the policy.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.delete@.
module Gogol.AndroidManagement.Enterprises.Policies.Delete
    (
    -- * Resource
      AndroidManagementEnterprisesPoliciesDeleteResource

    -- ** Constructing a Request
    , newAndroidManagementEnterprisesPoliciesDelete
    , AndroidManagementEnterprisesPoliciesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.policies.delete@ method which the
-- 'AndroidManagementEnterprisesPoliciesDelete' request conforms to.
type AndroidManagementEnterprisesPoliciesDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a policy. This operation is only permitted if no devices are currently referencing the policy.
--
-- /See:/ 'newAndroidManagementEnterprisesPoliciesDelete' smart constructor.
data AndroidManagementEnterprisesPoliciesDelete = AndroidManagementEnterprisesPoliciesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the policy in the form enterprises\/{enterpriseId}\/policies\/{policyId}.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesPoliciesDelete' with the minimum fields required to make a request.
newAndroidManagementEnterprisesPoliciesDelete 
    ::  Core.Text
       -- ^  The name of the policy in the form enterprises\/{enterpriseId}\/policies\/{policyId}. See 'name'.
    -> AndroidManagementEnterprisesPoliciesDelete
newAndroidManagementEnterprisesPoliciesDelete name =
  AndroidManagementEnterprisesPoliciesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidManagementEnterprisesPoliciesDelete
         where
        type Rs AndroidManagementEnterprisesPoliciesDelete =
             Empty
        type Scopes
               AndroidManagementEnterprisesPoliciesDelete
             =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient
          AndroidManagementEnterprisesPoliciesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesPoliciesDeleteResource)
                      Core.mempty

