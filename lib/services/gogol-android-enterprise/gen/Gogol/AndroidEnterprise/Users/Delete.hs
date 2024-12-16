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
-- Module      : Gogol.AndroidEnterprise.Users.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deleted an EMM-managed user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.delete@.
module Gogol.AndroidEnterprise.Users.Delete
    (
    -- * Resource
      AndroidEnterpriseUsersDeleteResource

    -- ** Constructing a Request
    , AndroidEnterpriseUsersDelete (..)
    , newAndroidEnterpriseUsersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.users.delete@ method which the
-- 'AndroidEnterpriseUsersDelete' request conforms to.
type AndroidEnterpriseUsersDeleteResource =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "users" Core.:>
               Core.Capture "userId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Deleted an EMM-managed user.
--
-- /See:/ 'newAndroidEnterpriseUsersDelete' smart constructor.
data AndroidEnterpriseUsersDelete = AndroidEnterpriseUsersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The ID of the user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseUsersDelete' with the minimum fields required to make a request.
newAndroidEnterpriseUsersDelete 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the user. See 'userId'.
    -> AndroidEnterpriseUsersDelete
newAndroidEnterpriseUsersDelete enterpriseId userId =
  AndroidEnterpriseUsersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           AndroidEnterpriseUsersDelete
         where
        type Rs AndroidEnterpriseUsersDelete = ()
        type Scopes AndroidEnterpriseUsersDelete =
             '[Androidenterprise'FullControl]
        requestClient AndroidEnterpriseUsersDelete{..}
          = go enterpriseId userId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidEnterpriseUsersDeleteResource)
                      Core.mempty

