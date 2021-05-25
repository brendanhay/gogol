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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.BeginTransaction
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new transaction.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.beginTransaction@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.BeginTransaction
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsBeginTransactionResource

    -- * Creating a Request
    , projectsDatabasesDocumentsBeginTransaction
    , ProjectsDatabasesDocumentsBeginTransaction

    -- * Request Lenses
    , pddbtXgafv
    , pddbtUploadProtocol
    , pddbtDatabase
    , pddbtAccessToken
    , pddbtUploadType
    , pddbtPayload
    , pddbtCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.beginTransaction@ method which the
-- 'ProjectsDatabasesDocumentsBeginTransaction' request conforms to.
type ProjectsDatabasesDocumentsBeginTransactionResource
     =
     "v1" :>
       Capture "database" Text :>
         "documents:beginTransaction" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BeginTransactionRequest :>
                         Post '[JSON] BeginTransactionResponse

-- | Starts a new transaction.
--
-- /See:/ 'projectsDatabasesDocumentsBeginTransaction' smart constructor.
data ProjectsDatabasesDocumentsBeginTransaction =
  ProjectsDatabasesDocumentsBeginTransaction'
    { _pddbtXgafv :: !(Maybe Xgafv)
    , _pddbtUploadProtocol :: !(Maybe Text)
    , _pddbtDatabase :: !Text
    , _pddbtAccessToken :: !(Maybe Text)
    , _pddbtUploadType :: !(Maybe Text)
    , _pddbtPayload :: !BeginTransactionRequest
    , _pddbtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsBeginTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddbtXgafv'
--
-- * 'pddbtUploadProtocol'
--
-- * 'pddbtDatabase'
--
-- * 'pddbtAccessToken'
--
-- * 'pddbtUploadType'
--
-- * 'pddbtPayload'
--
-- * 'pddbtCallback'
projectsDatabasesDocumentsBeginTransaction
    :: Text -- ^ 'pddbtDatabase'
    -> BeginTransactionRequest -- ^ 'pddbtPayload'
    -> ProjectsDatabasesDocumentsBeginTransaction
projectsDatabasesDocumentsBeginTransaction pPddbtDatabase_ pPddbtPayload_ =
  ProjectsDatabasesDocumentsBeginTransaction'
    { _pddbtXgafv = Nothing
    , _pddbtUploadProtocol = Nothing
    , _pddbtDatabase = pPddbtDatabase_
    , _pddbtAccessToken = Nothing
    , _pddbtUploadType = Nothing
    , _pddbtPayload = pPddbtPayload_
    , _pddbtCallback = Nothing
    }


-- | V1 error format.
pddbtXgafv :: Lens' ProjectsDatabasesDocumentsBeginTransaction (Maybe Xgafv)
pddbtXgafv
  = lens _pddbtXgafv (\ s a -> s{_pddbtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddbtUploadProtocol :: Lens' ProjectsDatabasesDocumentsBeginTransaction (Maybe Text)
pddbtUploadProtocol
  = lens _pddbtUploadProtocol
      (\ s a -> s{_pddbtUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pddbtDatabase :: Lens' ProjectsDatabasesDocumentsBeginTransaction Text
pddbtDatabase
  = lens _pddbtDatabase
      (\ s a -> s{_pddbtDatabase = a})

-- | OAuth access token.
pddbtAccessToken :: Lens' ProjectsDatabasesDocumentsBeginTransaction (Maybe Text)
pddbtAccessToken
  = lens _pddbtAccessToken
      (\ s a -> s{_pddbtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddbtUploadType :: Lens' ProjectsDatabasesDocumentsBeginTransaction (Maybe Text)
pddbtUploadType
  = lens _pddbtUploadType
      (\ s a -> s{_pddbtUploadType = a})

-- | Multipart request metadata.
pddbtPayload :: Lens' ProjectsDatabasesDocumentsBeginTransaction BeginTransactionRequest
pddbtPayload
  = lens _pddbtPayload (\ s a -> s{_pddbtPayload = a})

-- | JSONP
pddbtCallback :: Lens' ProjectsDatabasesDocumentsBeginTransaction (Maybe Text)
pddbtCallback
  = lens _pddbtCallback
      (\ s a -> s{_pddbtCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsBeginTransaction
         where
        type Rs ProjectsDatabasesDocumentsBeginTransaction =
             BeginTransactionResponse
        type Scopes
               ProjectsDatabasesDocumentsBeginTransaction
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesDocumentsBeginTransaction'{..}
          = go _pddbtDatabase _pddbtXgafv _pddbtUploadProtocol
              _pddbtAccessToken
              _pddbtUploadType
              _pddbtCallback
              (Just AltJSON)
              _pddbtPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesDocumentsBeginTransactionResource)
                      mempty
