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
-- Module      : Gogol.CloudShell.Users.Environments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an environment. Returns NOT_FOUND if the environment does not exist.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.get@.
module Gogol.CloudShell.Users.Environments.Get
    (
    -- * Resource
      CloudShellUsersEnvironmentsGetResource

    -- ** Constructing a Request
    , newCloudShellUsersEnvironmentsGet
    , CloudShellUsersEnvironmentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudShell.Types

-- | A resource alias for @cloudshell.users.environments.get@ method which the
-- 'CloudShellUsersEnvironmentsGet' request conforms to.
type CloudShellUsersEnvironmentsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Environment

-- | Gets an environment. Returns NOT_FOUND if the environment does not exist.
--
-- /See:/ 'newCloudShellUsersEnvironmentsGet' smart constructor.
data CloudShellUsersEnvironmentsGet = CloudShellUsersEnvironmentsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the requested resource, for example @users\/me\/environments\/default@ or @users\/someone\@example.com\/environments\/default@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudShellUsersEnvironmentsGet' with the minimum fields required to make a request.
newCloudShellUsersEnvironmentsGet 
    ::  Core.Text
       -- ^  Required. Name of the requested resource, for example @users\/me\/environments\/default@ or @users\/someone\@example.com\/environments\/default@. See 'name'.
    -> CloudShellUsersEnvironmentsGet
newCloudShellUsersEnvironmentsGet name =
  CloudShellUsersEnvironmentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudShellUsersEnvironmentsGet
         where
        type Rs CloudShellUsersEnvironmentsGet = Environment
        type Scopes CloudShellUsersEnvironmentsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudShellUsersEnvironmentsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudShellService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudShellUsersEnvironmentsGetResource)
                      Core.mempty

