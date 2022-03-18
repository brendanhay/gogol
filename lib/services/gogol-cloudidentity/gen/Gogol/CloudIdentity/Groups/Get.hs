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
-- Module      : Gogol.CloudIdentity.Groups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a @Group@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.get@.
module Gogol.CloudIdentity.Groups.Get
    (
    -- * Resource
      CloudIdentityGroupsGetResource

    -- ** Constructing a Request
    , newCloudIdentityGroupsGet
    , CloudIdentityGroupsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.get@ method which the
-- 'CloudIdentityGroupsGet' request conforms to.
type CloudIdentityGroupsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Group

-- | Retrieves a @Group@.
--
-- /See:/ 'newCloudIdentityGroupsGet' smart constructor.
data CloudIdentityGroupsGet = CloudIdentityGroupsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@ to retrieve. Must be of the form @groups\/{group}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsGet' with the minimum fields required to make a request.
newCloudIdentityGroupsGet 
    ::  Core.Text
       -- ^  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@ to retrieve. Must be of the form @groups\/{group}@. See 'name'.
    -> CloudIdentityGroupsGet
newCloudIdentityGroupsGet name =
  CloudIdentityGroupsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsGet
         where
        type Rs CloudIdentityGroupsGet = Group
        type Scopes CloudIdentityGroupsGet =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudIdentityGroupsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityGroupsGetResource)
                      Core.mempty

