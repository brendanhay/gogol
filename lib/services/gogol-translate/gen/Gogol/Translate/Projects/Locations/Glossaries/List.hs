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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists glossaries in a project. Returns NOT_FOUND, if the project doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.list@.
module Gogol.Translate.Projects.Locations.Glossaries.List
    (
    -- * Resource
      TranslateProjectsLocationsGlossariesListResource

    -- ** Constructing a Request
    , newTranslateProjectsLocationsGlossariesList
    , TranslateProjectsLocationsGlossariesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.list@ method which the
-- 'TranslateProjectsLocationsGlossariesList' request conforms to.
type TranslateProjectsLocationsGlossariesListResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "glossaries" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListGlossariesResponse

-- | Lists glossaries in a project. Returns NOT_FOUND, if the project doesn\'t exist.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesList' smart constructor.
data TranslateProjectsLocationsGlossariesList = TranslateProjectsLocationsGlossariesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter specifying constraints of a list operation. Specify the constraint by the format of \"key=value\", where key must be \"src\" or \"tgt\", and the value must be a valid language code. For multiple restrictions, concatenate them by \"AND\" (uppercase only), such as: \"src=en-US AND tgt=zh-CN\". Notice that the exact match is used here, which means using \'en-US\' and \'en\' can lead to different results, which depends on the language code you used when you create the glossary. For the unidirectional glossaries, the \"src\" and \"tgt\" add restrictions on the source and target language code separately. For the equivalent term set glossaries, the \"src\" and\/or \"tgt\" add restrictions on the term set. For example: \"src=en-US AND tgt=zh-CN\" will only pick the unidirectional glossaries which exactly match the source language code as \"en-US\" and the target language code \"zh-CN\", but all equivalent term set glossaries which contain \"en-US\" and \"zh-CN\" in their language set will be picked.
      -- If missing, no filtering is performed.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. Requested page size. The server may return fewer glossaries than requested. If unspecified, the server picks an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A token identifying a page of results the server should return. Typically, this is the value of [ListGlossariesResponse.next/page/token] returned from the previous call to @ListGlossaries@ method. The first page is returned if @page_token@is empty or missing.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the project from which to list all of the glossaries.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesList' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesList 
    ::  Core.Text
       -- ^  Required. The name of the project from which to list all of the glossaries. See 'parent'.
    -> TranslateProjectsLocationsGlossariesList
newTranslateProjectsLocationsGlossariesList parent =
  TranslateProjectsLocationsGlossariesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TranslateProjectsLocationsGlossariesList
         where
        type Rs TranslateProjectsLocationsGlossariesList =
             ListGlossariesResponse
        type Scopes TranslateProjectsLocationsGlossariesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient
          TranslateProjectsLocationsGlossariesList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              translateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TranslateProjectsLocationsGlossariesListResource)
                      Core.mempty

