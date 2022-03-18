{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Language.Documents.AnalyzeEntities
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds named entities (currently proper names and common nouns) in the text along with entity types, salience, mentions for each entity, and other properties.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.analyzeEntities@.
module Network.Google.Language.Documents.AnalyzeEntities
  ( -- * Resource
    LanguageDocumentsAnalyzeEntitiesResource,

    -- ** Constructing a Request
    newLanguageDocumentsAnalyzeEntities,
    LanguageDocumentsAnalyzeEntities,
  )
where

import Network.Google.Language.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @language.documents.analyzeEntities@ method which the
-- 'LanguageDocumentsAnalyzeEntities' request conforms to.
type LanguageDocumentsAnalyzeEntitiesResource =
  "v1"
    Core.:> "documents:analyzeEntities"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AnalyzeEntitiesRequest
    Core.:> Core.Post '[Core.JSON] AnalyzeEntitiesResponse

-- | Finds named entities (currently proper names and common nouns) in the text along with entity types, salience, mentions for each entity, and other properties.
--
-- /See:/ 'newLanguageDocumentsAnalyzeEntities' smart constructor.
data LanguageDocumentsAnalyzeEntities = LanguageDocumentsAnalyzeEntities
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AnalyzeEntitiesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsAnalyzeEntities' with the minimum fields required to make a request.
newLanguageDocumentsAnalyzeEntities ::
  -- |  Multipart request metadata. See 'payload'.
  AnalyzeEntitiesRequest ->
  LanguageDocumentsAnalyzeEntities
newLanguageDocumentsAnalyzeEntities payload =
  LanguageDocumentsAnalyzeEntities
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LanguageDocumentsAnalyzeEntities
  where
  type
    Rs LanguageDocumentsAnalyzeEntities =
      AnalyzeEntitiesResponse
  type
    Scopes LanguageDocumentsAnalyzeEntities =
      '[ "https://www.googleapis.com/auth/cloud-language",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient LanguageDocumentsAnalyzeEntities {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      languageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LanguageDocumentsAnalyzeEntitiesResource
          )
          Core.mempty
