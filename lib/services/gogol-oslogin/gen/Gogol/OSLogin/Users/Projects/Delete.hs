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
-- Module      : Gogol.OSLogin.Users.Projects.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a POSIX account.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.projects.delete@.
module Gogol.OSLogin.Users.Projects.Delete
    (
    -- * Resource
      OSLoginUsersProjectsDeleteResource

    -- ** Constructing a Request
    , OSLoginUsersProjectsDelete (..)
    , newOSLoginUsersProjectsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.OSLogin.Types

-- | A resource alias for @oslogin.users.projects.delete@ method which the
-- 'OSLoginUsersProjectsDelete' request conforms to.
type OSLoginUsersProjectsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a POSIX account.
--
-- /See:/ 'newOSLoginUsersProjectsDelete' smart constructor.
data OSLoginUsersProjectsDelete = OSLoginUsersProjectsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A reference to the POSIX account to update. POSIX accounts are identified by the project ID they are associated with. A reference to the POSIX account is in format @users\/{user}\/projects\/{project}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginUsersProjectsDelete' with the minimum fields required to make a request.
newOSLoginUsersProjectsDelete 
    ::  Core.Text
       -- ^  Required. A reference to the POSIX account to update. POSIX accounts are identified by the project ID they are associated with. A reference to the POSIX account is in format @users\/{user}\/projects\/{project}@. See 'name'.
    -> OSLoginUsersProjectsDelete
newOSLoginUsersProjectsDelete name =
  OSLoginUsersProjectsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           OSLoginUsersProjectsDelete
         where
        type Rs OSLoginUsersProjectsDelete = Empty
        type Scopes OSLoginUsersProjectsDelete =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient OSLoginUsersProjectsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              oSLoginService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy OSLoginUsersProjectsDeleteResource)
                      Core.mempty

