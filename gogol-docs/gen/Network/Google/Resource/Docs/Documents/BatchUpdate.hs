{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Docs.Documents.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more updates to the document. Each request is validated
-- before being applied. If any request is not valid, then the entire
-- request will fail and nothing will be applied. Some requests have
-- replies to give you some information about how they are applied. Other
-- requests do not need to return information; these each return an empty
-- reply. The order of replies matches that of the requests. For example,
-- suppose you call batchUpdate with four updates, and only the third one
-- returns information. The response would have two empty replies, the
-- reply to the third request, and another empty reply, in that order.
-- Because other users may be editing the document, the document might not
-- exactly reflect your changes: your changes may be altered with respect
-- to collaborator changes. If there are no collaborators, the document
-- should reflect your changes. In any case, the updates in your request
-- are guaranteed to be applied together atomically.
--
-- /See:/ <https://developers.google.com/docs/ Google Docs API Reference> for @docs.documents.batchUpdate@.
module Network.Google.Resource.Docs.Documents.BatchUpdate
    (
    -- * REST Resource
      DocumentsBatchUpdateResource

    -- * Creating a Request
    , documentsBatchUpdate
    , DocumentsBatchUpdate

    -- * Request Lenses
    , dbuXgafv
    , dbuDocumentId
    , dbuUploadProtocol
    , dbuAccessToken
    , dbuUploadType
    , dbuPayload
    , dbuCallback
    ) where

import Network.Google.Docs.Types
import Network.Google.Prelude

-- | A resource alias for @docs.documents.batchUpdate@ method which the
-- 'DocumentsBatchUpdate' request conforms to.
type DocumentsBatchUpdateResource =
     "v1" :>
       "documents" :>
         CaptureMode "documentId" "batchUpdate" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchUpdateDocumentRequest :>
                         Post '[JSON] BatchUpdateDocumentResponse

-- | Applies one or more updates to the document. Each request is validated
-- before being applied. If any request is not valid, then the entire
-- request will fail and nothing will be applied. Some requests have
-- replies to give you some information about how they are applied. Other
-- requests do not need to return information; these each return an empty
-- reply. The order of replies matches that of the requests. For example,
-- suppose you call batchUpdate with four updates, and only the third one
-- returns information. The response would have two empty replies, the
-- reply to the third request, and another empty reply, in that order.
-- Because other users may be editing the document, the document might not
-- exactly reflect your changes: your changes may be altered with respect
-- to collaborator changes. If there are no collaborators, the document
-- should reflect your changes. In any case, the updates in your request
-- are guaranteed to be applied together atomically.
--
-- /See:/ 'documentsBatchUpdate' smart constructor.
data DocumentsBatchUpdate =
  DocumentsBatchUpdate'
    { _dbuXgafv :: !(Maybe Xgafv)
    , _dbuDocumentId :: !Text
    , _dbuUploadProtocol :: !(Maybe Text)
    , _dbuAccessToken :: !(Maybe Text)
    , _dbuUploadType :: !(Maybe Text)
    , _dbuPayload :: !BatchUpdateDocumentRequest
    , _dbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbuXgafv'
--
-- * 'dbuDocumentId'
--
-- * 'dbuUploadProtocol'
--
-- * 'dbuAccessToken'
--
-- * 'dbuUploadType'
--
-- * 'dbuPayload'
--
-- * 'dbuCallback'
documentsBatchUpdate
    :: Text -- ^ 'dbuDocumentId'
    -> BatchUpdateDocumentRequest -- ^ 'dbuPayload'
    -> DocumentsBatchUpdate
documentsBatchUpdate pDbuDocumentId_ pDbuPayload_ =
  DocumentsBatchUpdate'
    { _dbuXgafv = Nothing
    , _dbuDocumentId = pDbuDocumentId_
    , _dbuUploadProtocol = Nothing
    , _dbuAccessToken = Nothing
    , _dbuUploadType = Nothing
    , _dbuPayload = pDbuPayload_
    , _dbuCallback = Nothing
    }


-- | V1 error format.
dbuXgafv :: Lens' DocumentsBatchUpdate (Maybe Xgafv)
dbuXgafv = lens _dbuXgafv (\ s a -> s{_dbuXgafv = a})

-- | The ID of the document to update.
dbuDocumentId :: Lens' DocumentsBatchUpdate Text
dbuDocumentId
  = lens _dbuDocumentId
      (\ s a -> s{_dbuDocumentId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dbuUploadProtocol :: Lens' DocumentsBatchUpdate (Maybe Text)
dbuUploadProtocol
  = lens _dbuUploadProtocol
      (\ s a -> s{_dbuUploadProtocol = a})

-- | OAuth access token.
dbuAccessToken :: Lens' DocumentsBatchUpdate (Maybe Text)
dbuAccessToken
  = lens _dbuAccessToken
      (\ s a -> s{_dbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dbuUploadType :: Lens' DocumentsBatchUpdate (Maybe Text)
dbuUploadType
  = lens _dbuUploadType
      (\ s a -> s{_dbuUploadType = a})

-- | Multipart request metadata.
dbuPayload :: Lens' DocumentsBatchUpdate BatchUpdateDocumentRequest
dbuPayload
  = lens _dbuPayload (\ s a -> s{_dbuPayload = a})

-- | JSONP
dbuCallback :: Lens' DocumentsBatchUpdate (Maybe Text)
dbuCallback
  = lens _dbuCallback (\ s a -> s{_dbuCallback = a})

instance GoogleRequest DocumentsBatchUpdate where
        type Rs DocumentsBatchUpdate =
             BatchUpdateDocumentResponse
        type Scopes DocumentsBatchUpdate =
             '["https://www.googleapis.com/auth/documents",
               "https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DocumentsBatchUpdate'{..}
          = go _dbuDocumentId _dbuXgafv _dbuUploadProtocol
              _dbuAccessToken
              _dbuUploadType
              _dbuCallback
              (Just AltJSON)
              _dbuPayload
              docsService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsBatchUpdateResource)
                      mempty
