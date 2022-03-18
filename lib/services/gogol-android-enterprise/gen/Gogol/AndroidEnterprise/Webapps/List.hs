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
-- Module      : Gogol.AndroidEnterprise.Webapps.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all web apps for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.list@.
module Gogol.AndroidEnterprise.Webapps.List
    (
    -- * Resource
      AndroidEnterpriseWebappsListResource

    -- ** Constructing a Request
    , newAndroidEnterpriseWebappsList
    , AndroidEnterpriseWebappsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.webapps.list@ method which the
-- 'AndroidEnterpriseWebappsList' request conforms to.
type AndroidEnterpriseWebappsListResource =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "webApps" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] WebAppsListResponse

-- | Retrieves the details of all web apps for a given enterprise.
--
-- /See:/ 'newAndroidEnterpriseWebappsList' smart constructor.
data AndroidEnterpriseWebappsList = AndroidEnterpriseWebappsList
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
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseWebappsList' with the minimum fields required to make a request.
newAndroidEnterpriseWebappsList 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> AndroidEnterpriseWebappsList
newAndroidEnterpriseWebappsList enterpriseId =
  AndroidEnterpriseWebappsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseWebappsList
         where
        type Rs AndroidEnterpriseWebappsList =
             WebAppsListResponse
        type Scopes AndroidEnterpriseWebappsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient AndroidEnterpriseWebappsList{..}
          = go enterpriseId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidEnterpriseWebappsListResource)
                      Core.mempty

