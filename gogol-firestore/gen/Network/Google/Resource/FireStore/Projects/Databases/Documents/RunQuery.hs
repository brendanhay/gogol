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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.RunQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a query.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.runQuery@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.RunQuery
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsRunQueryResource

    -- * Creating a Request
    , projectsDatabasesDocumentsRunQuery
    , ProjectsDatabasesDocumentsRunQuery

    -- * Request Lenses
    , pddrqParent
    , pddrqXgafv
    , pddrqUploadProtocol
    , pddrqAccessToken
    , pddrqUploadType
    , pddrqPayload
    , pddrqCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.runQuery@ method which the
-- 'ProjectsDatabasesDocumentsRunQuery' request conforms to.
type ProjectsDatabasesDocumentsRunQueryResource =
     "v1" :>
       CaptureMode "parent" "runQuery" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RunQueryRequest :>
                       Post '[JSON] RunQueryResponse

-- | Runs a query.
--
-- /See:/ 'projectsDatabasesDocumentsRunQuery' smart constructor.
data ProjectsDatabasesDocumentsRunQuery =
  ProjectsDatabasesDocumentsRunQuery'
    { _pddrqParent :: !Text
    , _pddrqXgafv :: !(Maybe Xgafv)
    , _pddrqUploadProtocol :: !(Maybe Text)
    , _pddrqAccessToken :: !(Maybe Text)
    , _pddrqUploadType :: !(Maybe Text)
    , _pddrqPayload :: !RunQueryRequest
    , _pddrqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddrqParent'
--
-- * 'pddrqXgafv'
--
-- * 'pddrqUploadProtocol'
--
-- * 'pddrqAccessToken'
--
-- * 'pddrqUploadType'
--
-- * 'pddrqPayload'
--
-- * 'pddrqCallback'
projectsDatabasesDocumentsRunQuery
    :: Text -- ^ 'pddrqParent'
    -> RunQueryRequest -- ^ 'pddrqPayload'
    -> ProjectsDatabasesDocumentsRunQuery
projectsDatabasesDocumentsRunQuery pPddrqParent_ pPddrqPayload_ =
  ProjectsDatabasesDocumentsRunQuery'
    { _pddrqParent = pPddrqParent_
    , _pddrqXgafv = Nothing
    , _pddrqUploadProtocol = Nothing
    , _pddrqAccessToken = Nothing
    , _pddrqUploadType = Nothing
    , _pddrqPayload = pPddrqPayload_
    , _pddrqCallback = Nothing
    }


-- | Required. The parent resource name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\` or
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
-- For example: \`projects\/my-project\/databases\/my-database\/documents\`
-- or
-- \`projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom\`
pddrqParent :: Lens' ProjectsDatabasesDocumentsRunQuery Text
pddrqParent
  = lens _pddrqParent (\ s a -> s{_pddrqParent = a})

-- | V1 error format.
pddrqXgafv :: Lens' ProjectsDatabasesDocumentsRunQuery (Maybe Xgafv)
pddrqXgafv
  = lens _pddrqXgafv (\ s a -> s{_pddrqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddrqUploadProtocol :: Lens' ProjectsDatabasesDocumentsRunQuery (Maybe Text)
pddrqUploadProtocol
  = lens _pddrqUploadProtocol
      (\ s a -> s{_pddrqUploadProtocol = a})

-- | OAuth access token.
pddrqAccessToken :: Lens' ProjectsDatabasesDocumentsRunQuery (Maybe Text)
pddrqAccessToken
  = lens _pddrqAccessToken
      (\ s a -> s{_pddrqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddrqUploadType :: Lens' ProjectsDatabasesDocumentsRunQuery (Maybe Text)
pddrqUploadType
  = lens _pddrqUploadType
      (\ s a -> s{_pddrqUploadType = a})

-- | Multipart request metadata.
pddrqPayload :: Lens' ProjectsDatabasesDocumentsRunQuery RunQueryRequest
pddrqPayload
  = lens _pddrqPayload (\ s a -> s{_pddrqPayload = a})

-- | JSONP
pddrqCallback :: Lens' ProjectsDatabasesDocumentsRunQuery (Maybe Text)
pddrqCallback
  = lens _pddrqCallback
      (\ s a -> s{_pddrqCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsRunQuery
         where
        type Rs ProjectsDatabasesDocumentsRunQuery =
             RunQueryResponse
        type Scopes ProjectsDatabasesDocumentsRunQuery =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsRunQuery'{..}
          = go _pddrqParent _pddrqXgafv _pddrqUploadProtocol
              _pddrqAccessToken
              _pddrqUploadType
              _pddrqCallback
              (Just AltJSON)
              _pddrqPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsRunQueryResource)
                      mempty
