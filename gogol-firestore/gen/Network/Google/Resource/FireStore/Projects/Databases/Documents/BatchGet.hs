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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.BatchGet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets multiple documents. Documents returned by this method are not
-- guaranteed to be returned in the same order that they were requested.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.batchGet@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.BatchGet
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsBatchGetResource

    -- * Creating a Request
    , projectsDatabasesDocumentsBatchGet
    , ProjectsDatabasesDocumentsBatchGet

    -- * Request Lenses
    , pddbgXgafv
    , pddbgUploadProtocol
    , pddbgDatabase
    , pddbgAccessToken
    , pddbgUploadType
    , pddbgPayload
    , pddbgCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.batchGet@ method which the
-- 'ProjectsDatabasesDocumentsBatchGet' request conforms to.
type ProjectsDatabasesDocumentsBatchGetResource =
     "v1" :>
       Capture "database" Text :>
         "documents:batchGet" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchGetDocumentsRequest :>
                         Post '[JSON] BatchGetDocumentsResponse

-- | Gets multiple documents. Documents returned by this method are not
-- guaranteed to be returned in the same order that they were requested.
--
-- /See:/ 'projectsDatabasesDocumentsBatchGet' smart constructor.
data ProjectsDatabasesDocumentsBatchGet =
  ProjectsDatabasesDocumentsBatchGet'
    { _pddbgXgafv :: !(Maybe Xgafv)
    , _pddbgUploadProtocol :: !(Maybe Text)
    , _pddbgDatabase :: !Text
    , _pddbgAccessToken :: !(Maybe Text)
    , _pddbgUploadType :: !(Maybe Text)
    , _pddbgPayload :: !BatchGetDocumentsRequest
    , _pddbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddbgXgafv'
--
-- * 'pddbgUploadProtocol'
--
-- * 'pddbgDatabase'
--
-- * 'pddbgAccessToken'
--
-- * 'pddbgUploadType'
--
-- * 'pddbgPayload'
--
-- * 'pddbgCallback'
projectsDatabasesDocumentsBatchGet
    :: Text -- ^ 'pddbgDatabase'
    -> BatchGetDocumentsRequest -- ^ 'pddbgPayload'
    -> ProjectsDatabasesDocumentsBatchGet
projectsDatabasesDocumentsBatchGet pPddbgDatabase_ pPddbgPayload_ =
  ProjectsDatabasesDocumentsBatchGet'
    { _pddbgXgafv = Nothing
    , _pddbgUploadProtocol = Nothing
    , _pddbgDatabase = pPddbgDatabase_
    , _pddbgAccessToken = Nothing
    , _pddbgUploadType = Nothing
    , _pddbgPayload = pPddbgPayload_
    , _pddbgCallback = Nothing
    }


-- | V1 error format.
pddbgXgafv :: Lens' ProjectsDatabasesDocumentsBatchGet (Maybe Xgafv)
pddbgXgafv
  = lens _pddbgXgafv (\ s a -> s{_pddbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddbgUploadProtocol :: Lens' ProjectsDatabasesDocumentsBatchGet (Maybe Text)
pddbgUploadProtocol
  = lens _pddbgUploadProtocol
      (\ s a -> s{_pddbgUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pddbgDatabase :: Lens' ProjectsDatabasesDocumentsBatchGet Text
pddbgDatabase
  = lens _pddbgDatabase
      (\ s a -> s{_pddbgDatabase = a})

-- | OAuth access token.
pddbgAccessToken :: Lens' ProjectsDatabasesDocumentsBatchGet (Maybe Text)
pddbgAccessToken
  = lens _pddbgAccessToken
      (\ s a -> s{_pddbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddbgUploadType :: Lens' ProjectsDatabasesDocumentsBatchGet (Maybe Text)
pddbgUploadType
  = lens _pddbgUploadType
      (\ s a -> s{_pddbgUploadType = a})

-- | Multipart request metadata.
pddbgPayload :: Lens' ProjectsDatabasesDocumentsBatchGet BatchGetDocumentsRequest
pddbgPayload
  = lens _pddbgPayload (\ s a -> s{_pddbgPayload = a})

-- | JSONP
pddbgCallback :: Lens' ProjectsDatabasesDocumentsBatchGet (Maybe Text)
pddbgCallback
  = lens _pddbgCallback
      (\ s a -> s{_pddbgCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsBatchGet
         where
        type Rs ProjectsDatabasesDocumentsBatchGet =
             BatchGetDocumentsResponse
        type Scopes ProjectsDatabasesDocumentsBatchGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsBatchGet'{..}
          = go _pddbgDatabase _pddbgXgafv _pddbgUploadProtocol
              _pddbgAccessToken
              _pddbgUploadType
              _pddbgCallback
              (Just AltJSON)
              _pddbgPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsBatchGetResource)
                      mempty
