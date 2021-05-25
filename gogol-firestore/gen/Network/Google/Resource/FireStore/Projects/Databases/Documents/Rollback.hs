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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Rollback
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a transaction.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.rollback@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Rollback
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsRollbackResource

    -- * Creating a Request
    , projectsDatabasesDocumentsRollback
    , ProjectsDatabasesDocumentsRollback

    -- * Request Lenses
    , pddrXgafv
    , pddrUploadProtocol
    , pddrDatabase
    , pddrAccessToken
    , pddrUploadType
    , pddrPayload
    , pddrCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.rollback@ method which the
-- 'ProjectsDatabasesDocumentsRollback' request conforms to.
type ProjectsDatabasesDocumentsRollbackResource =
     "v1" :>
       Capture "database" Text :>
         "documents:rollback" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RollbackRequest :> Post '[JSON] Empty

-- | Rolls back a transaction.
--
-- /See:/ 'projectsDatabasesDocumentsRollback' smart constructor.
data ProjectsDatabasesDocumentsRollback =
  ProjectsDatabasesDocumentsRollback'
    { _pddrXgafv :: !(Maybe Xgafv)
    , _pddrUploadProtocol :: !(Maybe Text)
    , _pddrDatabase :: !Text
    , _pddrAccessToken :: !(Maybe Text)
    , _pddrUploadType :: !(Maybe Text)
    , _pddrPayload :: !RollbackRequest
    , _pddrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddrXgafv'
--
-- * 'pddrUploadProtocol'
--
-- * 'pddrDatabase'
--
-- * 'pddrAccessToken'
--
-- * 'pddrUploadType'
--
-- * 'pddrPayload'
--
-- * 'pddrCallback'
projectsDatabasesDocumentsRollback
    :: Text -- ^ 'pddrDatabase'
    -> RollbackRequest -- ^ 'pddrPayload'
    -> ProjectsDatabasesDocumentsRollback
projectsDatabasesDocumentsRollback pPddrDatabase_ pPddrPayload_ =
  ProjectsDatabasesDocumentsRollback'
    { _pddrXgafv = Nothing
    , _pddrUploadProtocol = Nothing
    , _pddrDatabase = pPddrDatabase_
    , _pddrAccessToken = Nothing
    , _pddrUploadType = Nothing
    , _pddrPayload = pPddrPayload_
    , _pddrCallback = Nothing
    }


-- | V1 error format.
pddrXgafv :: Lens' ProjectsDatabasesDocumentsRollback (Maybe Xgafv)
pddrXgafv
  = lens _pddrXgafv (\ s a -> s{_pddrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddrUploadProtocol :: Lens' ProjectsDatabasesDocumentsRollback (Maybe Text)
pddrUploadProtocol
  = lens _pddrUploadProtocol
      (\ s a -> s{_pddrUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pddrDatabase :: Lens' ProjectsDatabasesDocumentsRollback Text
pddrDatabase
  = lens _pddrDatabase (\ s a -> s{_pddrDatabase = a})

-- | OAuth access token.
pddrAccessToken :: Lens' ProjectsDatabasesDocumentsRollback (Maybe Text)
pddrAccessToken
  = lens _pddrAccessToken
      (\ s a -> s{_pddrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddrUploadType :: Lens' ProjectsDatabasesDocumentsRollback (Maybe Text)
pddrUploadType
  = lens _pddrUploadType
      (\ s a -> s{_pddrUploadType = a})

-- | Multipart request metadata.
pddrPayload :: Lens' ProjectsDatabasesDocumentsRollback RollbackRequest
pddrPayload
  = lens _pddrPayload (\ s a -> s{_pddrPayload = a})

-- | JSONP
pddrCallback :: Lens' ProjectsDatabasesDocumentsRollback (Maybe Text)
pddrCallback
  = lens _pddrCallback (\ s a -> s{_pddrCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsRollback
         where
        type Rs ProjectsDatabasesDocumentsRollback = Empty
        type Scopes ProjectsDatabasesDocumentsRollback =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsRollback'{..}
          = go _pddrDatabase _pddrXgafv _pddrUploadProtocol
              _pddrAccessToken
              _pddrUploadType
              _pddrCallback
              (Just AltJSON)
              _pddrPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsRollbackResource)
                      mempty
