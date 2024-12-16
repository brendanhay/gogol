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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a glossary entry.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.glossaryEntries.patch@.
module Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Patch
    (
    -- * Resource
      TranslateProjectsLocationsGlossariesGlossaryEntriesPatchResource

    -- ** Constructing a Request
    , TranslateProjectsLocationsGlossariesGlossaryEntriesPatch (..)
    , newTranslateProjectsLocationsGlossariesGlossaryEntriesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.glossaryEntries.patch@ method which the
-- 'TranslateProjectsLocationsGlossariesGlossaryEntriesPatch' request conforms to.
type TranslateProjectsLocationsGlossariesGlossaryEntriesPatchResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GlossaryEntry Core.:>
                       Core.Patch '[Core.JSON] GlossaryEntry

-- | Updates a glossary entry.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesGlossaryEntriesPatch' smart constructor.
data TranslateProjectsLocationsGlossariesGlossaryEntriesPatch = TranslateProjectsLocationsGlossariesGlossaryEntriesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. The resource name of the entry. Format: @projects\/*\/locations\/*\/glossaries\/*\/glossaryEntries\/*@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GlossaryEntry
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesGlossaryEntriesPatch' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesGlossaryEntriesPatch 
    ::  Core.Text
       -- ^  Identifier. The resource name of the entry. Format: @projects\/*\/locations\/*\/glossaries\/*\/glossaryEntries\/*@ See 'name'.
    -> GlossaryEntry
       -- ^  Multipart request metadata. See 'payload'.
    -> TranslateProjectsLocationsGlossariesGlossaryEntriesPatch
newTranslateProjectsLocationsGlossariesGlossaryEntriesPatch name payload =
  TranslateProjectsLocationsGlossariesGlossaryEntriesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsGlossariesGlossaryEntriesPatch
         where
        type Rs
               TranslateProjectsLocationsGlossariesGlossaryEntriesPatch
             = GlossaryEntry
        type Scopes
               TranslateProjectsLocationsGlossariesGlossaryEntriesPatch
             =
             '[CloudPlatform'FullControl,
               CloudTranslation'FullControl]
        requestClient
          TranslateProjectsLocationsGlossariesGlossaryEntriesPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsGlossariesGlossaryEntriesPatchResource)
                      Core.mempty

