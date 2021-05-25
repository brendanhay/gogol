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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Listen
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Listens to changes.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.listen@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Listen
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsListenResource

    -- * Creating a Request
    , projectsDatabasesDocumentsListen
    , ProjectsDatabasesDocumentsListen

    -- * Request Lenses
    , pddlXgafv
    , pddlUploadProtocol
    , pddlDatabase
    , pddlAccessToken
    , pddlUploadType
    , pddlPayload
    , pddlCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.listen@ method which the
-- 'ProjectsDatabasesDocumentsListen' request conforms to.
type ProjectsDatabasesDocumentsListenResource =
     "v1" :>
       Capture "database" Text :>
         "documents:listen" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ListenRequest :>
                         Post '[JSON] ListenResponse

-- | Listens to changes.
--
-- /See:/ 'projectsDatabasesDocumentsListen' smart constructor.
data ProjectsDatabasesDocumentsListen =
  ProjectsDatabasesDocumentsListen'
    { _pddlXgafv :: !(Maybe Xgafv)
    , _pddlUploadProtocol :: !(Maybe Text)
    , _pddlDatabase :: !Text
    , _pddlAccessToken :: !(Maybe Text)
    , _pddlUploadType :: !(Maybe Text)
    , _pddlPayload :: !ListenRequest
    , _pddlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsListen' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddlXgafv'
--
-- * 'pddlUploadProtocol'
--
-- * 'pddlDatabase'
--
-- * 'pddlAccessToken'
--
-- * 'pddlUploadType'
--
-- * 'pddlPayload'
--
-- * 'pddlCallback'
projectsDatabasesDocumentsListen
    :: Text -- ^ 'pddlDatabase'
    -> ListenRequest -- ^ 'pddlPayload'
    -> ProjectsDatabasesDocumentsListen
projectsDatabasesDocumentsListen pPddlDatabase_ pPddlPayload_ =
  ProjectsDatabasesDocumentsListen'
    { _pddlXgafv = Nothing
    , _pddlUploadProtocol = Nothing
    , _pddlDatabase = pPddlDatabase_
    , _pddlAccessToken = Nothing
    , _pddlUploadType = Nothing
    , _pddlPayload = pPddlPayload_
    , _pddlCallback = Nothing
    }


-- | V1 error format.
pddlXgafv :: Lens' ProjectsDatabasesDocumentsListen (Maybe Xgafv)
pddlXgafv
  = lens _pddlXgafv (\ s a -> s{_pddlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddlUploadProtocol :: Lens' ProjectsDatabasesDocumentsListen (Maybe Text)
pddlUploadProtocol
  = lens _pddlUploadProtocol
      (\ s a -> s{_pddlUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pddlDatabase :: Lens' ProjectsDatabasesDocumentsListen Text
pddlDatabase
  = lens _pddlDatabase (\ s a -> s{_pddlDatabase = a})

-- | OAuth access token.
pddlAccessToken :: Lens' ProjectsDatabasesDocumentsListen (Maybe Text)
pddlAccessToken
  = lens _pddlAccessToken
      (\ s a -> s{_pddlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddlUploadType :: Lens' ProjectsDatabasesDocumentsListen (Maybe Text)
pddlUploadType
  = lens _pddlUploadType
      (\ s a -> s{_pddlUploadType = a})

-- | Multipart request metadata.
pddlPayload :: Lens' ProjectsDatabasesDocumentsListen ListenRequest
pddlPayload
  = lens _pddlPayload (\ s a -> s{_pddlPayload = a})

-- | JSONP
pddlCallback :: Lens' ProjectsDatabasesDocumentsListen (Maybe Text)
pddlCallback
  = lens _pddlCallback (\ s a -> s{_pddlCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsListen
         where
        type Rs ProjectsDatabasesDocumentsListen =
             ListenResponse
        type Scopes ProjectsDatabasesDocumentsListen =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsListen'{..}
          = go _pddlDatabase _pddlXgafv _pddlUploadProtocol
              _pddlAccessToken
              _pddlUploadType
              _pddlCallback
              (Just AltJSON)
              _pddlPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsListenResource)
                      mempty
