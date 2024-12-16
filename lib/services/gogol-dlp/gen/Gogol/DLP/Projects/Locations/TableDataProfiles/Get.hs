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
-- Module      : Gogol.DLP.Projects.Locations.TableDataProfiles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a table data profile.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.tableDataProfiles.get@.
module Gogol.DLP.Projects.Locations.TableDataProfiles.Get
    (
    -- * Resource
      DLPProjectsLocationsTableDataProfilesGetResource

    -- ** Constructing a Request
    , DLPProjectsLocationsTableDataProfilesGet (..)
    , newDLPProjectsLocationsTableDataProfilesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.tableDataProfiles.get@ method which the
-- 'DLPProjectsLocationsTableDataProfilesGet' request conforms to.
type DLPProjectsLocationsTableDataProfilesGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GooglePrivacyDlpV2TableDataProfile

-- | Gets a table data profile.
--
-- /See:/ 'newDLPProjectsLocationsTableDataProfilesGet' smart constructor.
data DLPProjectsLocationsTableDataProfilesGet = DLPProjectsLocationsTableDataProfilesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name, for example @organizations\/12345\/locations\/us\/tableDataProfiles\/53234423@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsTableDataProfilesGet' with the minimum fields required to make a request.
newDLPProjectsLocationsTableDataProfilesGet 
    ::  Core.Text
       -- ^  Required. Resource name, for example @organizations\/12345\/locations\/us\/tableDataProfiles\/53234423@. See 'name'.
    -> DLPProjectsLocationsTableDataProfilesGet
newDLPProjectsLocationsTableDataProfilesGet name =
  DLPProjectsLocationsTableDataProfilesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsTableDataProfilesGet
         where
        type Rs DLPProjectsLocationsTableDataProfilesGet =
             GooglePrivacyDlpV2TableDataProfile
        type Scopes DLPProjectsLocationsTableDataProfilesGet
             = '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsTableDataProfilesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsTableDataProfilesGetResource)
                      Core.mempty

