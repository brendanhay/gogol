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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Liens.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a Lien by @name@. Callers of this method will require permission on the @parent@ resource. For example, a Lien with a @parent@ of @projects\/1234@ requires permission @resourcemanager.projects.get@
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.get@.
module Gogol.ResourceManager.Cloudresourcemanager.Liens.Get
    (
    -- * Resource
      CloudresourcemanagerLiensGetResource

    -- ** Constructing a Request
    , CloudresourcemanagerLiensGet (..)
    , newCloudresourcemanagerLiensGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.get@ method which the
-- 'CloudresourcemanagerLiensGet' request conforms to.
type CloudresourcemanagerLiensGetResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Lien

-- | Retrieve a Lien by @name@. Callers of this method will require permission on the @parent@ resource. For example, a Lien with a @parent@ of @projects\/1234@ requires permission @resourcemanager.projects.get@
--
-- /See:/ 'newCloudresourcemanagerLiensGet' smart constructor.
data CloudresourcemanagerLiensGet = CloudresourcemanagerLiensGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name\/identifier of the Lien.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLiensGet' with the minimum fields required to make a request.
newCloudresourcemanagerLiensGet 
    ::  Core.Text
       -- ^  Required. The name\/identifier of the Lien. See 'name'.
    -> CloudresourcemanagerLiensGet
newCloudresourcemanagerLiensGet name =
  CloudresourcemanagerLiensGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudresourcemanagerLiensGet
         where
        type Rs CloudresourcemanagerLiensGet = Lien
        type Scopes CloudresourcemanagerLiensGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient CloudresourcemanagerLiensGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudresourcemanagerLiensGetResource)
                      Core.mempty

