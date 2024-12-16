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
-- Module      : Gogol.AndroidManagement.Enterprises.Policies.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or creates a policy.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.patch@.
module Gogol.AndroidManagement.Enterprises.Policies.Patch
    (
    -- * Resource
      AndroidManagementEnterprisesPoliciesPatchResource

    -- ** Constructing a Request
    , AndroidManagementEnterprisesPoliciesPatch (..)
    , newAndroidManagementEnterprisesPoliciesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.policies.patch@ method which the
-- 'AndroidManagementEnterprisesPoliciesPatch' request conforms to.
type AndroidManagementEnterprisesPoliciesPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Policy Core.:>
                         Core.Patch '[Core.JSON] Policy

-- | Updates or creates a policy.
--
-- /See:/ 'newAndroidManagementEnterprisesPoliciesPatch' smart constructor.
data AndroidManagementEnterprisesPoliciesPatch = AndroidManagementEnterprisesPoliciesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the policy in the form enterprises\/{enterpriseId}\/policies\/{policyId}.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Policy
      -- | The field mask indicating the fields to update. If not set, all modifiable fields will be modified.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesPoliciesPatch' with the minimum fields required to make a request.
newAndroidManagementEnterprisesPoliciesPatch 
    ::  Core.Text
       -- ^  The name of the policy in the form enterprises\/{enterpriseId}\/policies\/{policyId}. See 'name'.
    -> Policy
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidManagementEnterprisesPoliciesPatch
newAndroidManagementEnterprisesPoliciesPatch name payload =
  AndroidManagementEnterprisesPoliciesPatch
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
           AndroidManagementEnterprisesPoliciesPatch
         where
        type Rs AndroidManagementEnterprisesPoliciesPatch =
             Policy
        type Scopes AndroidManagementEnterprisesPoliciesPatch
             = '[Androidmanagement'FullControl]
        requestClient
          AndroidManagementEnterprisesPoliciesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesPoliciesPatchResource)
                      Core.mempty

