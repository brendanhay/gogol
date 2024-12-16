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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an AdaptiveMtFile along with its sentences.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.delete@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.Delete
    (
    -- * Resource
      TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDeleteResource

    -- ** Constructing a Request
    , TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete (..)
    , newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.delete@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDeleteResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes an AdaptiveMtFile along with its sentences.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete = TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the file to delete, in form of @projects\/{project-number-or-id}\/locations\/{location_id}\/adaptiveMtDatasets\/{dataset}\/adaptiveMtFiles\/{file}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the file to delete, in form of @projects\/{project-number-or-id}\/locations\/{location_id}\/adaptiveMtDatasets\/{dataset}\/adaptiveMtFiles\/{file}@ See 'name'.
    -> TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete name =
  TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
         where
        type Rs
               TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
             = Empty
        type Scopes
               TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete
             =
             '[CloudPlatform'FullControl,
               CloudTranslation'FullControl]
        requestClient
          TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDeleteResource)
                      Core.mempty

