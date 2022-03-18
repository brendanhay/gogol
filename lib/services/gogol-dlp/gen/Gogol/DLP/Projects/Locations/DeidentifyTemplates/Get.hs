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
-- Module      : Gogol.DLP.Projects.Locations.DeidentifyTemplates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a DeidentifyTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.get@.
module Gogol.DLP.Projects.Locations.DeidentifyTemplates.Get
    (
    -- * Resource
      DLPProjectsLocationsDeidentifyTemplatesGetResource

    -- ** Constructing a Request
    , newDLPProjectsLocationsDeidentifyTemplatesGet
    , DLPProjectsLocationsDeidentifyTemplatesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.get@ method which the
-- 'DLPProjectsLocationsDeidentifyTemplatesGet' request conforms to.
type DLPProjectsLocationsDeidentifyTemplatesGetResource
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
                       GooglePrivacyDlpV2DeidentifyTemplate

-- | Gets a DeidentifyTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ 'newDLPProjectsLocationsDeidentifyTemplatesGet' smart constructor.
data DLPProjectsLocationsDeidentifyTemplatesGet = DLPProjectsLocationsDeidentifyTemplatesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the organization and deidentify template to be read, for example @organizations\/433245324\/deidentifyTemplates\/432452342@ or projects\/project-id\/deidentifyTemplates\/432452342.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDeidentifyTemplatesGet' with the minimum fields required to make a request.
newDLPProjectsLocationsDeidentifyTemplatesGet 
    ::  Core.Text
       -- ^  Required. Resource name of the organization and deidentify template to be read, for example @organizations\/433245324\/deidentifyTemplates\/432452342@ or projects\/project-id\/deidentifyTemplates\/432452342. See 'name'.
    -> DLPProjectsLocationsDeidentifyTemplatesGet
newDLPProjectsLocationsDeidentifyTemplatesGet name =
  DLPProjectsLocationsDeidentifyTemplatesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsDeidentifyTemplatesGet
         where
        type Rs DLPProjectsLocationsDeidentifyTemplatesGet =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes
               DLPProjectsLocationsDeidentifyTemplatesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DLPProjectsLocationsDeidentifyTemplatesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsDeidentifyTemplatesGetResource)
                      Core.mempty

