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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Commit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a transaction, while optionally updating documents.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.commit@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Commit
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsCommitResource

    -- * Creating a Request
    , projectsDatabasesDocumentsCommit
    , ProjectsDatabasesDocumentsCommit

    -- * Request Lenses
    , pddcXgafv
    , pddcUploadProtocol
    , pddcDatabase
    , pddcAccessToken
    , pddcUploadType
    , pddcPayload
    , pddcCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.commit@ method which the
-- 'ProjectsDatabasesDocumentsCommit' request conforms to.
type ProjectsDatabasesDocumentsCommitResource =
     "v1" :>
       Capture "database" Text :>
         "documents:commit" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CommitRequest :>
                         Post '[JSON] CommitResponse

-- | Commits a transaction, while optionally updating documents.
--
-- /See:/ 'projectsDatabasesDocumentsCommit' smart constructor.
data ProjectsDatabasesDocumentsCommit =
  ProjectsDatabasesDocumentsCommit'
    { _pddcXgafv :: !(Maybe Xgafv)
    , _pddcUploadProtocol :: !(Maybe Text)
    , _pddcDatabase :: !Text
    , _pddcAccessToken :: !(Maybe Text)
    , _pddcUploadType :: !(Maybe Text)
    , _pddcPayload :: !CommitRequest
    , _pddcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddcXgafv'
--
-- * 'pddcUploadProtocol'
--
-- * 'pddcDatabase'
--
-- * 'pddcAccessToken'
--
-- * 'pddcUploadType'
--
-- * 'pddcPayload'
--
-- * 'pddcCallback'
projectsDatabasesDocumentsCommit
    :: Text -- ^ 'pddcDatabase'
    -> CommitRequest -- ^ 'pddcPayload'
    -> ProjectsDatabasesDocumentsCommit
projectsDatabasesDocumentsCommit pPddcDatabase_ pPddcPayload_ =
  ProjectsDatabasesDocumentsCommit'
    { _pddcXgafv = Nothing
    , _pddcUploadProtocol = Nothing
    , _pddcDatabase = pPddcDatabase_
    , _pddcAccessToken = Nothing
    , _pddcUploadType = Nothing
    , _pddcPayload = pPddcPayload_
    , _pddcCallback = Nothing
    }


-- | V1 error format.
pddcXgafv :: Lens' ProjectsDatabasesDocumentsCommit (Maybe Xgafv)
pddcXgafv
  = lens _pddcXgafv (\ s a -> s{_pddcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddcUploadProtocol :: Lens' ProjectsDatabasesDocumentsCommit (Maybe Text)
pddcUploadProtocol
  = lens _pddcUploadProtocol
      (\ s a -> s{_pddcUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pddcDatabase :: Lens' ProjectsDatabasesDocumentsCommit Text
pddcDatabase
  = lens _pddcDatabase (\ s a -> s{_pddcDatabase = a})

-- | OAuth access token.
pddcAccessToken :: Lens' ProjectsDatabasesDocumentsCommit (Maybe Text)
pddcAccessToken
  = lens _pddcAccessToken
      (\ s a -> s{_pddcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddcUploadType :: Lens' ProjectsDatabasesDocumentsCommit (Maybe Text)
pddcUploadType
  = lens _pddcUploadType
      (\ s a -> s{_pddcUploadType = a})

-- | Multipart request metadata.
pddcPayload :: Lens' ProjectsDatabasesDocumentsCommit CommitRequest
pddcPayload
  = lens _pddcPayload (\ s a -> s{_pddcPayload = a})

-- | JSONP
pddcCallback :: Lens' ProjectsDatabasesDocumentsCommit (Maybe Text)
pddcCallback
  = lens _pddcCallback (\ s a -> s{_pddcCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsCommit
         where
        type Rs ProjectsDatabasesDocumentsCommit =
             CommitResponse
        type Scopes ProjectsDatabasesDocumentsCommit =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsCommit'{..}
          = go _pddcDatabase _pddcXgafv _pddcUploadProtocol
              _pddcAccessToken
              _pddcUploadType
              _pddcCallback
              (Just AltJSON)
              _pddcPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsCommitResource)
                      mempty
