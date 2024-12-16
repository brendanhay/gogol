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
-- Module      : Gogol.DLP.Organizations.InspectTemplates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InspectTemplate. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.inspectTemplates.get@.
module Gogol.DLP.Organizations.InspectTemplates.Get
    (
    -- * Resource
      DLPOrganizationsInspectTemplatesGetResource

    -- ** Constructing a Request
    , DLPOrganizationsInspectTemplatesGet (..)
    , newDLPOrganizationsInspectTemplatesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.inspectTemplates.get@ method which the
-- 'DLPOrganizationsInspectTemplatesGet' request conforms to.
type DLPOrganizationsInspectTemplatesGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GooglePrivacyDlpV2InspectTemplate

-- | Gets an InspectTemplate. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-templates to learn more.
--
-- /See:/ 'newDLPOrganizationsInspectTemplatesGet' smart constructor.
data DLPOrganizationsInspectTemplatesGet = DLPOrganizationsInspectTemplatesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the organization and inspectTemplate to be read, for example @organizations\/433245324\/inspectTemplates\/432452342@ or projects\/project-id\/inspectTemplates\/432452342.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsInspectTemplatesGet' with the minimum fields required to make a request.
newDLPOrganizationsInspectTemplatesGet 
    ::  Core.Text
       -- ^  Required. Resource name of the organization and inspectTemplate to be read, for example @organizations\/433245324\/inspectTemplates\/432452342@ or projects\/project-id\/inspectTemplates\/432452342. See 'name'.
    -> DLPOrganizationsInspectTemplatesGet
newDLPOrganizationsInspectTemplatesGet name =
  DLPOrganizationsInspectTemplatesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsInspectTemplatesGet
         where
        type Rs DLPOrganizationsInspectTemplatesGet =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes DLPOrganizationsInspectTemplatesGet =
             '[CloudPlatform'FullControl]
        requestClient DLPOrganizationsInspectTemplatesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsInspectTemplatesGetResource)
                      Core.mempty

