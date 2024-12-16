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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Adaptive MT dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.create@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Create
    (
    -- * Resource
      TranslateProjectsLocationsAdaptiveMtDatasetsCreateResource

    -- ** Constructing a Request
    , TranslateProjectsLocationsAdaptiveMtDatasetsCreate (..)
    , newTranslateProjectsLocationsAdaptiveMtDatasetsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.create@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsCreate' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsCreateResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "adaptiveMtDatasets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] AdaptiveMtDataset Core.:>
                         Core.Post '[Core.JSON] AdaptiveMtDataset

-- | Creates an Adaptive MT dataset.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsCreate' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsCreate = TranslateProjectsLocationsAdaptiveMtDatasetsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the parent project. In form of @projects\/{project-number-or-id}\/locations\/{location-id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: AdaptiveMtDataset
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsCreate' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsCreate 
    ::  Core.Text
       -- ^  Required. Name of the parent project. In form of @projects\/{project-number-or-id}\/locations\/{location-id}@ See 'parent'.
    -> AdaptiveMtDataset
       -- ^  Multipart request metadata. See 'payload'.
    -> TranslateProjectsLocationsAdaptiveMtDatasetsCreate
newTranslateProjectsLocationsAdaptiveMtDatasetsCreate parent payload =
  TranslateProjectsLocationsAdaptiveMtDatasetsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsAdaptiveMtDatasetsCreate
         where
        type Rs
               TranslateProjectsLocationsAdaptiveMtDatasetsCreate
             = AdaptiveMtDataset
        type Scopes
               TranslateProjectsLocationsAdaptiveMtDatasetsCreate
             =
             '[CloudPlatform'FullControl,
               CloudTranslation'FullControl]
        requestClient
          TranslateProjectsLocationsAdaptiveMtDatasetsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsAdaptiveMtDatasetsCreateResource)
                      Core.mempty

