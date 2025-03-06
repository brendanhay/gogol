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
-- Module      : Gogol.Language.Documents.AnalyzeEntitySentiment
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds entities, similar to AnalyzeEntities in the text and analyzes sentiment associated with each entity and its mentions.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.analyzeEntitySentiment@.
module Gogol.Language.Documents.AnalyzeEntitySentiment
  ( -- * Resource
    LanguageDocumentsAnalyzeEntitySentimentResource,

    -- ** Constructing a Request
    LanguageDocumentsAnalyzeEntitySentiment (..),
    newLanguageDocumentsAnalyzeEntitySentiment,
  )
where

import Gogol.Language.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @language.documents.analyzeEntitySentiment@ method which the
-- 'LanguageDocumentsAnalyzeEntitySentiment' request conforms to.
type LanguageDocumentsAnalyzeEntitySentimentResource =
  "v1"
    Core.:> "documents:analyzeEntitySentiment"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              AnalyzeEntitySentimentRequest
    Core.:> Core.Post '[Core.JSON] AnalyzeEntitySentimentResponse

-- | Finds entities, similar to AnalyzeEntities in the text and analyzes sentiment associated with each entity and its mentions.
--
-- /See:/ 'newLanguageDocumentsAnalyzeEntitySentiment' smart constructor.
data LanguageDocumentsAnalyzeEntitySentiment = LanguageDocumentsAnalyzeEntitySentiment
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AnalyzeEntitySentimentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsAnalyzeEntitySentiment' with the minimum fields required to make a request.
newLanguageDocumentsAnalyzeEntitySentiment ::
  -- |  Multipart request metadata. See 'payload'.
  AnalyzeEntitySentimentRequest ->
  LanguageDocumentsAnalyzeEntitySentiment
newLanguageDocumentsAnalyzeEntitySentiment payload =
  LanguageDocumentsAnalyzeEntitySentiment
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LanguageDocumentsAnalyzeEntitySentiment
  where
  type
    Rs LanguageDocumentsAnalyzeEntitySentiment =
      AnalyzeEntitySentimentResponse
  type
    Scopes LanguageDocumentsAnalyzeEntitySentiment =
      '[ CloudLanguage'FullControl,
         CloudPlatform'FullControl
       ]
  requestClient
    LanguageDocumentsAnalyzeEntitySentiment {..} =
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
                Core.Proxy
                  LanguageDocumentsAnalyzeEntitySentimentResource
            )
            Core.mempty
