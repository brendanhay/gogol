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
-- Module      : Gogol.Admin.DataTransfer.Applications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an application for the given application ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.applications.get@.
module Gogol.Admin.DataTransfer.Applications.Get
    (
    -- * Resource
      DatatransferApplicationsGetResource

    -- ** Constructing a Request
    , DatatransferApplicationsGet (..)
    , newDatatransferApplicationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.DataTransfer.Types

-- | A resource alias for @datatransfer.applications.get@ method which the
-- 'DatatransferApplicationsGet' request conforms to.
type DatatransferApplicationsGetResource =
     "admin" Core.:>
       "datatransfer" Core.:>
         "v1" Core.:>
           "applications" Core.:>
             Core.Capture "applicationId" Core.Int64 Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Application

-- | Retrieves information about an application for the given application ID.
--
-- /See:/ 'newDatatransferApplicationsGet' smart constructor.
data DatatransferApplicationsGet = DatatransferApplicationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | ID of the application resource to be retrieved.
    , applicationId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatatransferApplicationsGet' with the minimum fields required to make a request.
newDatatransferApplicationsGet 
    ::  Core.Int64
       -- ^  ID of the application resource to be retrieved. See 'applicationId'.
    -> DatatransferApplicationsGet
newDatatransferApplicationsGet applicationId =
  DatatransferApplicationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , applicationId = applicationId
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DatatransferApplicationsGet
         where
        type Rs DatatransferApplicationsGet = Application
        type Scopes DatatransferApplicationsGet =
             '[Admin'Datatransfer, Admin'Datatransfer'Readonly]
        requestClient DatatransferApplicationsGet{..}
          = go applicationId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDataTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DatatransferApplicationsGetResource)
                      Core.mempty

