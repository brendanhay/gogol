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
-- Module      : Gogol.DLP.Projects.Content.Inspect
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds potentially sensitive info in content. This method has limits on input size, processing time, and output size. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. For how to guides, see https:\/\/cloud.google.com\/dlp\/docs\/inspecting-images and https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text,
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.content.inspect@.
module Gogol.DLP.Projects.Content.Inspect
    (
    -- * Resource
      DLPProjectsContentInspectResource

    -- ** Constructing a Request
    , newDLPProjectsContentInspect
    , DLPProjectsContentInspect
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.content.inspect@ method which the
-- 'DLPProjectsContentInspect' request conforms to.
type DLPProjectsContentInspectResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "content:inspect" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GooglePrivacyDlpV2InspectContentRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           GooglePrivacyDlpV2InspectContentResponse

-- | Finds potentially sensitive info in content. This method has limits on input size, processing time, and output size. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. For how to guides, see https:\/\/cloud.google.com\/dlp\/docs\/inspecting-images and https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text,
--
-- /See:/ 'newDLPProjectsContentInspect' smart constructor.
data DLPProjectsContentInspect = DLPProjectsContentInspect
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2InspectContentRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsContentInspect' with the minimum fields required to make a request.
newDLPProjectsContentInspect 
    ::  Core.Text
       -- ^  Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
    -> GooglePrivacyDlpV2InspectContentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPProjectsContentInspect
newDLPProjectsContentInspect parent payload =
  DLPProjectsContentInspect
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPProjectsContentInspect
         where
        type Rs DLPProjectsContentInspect =
             GooglePrivacyDlpV2InspectContentResponse
        type Scopes DLPProjectsContentInspect =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient DLPProjectsContentInspect{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DLPProjectsContentInspectResource)
                      Core.mempty

