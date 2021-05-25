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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists documents.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.list@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.List
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsListResource

    -- * Creating a Request
    , projectsDatabasesDocumentsList
    , ProjectsDatabasesDocumentsList

    -- * Request Lenses
    , pParent
    , pXgafv
    , pReadTime
    , pUploadProtocol
    , pOrderBy
    , pAccessToken
    , pCollectionId
    , pUploadType
    , pTransaction
    , pShowMissing
    , pPageToken
    , pPageSize
    , pMaskFieldPaths
    , pCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.list@ method which the
-- 'ProjectsDatabasesDocumentsList' request conforms to.
type ProjectsDatabasesDocumentsListResource =
     "v1" :>
       Capture "parent" Text :>
         Capture "collectionId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "readTime" DateTime' :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "transaction" Bytes :>
                         QueryParam "showMissing" Bool :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParams "mask.fieldPaths" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListDocumentsResponse

-- | Lists documents.
--
-- /See:/ 'projectsDatabasesDocumentsList' smart constructor.
data ProjectsDatabasesDocumentsList =
  ProjectsDatabasesDocumentsList'
    { _pParent :: !Text
    , _pXgafv :: !(Maybe Xgafv)
    , _pReadTime :: !(Maybe DateTime')
    , _pUploadProtocol :: !(Maybe Text)
    , _pOrderBy :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pCollectionId :: !Text
    , _pUploadType :: !(Maybe Text)
    , _pTransaction :: !(Maybe Bytes)
    , _pShowMissing :: !(Maybe Bool)
    , _pPageToken :: !(Maybe Text)
    , _pPageSize :: !(Maybe (Textual Int32))
    , _pMaskFieldPaths :: !(Maybe [Text])
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pReadTime'
--
-- * 'pUploadProtocol'
--
-- * 'pOrderBy'
--
-- * 'pAccessToken'
--
-- * 'pCollectionId'
--
-- * 'pUploadType'
--
-- * 'pTransaction'
--
-- * 'pShowMissing'
--
-- * 'pPageToken'
--
-- * 'pPageSize'
--
-- * 'pMaskFieldPaths'
--
-- * 'pCallback'
projectsDatabasesDocumentsList
    :: Text -- ^ 'pParent'
    -> Text -- ^ 'pCollectionId'
    -> ProjectsDatabasesDocumentsList
projectsDatabasesDocumentsList pPParent_ pPCollectionId_ =
  ProjectsDatabasesDocumentsList'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pReadTime = Nothing
    , _pUploadProtocol = Nothing
    , _pOrderBy = Nothing
    , _pAccessToken = Nothing
    , _pCollectionId = pPCollectionId_
    , _pUploadType = Nothing
    , _pTransaction = Nothing
    , _pShowMissing = Nothing
    , _pPageToken = Nothing
    , _pPageSize = Nothing
    , _pMaskFieldPaths = Nothing
    , _pCallback = Nothing
    }


-- | Required. The parent resource name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\` or
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
-- For example: \`projects\/my-project\/databases\/my-database\/documents\`
-- or
-- \`projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom\`
pParent :: Lens' ProjectsDatabasesDocumentsList Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsDatabasesDocumentsList (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Reads documents as they were at the given time. This may not be older
-- than 270 seconds.
pReadTime :: Lens' ProjectsDatabasesDocumentsList (Maybe UTCTime)
pReadTime
  = lens _pReadTime (\ s a -> s{_pReadTime = a}) .
      mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsDatabasesDocumentsList (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | The order to sort results by. For example: \`priority desc, name\`.
pOrderBy :: Lens' ProjectsDatabasesDocumentsList (Maybe Text)
pOrderBy = lens _pOrderBy (\ s a -> s{_pOrderBy = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsDatabasesDocumentsList (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Required. The collection ID, relative to \`parent\`, to list. For
-- example: \`chatrooms\` or \`messages\`.
pCollectionId :: Lens' ProjectsDatabasesDocumentsList Text
pCollectionId
  = lens _pCollectionId
      (\ s a -> s{_pCollectionId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsDatabasesDocumentsList (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Reads documents in a transaction.
pTransaction :: Lens' ProjectsDatabasesDocumentsList (Maybe ByteString)
pTransaction
  = lens _pTransaction (\ s a -> s{_pTransaction = a})
      . mapping _Bytes

-- | If the list should show missing documents. A missing document is a
-- document that does not exist but has sub-documents. These documents will
-- be returned with a key but will not have fields, Document.create_time,
-- or Document.update_time set. Requests with \`show_missing\` may not
-- specify \`where\` or \`order_by\`.
pShowMissing :: Lens' ProjectsDatabasesDocumentsList (Maybe Bool)
pShowMissing
  = lens _pShowMissing (\ s a -> s{_pShowMissing = a})

-- | The \`next_page_token\` value returned from a previous List request, if
-- any.
pPageToken :: Lens' ProjectsDatabasesDocumentsList (Maybe Text)
pPageToken
  = lens _pPageToken (\ s a -> s{_pPageToken = a})

-- | The maximum number of documents to return.
pPageSize :: Lens' ProjectsDatabasesDocumentsList (Maybe Int32)
pPageSize
  = lens _pPageSize (\ s a -> s{_pPageSize = a}) .
      mapping _Coerce

-- | The list of field paths in the mask. See Document.fields for a field
-- path syntax reference.
pMaskFieldPaths :: Lens' ProjectsDatabasesDocumentsList [Text]
pMaskFieldPaths
  = lens _pMaskFieldPaths
      (\ s a -> s{_pMaskFieldPaths = a})
      . _Default
      . _Coerce

-- | JSONP
pCallback :: Lens' ProjectsDatabasesDocumentsList (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsDatabasesDocumentsList
         where
        type Rs ProjectsDatabasesDocumentsList =
             ListDocumentsResponse
        type Scopes ProjectsDatabasesDocumentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsList'{..}
          = go _pParent _pCollectionId _pXgafv _pReadTime
              _pUploadProtocol
              _pOrderBy
              _pAccessToken
              _pUploadType
              _pTransaction
              _pShowMissing
              _pPageToken
              _pPageSize
              (_pMaskFieldPaths ^. _Default)
              _pCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsListResource)
                      mempty
