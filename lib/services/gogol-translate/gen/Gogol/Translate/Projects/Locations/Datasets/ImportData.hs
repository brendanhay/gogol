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
-- Module      : Gogol.Translate.Projects.Locations.Datasets.ImportData
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Import sentence pairs into translation Dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.datasets.importData@.
module Gogol.Translate.Projects.Locations.Datasets.ImportData
    (
    -- * Resource
      TranslateProjectsLocationsDatasetsImportDataResource

    -- ** Constructing a Request
    , TranslateProjectsLocationsDatasetsImportData (..)
    , newTranslateProjectsLocationsDatasetsImportData
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.datasets.importData@ method which the
-- 'TranslateProjectsLocationsDatasetsImportData' request conforms to.
type TranslateProjectsLocationsDatasetsImportDataResource
     =
     "v3" Core.:>
       Core.CaptureMode "dataset" "importData" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ImportDataRequest Core.:>
                       Core.Post '[Core.JSON] Operation

-- | Import sentence pairs into translation Dataset.
--
-- /See:/ 'newTranslateProjectsLocationsDatasetsImportData' smart constructor.
data TranslateProjectsLocationsDatasetsImportData = TranslateProjectsLocationsDatasetsImportData
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the dataset. In form of @projects\/{project-number-or-id}\/locations\/{location-id}\/datasets\/{dataset-id}@
    , dataset :: Core.Text
      -- | Multipart request metadata.
    , payload :: ImportDataRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDatasetsImportData' with the minimum fields required to make a request.
newTranslateProjectsLocationsDatasetsImportData 
    ::  Core.Text
       -- ^  Required. Name of the dataset. In form of @projects\/{project-number-or-id}\/locations\/{location-id}\/datasets\/{dataset-id}@ See 'dataset'.
    -> ImportDataRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> TranslateProjectsLocationsDatasetsImportData
newTranslateProjectsLocationsDatasetsImportData dataset payload =
  TranslateProjectsLocationsDatasetsImportData
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , dataset = dataset
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsDatasetsImportData
         where
        type Rs TranslateProjectsLocationsDatasetsImportData
             = Operation
        type Scopes
               TranslateProjectsLocationsDatasetsImportData
             =
             '[CloudPlatform'FullControl,
               CloudTranslation'FullControl]
        requestClient
          TranslateProjectsLocationsDatasetsImportData{..}
          = go dataset xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsDatasetsImportDataResource)
                      Core.mempty

