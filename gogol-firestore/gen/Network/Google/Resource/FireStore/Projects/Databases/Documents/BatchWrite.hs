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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.BatchWrite
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a batch of write operations. The BatchWrite method does not
-- apply the write operations atomically and can apply them out of order.
-- Method does not allow more than one write per document. Each write
-- succeeds or fails independently. See the BatchWriteResponse for the
-- success status of each write. If you require an atomically applied set
-- of writes, use Commit instead.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.batchWrite@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.BatchWrite
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsBatchWriteResource

    -- * Creating a Request
    , projectsDatabasesDocumentsBatchWrite
    , ProjectsDatabasesDocumentsBatchWrite

    -- * Request Lenses
    , pddbwXgafv
    , pddbwUploadProtocol
    , pddbwDatabase
    , pddbwAccessToken
    , pddbwUploadType
    , pddbwPayload
    , pddbwCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.batchWrite@ method which the
-- 'ProjectsDatabasesDocumentsBatchWrite' request conforms to.
type ProjectsDatabasesDocumentsBatchWriteResource =
     "v1" :>
       Capture "database" Text :>
         "documents:batchWrite" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchWriteRequest :>
                         Post '[JSON] BatchWriteResponse

-- | Applies a batch of write operations. The BatchWrite method does not
-- apply the write operations atomically and can apply them out of order.
-- Method does not allow more than one write per document. Each write
-- succeeds or fails independently. See the BatchWriteResponse for the
-- success status of each write. If you require an atomically applied set
-- of writes, use Commit instead.
--
-- /See:/ 'projectsDatabasesDocumentsBatchWrite' smart constructor.
data ProjectsDatabasesDocumentsBatchWrite =
  ProjectsDatabasesDocumentsBatchWrite'
    { _pddbwXgafv :: !(Maybe Xgafv)
    , _pddbwUploadProtocol :: !(Maybe Text)
    , _pddbwDatabase :: !Text
    , _pddbwAccessToken :: !(Maybe Text)
    , _pddbwUploadType :: !(Maybe Text)
    , _pddbwPayload :: !BatchWriteRequest
    , _pddbwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsBatchWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddbwXgafv'
--
-- * 'pddbwUploadProtocol'
--
-- * 'pddbwDatabase'
--
-- * 'pddbwAccessToken'
--
-- * 'pddbwUploadType'
--
-- * 'pddbwPayload'
--
-- * 'pddbwCallback'
projectsDatabasesDocumentsBatchWrite
    :: Text -- ^ 'pddbwDatabase'
    -> BatchWriteRequest -- ^ 'pddbwPayload'
    -> ProjectsDatabasesDocumentsBatchWrite
projectsDatabasesDocumentsBatchWrite pPddbwDatabase_ pPddbwPayload_ =
  ProjectsDatabasesDocumentsBatchWrite'
    { _pddbwXgafv = Nothing
    , _pddbwUploadProtocol = Nothing
    , _pddbwDatabase = pPddbwDatabase_
    , _pddbwAccessToken = Nothing
    , _pddbwUploadType = Nothing
    , _pddbwPayload = pPddbwPayload_
    , _pddbwCallback = Nothing
    }


-- | V1 error format.
pddbwXgafv :: Lens' ProjectsDatabasesDocumentsBatchWrite (Maybe Xgafv)
pddbwXgafv
  = lens _pddbwXgafv (\ s a -> s{_pddbwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddbwUploadProtocol :: Lens' ProjectsDatabasesDocumentsBatchWrite (Maybe Text)
pddbwUploadProtocol
  = lens _pddbwUploadProtocol
      (\ s a -> s{_pddbwUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pddbwDatabase :: Lens' ProjectsDatabasesDocumentsBatchWrite Text
pddbwDatabase
  = lens _pddbwDatabase
      (\ s a -> s{_pddbwDatabase = a})

-- | OAuth access token.
pddbwAccessToken :: Lens' ProjectsDatabasesDocumentsBatchWrite (Maybe Text)
pddbwAccessToken
  = lens _pddbwAccessToken
      (\ s a -> s{_pddbwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddbwUploadType :: Lens' ProjectsDatabasesDocumentsBatchWrite (Maybe Text)
pddbwUploadType
  = lens _pddbwUploadType
      (\ s a -> s{_pddbwUploadType = a})

-- | Multipart request metadata.
pddbwPayload :: Lens' ProjectsDatabasesDocumentsBatchWrite BatchWriteRequest
pddbwPayload
  = lens _pddbwPayload (\ s a -> s{_pddbwPayload = a})

-- | JSONP
pddbwCallback :: Lens' ProjectsDatabasesDocumentsBatchWrite (Maybe Text)
pddbwCallback
  = lens _pddbwCallback
      (\ s a -> s{_pddbwCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsBatchWrite
         where
        type Rs ProjectsDatabasesDocumentsBatchWrite =
             BatchWriteResponse
        type Scopes ProjectsDatabasesDocumentsBatchWrite =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesDocumentsBatchWrite'{..}
          = go _pddbwDatabase _pddbwXgafv _pddbwUploadProtocol
              _pddbwAccessToken
              _pddbwUploadType
              _pddbwCallback
              (Just AltJSON)
              _pddbwPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsBatchWriteResource)
                      mempty
