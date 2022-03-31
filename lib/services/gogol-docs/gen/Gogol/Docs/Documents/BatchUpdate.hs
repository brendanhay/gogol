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
-- Module      : Gogol.Docs.Documents.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more updates to the document. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies, the reply to the third request, and another empty reply, in that order. Because other users may be editing the document, the document might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the document should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.
--
-- /See:/ <https://developers.google.com/docs/ Google Docs API Reference> for @docs.documents.batchUpdate@.
module Gogol.Docs.Documents.BatchUpdate
  ( -- * Resource
    DocsDocumentsBatchUpdateResource,

    -- ** Constructing a Request
    newDocsDocumentsBatchUpdate,
    DocsDocumentsBatchUpdate,
  )
where

import Gogol.Docs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @docs.documents.batchUpdate@ method which the
-- 'DocsDocumentsBatchUpdate' request conforms to.
type DocsDocumentsBatchUpdateResource =
  "v1"
    Core.:> "documents"
    Core.:> Core.CaptureMode "documentId" "batchUpdate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchUpdateDocumentRequest
    Core.:> Core.Post '[Core.JSON] BatchUpdateDocumentResponse

-- | Applies one or more updates to the document. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies, the reply to the third request, and another empty reply, in that order. Because other users may be editing the document, the document might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the document should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.
--
-- /See:/ 'newDocsDocumentsBatchUpdate' smart constructor.
data DocsDocumentsBatchUpdate = DocsDocumentsBatchUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the document to update.
    documentId :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchUpdateDocumentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocsDocumentsBatchUpdate' with the minimum fields required to make a request.
newDocsDocumentsBatchUpdate ::
  -- |  The ID of the document to update. See 'documentId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchUpdateDocumentRequest ->
  DocsDocumentsBatchUpdate
newDocsDocumentsBatchUpdate documentId payload =
  DocsDocumentsBatchUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      documentId = documentId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DocsDocumentsBatchUpdate where
  type
    Rs DocsDocumentsBatchUpdate =
      BatchUpdateDocumentResponse
  type
    Scopes DocsDocumentsBatchUpdate =
      '[ Documents'FullControl,
         Drive'FullControl,
         Drive'File
       ]
  requestClient DocsDocumentsBatchUpdate {..} =
    go
      documentId
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
          ( Core.Proxy ::
              Core.Proxy DocsDocumentsBatchUpdateResource
          )
          Core.mempty
