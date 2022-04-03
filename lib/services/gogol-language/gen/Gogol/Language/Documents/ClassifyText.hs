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
-- Module      : Gogol.Language.Documents.ClassifyText
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Classifies a document into categories.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.classifyText@.
module Gogol.Language.Documents.ClassifyText
  ( -- * Resource
    LanguageDocumentsClassifyTextResource,

    -- ** Constructing a Request
    LanguageDocumentsClassifyText (..),
    newLanguageDocumentsClassifyText,
  )
where

import Gogol.Language.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @language.documents.classifyText@ method which the
-- 'LanguageDocumentsClassifyText' request conforms to.
type LanguageDocumentsClassifyTextResource =
  "v1"
    Core.:> "documents:classifyText"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ClassifyTextRequest
    Core.:> Core.Post '[Core.JSON] ClassifyTextResponse

-- | Classifies a document into categories.
--
-- /See:/ 'newLanguageDocumentsClassifyText' smart constructor.
data LanguageDocumentsClassifyText = LanguageDocumentsClassifyText
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ClassifyTextRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsClassifyText' with the minimum fields required to make a request.
newLanguageDocumentsClassifyText ::
  -- |  Multipart request metadata. See 'payload'.
  ClassifyTextRequest ->
  LanguageDocumentsClassifyText
newLanguageDocumentsClassifyText payload =
  LanguageDocumentsClassifyText
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LanguageDocumentsClassifyText
  where
  type
    Rs LanguageDocumentsClassifyText =
      ClassifyTextResponse
  type
    Scopes LanguageDocumentsClassifyText =
      '[ CloudLanguage'FullControl,
         CloudPlatform'FullControl
       ]
  requestClient LanguageDocumentsClassifyText {..} =
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
              Core.Proxy LanguageDocumentsClassifyTextResource
          )
          Core.mempty
