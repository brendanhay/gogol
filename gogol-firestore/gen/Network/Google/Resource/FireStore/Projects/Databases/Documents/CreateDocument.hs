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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.CreateDocument
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.createDocument@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.CreateDocument
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsCreateDocumentResource

    -- * Creating a Request
    , projectsDatabasesDocumentsCreateDocument
    , ProjectsDatabasesDocumentsCreateDocument

    -- * Request Lenses
    , pddcdParent
    , pddcdXgafv
    , pddcdDocumentId
    , pddcdUploadProtocol
    , pddcdAccessToken
    , pddcdCollectionId
    , pddcdUploadType
    , pddcdPayload
    , pddcdMaskFieldPaths
    , pddcdCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.createDocument@ method which the
-- 'ProjectsDatabasesDocumentsCreateDocument' request conforms to.
type ProjectsDatabasesDocumentsCreateDocumentResource
     =
     "v1" :>
       Capture "parent" Text :>
         Capture "collectionId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "documentId" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "mask.fieldPaths" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Document :> Post '[JSON] Document

-- | Creates a new document.
--
-- /See:/ 'projectsDatabasesDocumentsCreateDocument' smart constructor.
data ProjectsDatabasesDocumentsCreateDocument =
  ProjectsDatabasesDocumentsCreateDocument'
    { _pddcdParent :: !Text
    , _pddcdXgafv :: !(Maybe Xgafv)
    , _pddcdDocumentId :: !(Maybe Text)
    , _pddcdUploadProtocol :: !(Maybe Text)
    , _pddcdAccessToken :: !(Maybe Text)
    , _pddcdCollectionId :: !Text
    , _pddcdUploadType :: !(Maybe Text)
    , _pddcdPayload :: !Document
    , _pddcdMaskFieldPaths :: !(Maybe [Text])
    , _pddcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsCreateDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddcdParent'
--
-- * 'pddcdXgafv'
--
-- * 'pddcdDocumentId'
--
-- * 'pddcdUploadProtocol'
--
-- * 'pddcdAccessToken'
--
-- * 'pddcdCollectionId'
--
-- * 'pddcdUploadType'
--
-- * 'pddcdPayload'
--
-- * 'pddcdMaskFieldPaths'
--
-- * 'pddcdCallback'
projectsDatabasesDocumentsCreateDocument
    :: Text -- ^ 'pddcdParent'
    -> Text -- ^ 'pddcdCollectionId'
    -> Document -- ^ 'pddcdPayload'
    -> ProjectsDatabasesDocumentsCreateDocument
projectsDatabasesDocumentsCreateDocument pPddcdParent_ pPddcdCollectionId_ pPddcdPayload_ =
  ProjectsDatabasesDocumentsCreateDocument'
    { _pddcdParent = pPddcdParent_
    , _pddcdXgafv = Nothing
    , _pddcdDocumentId = Nothing
    , _pddcdUploadProtocol = Nothing
    , _pddcdAccessToken = Nothing
    , _pddcdCollectionId = pPddcdCollectionId_
    , _pddcdUploadType = Nothing
    , _pddcdPayload = pPddcdPayload_
    , _pddcdMaskFieldPaths = Nothing
    , _pddcdCallback = Nothing
    }


-- | Required. The parent resource. For example:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\` or
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/chatrooms\/{chatroom_id}\`
pddcdParent :: Lens' ProjectsDatabasesDocumentsCreateDocument Text
pddcdParent
  = lens _pddcdParent (\ s a -> s{_pddcdParent = a})

-- | V1 error format.
pddcdXgafv :: Lens' ProjectsDatabasesDocumentsCreateDocument (Maybe Xgafv)
pddcdXgafv
  = lens _pddcdXgafv (\ s a -> s{_pddcdXgafv = a})

-- | The client-assigned document ID to use for this document. Optional. If
-- not specified, an ID will be assigned by the service.
pddcdDocumentId :: Lens' ProjectsDatabasesDocumentsCreateDocument (Maybe Text)
pddcdDocumentId
  = lens _pddcdDocumentId
      (\ s a -> s{_pddcdDocumentId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddcdUploadProtocol :: Lens' ProjectsDatabasesDocumentsCreateDocument (Maybe Text)
pddcdUploadProtocol
  = lens _pddcdUploadProtocol
      (\ s a -> s{_pddcdUploadProtocol = a})

-- | OAuth access token.
pddcdAccessToken :: Lens' ProjectsDatabasesDocumentsCreateDocument (Maybe Text)
pddcdAccessToken
  = lens _pddcdAccessToken
      (\ s a -> s{_pddcdAccessToken = a})

-- | Required. The collection ID, relative to \`parent\`, to list. For
-- example: \`chatrooms\`.
pddcdCollectionId :: Lens' ProjectsDatabasesDocumentsCreateDocument Text
pddcdCollectionId
  = lens _pddcdCollectionId
      (\ s a -> s{_pddcdCollectionId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddcdUploadType :: Lens' ProjectsDatabasesDocumentsCreateDocument (Maybe Text)
pddcdUploadType
  = lens _pddcdUploadType
      (\ s a -> s{_pddcdUploadType = a})

-- | Multipart request metadata.
pddcdPayload :: Lens' ProjectsDatabasesDocumentsCreateDocument Document
pddcdPayload
  = lens _pddcdPayload (\ s a -> s{_pddcdPayload = a})

-- | The list of field paths in the mask. See Document.fields for a field
-- path syntax reference.
pddcdMaskFieldPaths :: Lens' ProjectsDatabasesDocumentsCreateDocument [Text]
pddcdMaskFieldPaths
  = lens _pddcdMaskFieldPaths
      (\ s a -> s{_pddcdMaskFieldPaths = a})
      . _Default
      . _Coerce

-- | JSONP
pddcdCallback :: Lens' ProjectsDatabasesDocumentsCreateDocument (Maybe Text)
pddcdCallback
  = lens _pddcdCallback
      (\ s a -> s{_pddcdCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsCreateDocument
         where
        type Rs ProjectsDatabasesDocumentsCreateDocument =
             Document
        type Scopes ProjectsDatabasesDocumentsCreateDocument
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesDocumentsCreateDocument'{..}
          = go _pddcdParent _pddcdCollectionId _pddcdXgafv
              _pddcdDocumentId
              _pddcdUploadProtocol
              _pddcdAccessToken
              _pddcdUploadType
              (_pddcdMaskFieldPaths ^. _Default)
              _pddcdCallback
              (Just AltJSON)
              _pddcdPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesDocumentsCreateDocumentResource)
                      mempty
