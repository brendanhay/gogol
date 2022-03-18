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
-- Module      : Gogol.DLP.Organizations.DeidentifyTemplates.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the DeidentifyTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.patch@.
module Gogol.DLP.Organizations.DeidentifyTemplates.Patch
    (
    -- * Resource
      DLPOrganizationsDeidentifyTemplatesPatchResource

    -- ** Constructing a Request
    , newDLPOrganizationsDeidentifyTemplatesPatch
    , DLPOrganizationsDeidentifyTemplatesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.deidentifyTemplates.patch@ method which the
-- 'DLPOrganizationsDeidentifyTemplatesPatch' request conforms to.
type DLPOrganizationsDeidentifyTemplatesPatchResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
                       Core.:>
                       Core.Patch '[Core.JSON]
                         GooglePrivacyDlpV2DeidentifyTemplate

-- | Updates the DeidentifyTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ 'newDLPOrganizationsDeidentifyTemplatesPatch' smart constructor.
data DLPOrganizationsDeidentifyTemplatesPatch = DLPOrganizationsDeidentifyTemplatesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of organization and deidentify template to be updated, for example @organizations\/433245324\/deidentifyTemplates\/432452342@ or projects\/project-id\/deidentifyTemplates\/432452342.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsDeidentifyTemplatesPatch' with the minimum fields required to make a request.
newDLPOrganizationsDeidentifyTemplatesPatch 
    ::  Core.Text
       -- ^  Required. Resource name of organization and deidentify template to be updated, for example @organizations\/433245324\/deidentifyTemplates\/432452342@ or projects\/project-id\/deidentifyTemplates\/432452342. See 'name'.
    -> GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPOrganizationsDeidentifyTemplatesPatch
newDLPOrganizationsDeidentifyTemplatesPatch name payload =
  DLPOrganizationsDeidentifyTemplatesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsDeidentifyTemplatesPatch
         where
        type Rs DLPOrganizationsDeidentifyTemplatesPatch =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes DLPOrganizationsDeidentifyTemplatesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DLPOrganizationsDeidentifyTemplatesPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsDeidentifyTemplatesPatchResource)
                      Core.mempty

