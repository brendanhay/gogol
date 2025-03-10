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
-- Module      : Gogol.Docs.Documents.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a blank document using the title given in the request. Other fields in the request, including any provided content, are ignored. Returns the created document.
--
-- /See:/ <https://developers.google.com/docs/ Google Docs API Reference> for @docs.documents.create@.
module Gogol.Docs.Documents.Create
  ( -- * Resource
    DocsDocumentsCreateResource,

    -- ** Constructing a Request
    DocsDocumentsCreate (..),
    newDocsDocumentsCreate,
  )
where

import Gogol.Docs.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @docs.documents.create@ method which the
-- 'DocsDocumentsCreate' request conforms to.
type DocsDocumentsCreateResource =
  "v1"
    Core.:> "documents"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Document
    Core.:> Core.Post '[Core.JSON] Document

-- | Creates a blank document using the title given in the request. Other fields in the request, including any provided content, are ignored. Returns the created document.
--
-- /See:/ 'newDocsDocumentsCreate' smart constructor.
data DocsDocumentsCreate = DocsDocumentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Document,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocsDocumentsCreate' with the minimum fields required to make a request.
newDocsDocumentsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Document ->
  DocsDocumentsCreate
newDocsDocumentsCreate payload =
  DocsDocumentsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DocsDocumentsCreate where
  type Rs DocsDocumentsCreate = Document
  type
    Scopes DocsDocumentsCreate =
      '[Documents'FullControl, Drive'FullControl, Drive'File]
  requestClient DocsDocumentsCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      docsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DocsDocumentsCreateResource)
          Core.mempty
