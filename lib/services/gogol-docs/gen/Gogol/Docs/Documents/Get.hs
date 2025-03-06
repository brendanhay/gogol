{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Docs.Documents.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest version of the specified document.
--
-- /See:/ <https://developers.google.com/docs/ Google Docs API Reference> for @docs.documents.get@.
module Gogol.Docs.Documents.Get
  ( -- * Resource
    DocsDocumentsGetResource,

    -- ** Constructing a Request
    DocsDocumentsGet (..),
    newDocsDocumentsGet,
  )
where

import Gogol.Docs.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @docs.documents.get@ method which the
-- 'DocsDocumentsGet' request conforms to.
type DocsDocumentsGetResource =
  "v1"
    Core.:> "documents"
    Core.:> Core.Capture "documentId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeTabsContent" Core.Bool
    Core.:> Core.QueryParam
              "suggestionsViewMode"
              DocumentsGetSuggestionsViewMode
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Document

-- | Gets the latest version of the specified document.
--
-- /See:/ 'newDocsDocumentsGet' smart constructor.
data DocsDocumentsGet = DocsDocumentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the document to retrieve.
    documentId :: Core.Text,
    -- | Whether to populate the Document.tabs field instead of the text content fields like @body@ and @documentStyle@ on Document. - When @True@: Document content populates in the Document.tabs field instead of the text content fields in Document. - When @False@: The content of the document\'s first tab populates the content fields in Document excluding Document.tabs. If a document has only one tab, then that tab is used to populate the document content. Document.tabs will be empty.
    includeTabsContent :: (Core.Maybe Core.Bool),
    -- | The suggestions view mode to apply to the document. This allows viewing the document with all suggestions inline, accepted or rejected. If one is not specified, DEFAULT/FOR/CURRENT_ACCESS is used.
    suggestionsViewMode :: (Core.Maybe DocumentsGetSuggestionsViewMode),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocsDocumentsGet' with the minimum fields required to make a request.
newDocsDocumentsGet ::
  -- |  The ID of the document to retrieve. See 'documentId'.
  Core.Text ->
  DocsDocumentsGet
newDocsDocumentsGet documentId =
  DocsDocumentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      documentId = documentId,
      includeTabsContent = Core.Nothing,
      suggestionsViewMode = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DocsDocumentsGet where
  type Rs DocsDocumentsGet = Document
  type
    Scopes DocsDocumentsGet =
      '[ Documents'FullControl,
         Documents'Readonly,
         Drive'FullControl,
         Drive'File,
         Drive'Readonly
       ]
  requestClient DocsDocumentsGet {..} =
    go
      documentId
      xgafv
      accessToken
      callback
      includeTabsContent
      suggestionsViewMode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      docsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DocsDocumentsGetResource)
          Core.mempty
