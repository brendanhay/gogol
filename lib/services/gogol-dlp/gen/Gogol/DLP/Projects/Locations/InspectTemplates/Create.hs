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
-- Module      : Gogol.DLP.Projects.Locations.InspectTemplates.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.inspectTemplates.create@.
module Gogol.DLP.Projects.Locations.InspectTemplates.Create
    (
    -- * Resource
      DLPProjectsLocationsInspectTemplatesCreateResource

    -- ** Constructing a Request
    , DLPProjectsLocationsInspectTemplatesCreate (..)
    , newDLPProjectsLocationsInspectTemplatesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.inspectTemplates.create@ method which the
-- 'DLPProjectsLocationsInspectTemplatesCreate' request conforms to.
type DLPProjectsLocationsInspectTemplatesCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "inspectTemplates" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GooglePrivacyDlpV2CreateInspectTemplateRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           GooglePrivacyDlpV2InspectTemplate

-- | Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-templates to learn more.
--
-- /See:/ 'newDLPProjectsLocationsInspectTemplatesCreate' smart constructor.
data DLPProjectsLocationsInspectTemplatesCreate = DLPProjectsLocationsInspectTemplatesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ + Organizations scope, location specified: @organizations\/{org_id}\/locations\/{location_id}@ + Organizations scope, no location specified (defaults to global): @organizations\/{org_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2CreateInspectTemplateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsInspectTemplatesCreate' with the minimum fields required to make a request.
newDLPProjectsLocationsInspectTemplatesCreate 
    ::  Core.Text
       -- ^  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ + Organizations scope, location specified: @organizations\/{org_id}\/locations\/{location_id}@ + Organizations scope, no location specified (defaults to global): @organizations\/{org_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
    -> GooglePrivacyDlpV2CreateInspectTemplateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPProjectsLocationsInspectTemplatesCreate
newDLPProjectsLocationsInspectTemplatesCreate parent payload =
  DLPProjectsLocationsInspectTemplatesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsInspectTemplatesCreate
         where
        type Rs DLPProjectsLocationsInspectTemplatesCreate =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes
               DLPProjectsLocationsInspectTemplatesCreate
             = '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsInspectTemplatesCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsInspectTemplatesCreateResource)
                      Core.mempty

