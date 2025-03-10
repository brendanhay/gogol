{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Language.Documents.AnnotateText
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A convenience method that provides all features in one call.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.annotateText@.
module Gogol.Language.Documents.AnnotateText
  ( -- * Resource
    LanguageDocumentsAnnotateTextResource,

    -- ** Constructing a Request
    LanguageDocumentsAnnotateText (..),
    newLanguageDocumentsAnnotateText,
  )
where

import Gogol.Language.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @language.documents.annotateText@ method which the
-- 'LanguageDocumentsAnnotateText' request conforms to.
type LanguageDocumentsAnnotateTextResource =
  "v2"
    Core.:> "documents:annotateText"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AnnotateTextRequest
    Core.:> Core.Post '[Core.JSON] AnnotateTextResponse

-- | A convenience method that provides all features in one call.
--
-- /See:/ 'newLanguageDocumentsAnnotateText' smart constructor.
data LanguageDocumentsAnnotateText = LanguageDocumentsAnnotateText
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AnnotateTextRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsAnnotateText' with the minimum fields required to make a request.
newLanguageDocumentsAnnotateText ::
  -- |  Multipart request metadata. See 'payload'.
  AnnotateTextRequest ->
  LanguageDocumentsAnnotateText
newLanguageDocumentsAnnotateText payload =
  LanguageDocumentsAnnotateText
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LanguageDocumentsAnnotateText where
  type Rs LanguageDocumentsAnnotateText = AnnotateTextResponse
  type
    Scopes LanguageDocumentsAnnotateText =
      '[CloudLanguage'FullControl, CloudPlatform'FullControl]
  requestClient LanguageDocumentsAnnotateText {..} =
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
          (Core.Proxy :: Core.Proxy LanguageDocumentsAnnotateTextResource)
          Core.mempty
