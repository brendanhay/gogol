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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a glossary. A LRO is used since the update can be async if the glossary\'s entry file is updated.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.patch@.
module Gogol.Translate.Projects.Locations.Glossaries.Patch
    (
    -- * Resource
      TranslateProjectsLocationsGlossariesPatchResource

    -- ** Constructing a Request
    , TranslateProjectsLocationsGlossariesPatch (..)
    , newTranslateProjectsLocationsGlossariesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.patch@ method which the
-- 'TranslateProjectsLocationsGlossariesPatch' request conforms to.
type TranslateProjectsLocationsGlossariesPatchResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Glossary Core.:>
                         Core.Patch '[Core.JSON] Operation

-- | Updates a glossary. A LRO is used since the update can be async if the glossary\'s entry file is updated.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesPatch' smart constructor.
data TranslateProjectsLocationsGlossariesPatch = TranslateProjectsLocationsGlossariesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the glossary. Glossary names have the form @projects\/{project-number-or-id}\/locations\/{location-id}\/glossaries\/{glossary-id}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Glossary
      -- | The list of fields to be updated. Currently only @display_name@ and \'input_config\'
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesPatch' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesPatch 
    ::  Core.Text
       -- ^  Required. The resource name of the glossary. Glossary names have the form @projects\/{project-number-or-id}\/locations\/{location-id}\/glossaries\/{glossary-id}@. See 'name'.
    -> Glossary
       -- ^  Multipart request metadata. See 'payload'.
    -> TranslateProjectsLocationsGlossariesPatch
newTranslateProjectsLocationsGlossariesPatch name payload =
  TranslateProjectsLocationsGlossariesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsGlossariesPatch
         where
        type Rs TranslateProjectsLocationsGlossariesPatch =
             Operation
        type Scopes TranslateProjectsLocationsGlossariesPatch
             =
             '[CloudPlatform'FullControl,
               CloudTranslation'FullControl]
        requestClient
          TranslateProjectsLocationsGlossariesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsGlossariesPatchResource)
                      Core.mempty

