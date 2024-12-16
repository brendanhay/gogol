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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.ImportAdaptiveMtFile
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports an AdaptiveMtFile and adds all of its sentences into the AdaptiveMtDataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.importAdaptiveMtFile@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.ImportAdaptiveMtFile
    (
    -- * Resource
      TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFileResource

    -- ** Constructing a Request
    , TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile (..)
    , newTranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.importAdaptiveMtFile@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFileResource
     =
     "v3" Core.:>
       Core.CaptureMode "parent" "importAdaptiveMtFile"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ImportAdaptiveMtFileRequest
                       Core.:>
                       Core.Post '[Core.JSON] ImportAdaptiveMtFileResponse

-- | Imports an AdaptiveMtFile and adds all of its sentences into the AdaptiveMtDataset.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile = TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the file, in form of @projects\/{project-number-or-id}\/locations\/{location_id}\/adaptiveMtDatasets\/{dataset}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: ImportAdaptiveMtFileRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile 
    ::  Core.Text
       -- ^  Required. The resource name of the file, in form of @projects\/{project-number-or-id}\/locations\/{location_id}\/adaptiveMtDatasets\/{dataset}@ See 'parent'.
    -> ImportAdaptiveMtFileRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
newTranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile parent payload =
  TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
         where
        type Rs
               TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
             = ImportAdaptiveMtFileResponse
        type Scopes
               TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile
             =
             '[CloudPlatform'FullControl,
               CloudTranslation'FullControl]
        requestClient
          TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFileResource)
                      Core.mempty

