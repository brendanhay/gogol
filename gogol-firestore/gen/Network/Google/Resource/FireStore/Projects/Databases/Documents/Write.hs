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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Write
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streams batches of document updates and deletes, in order.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.write@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Write
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsWriteResource

    -- * Creating a Request
    , projectsDatabasesDocumentsWrite
    , ProjectsDatabasesDocumentsWrite

    -- * Request Lenses
    , pddwXgafv
    , pddwUploadProtocol
    , pddwDatabase
    , pddwAccessToken
    , pddwUploadType
    , pddwPayload
    , pddwCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.write@ method which the
-- 'ProjectsDatabasesDocumentsWrite' request conforms to.
type ProjectsDatabasesDocumentsWriteResource =
     "v1" :>
       Capture "database" Text :>
         "documents:write" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WriteRequest :>
                         Post '[JSON] WriteResponse

-- | Streams batches of document updates and deletes, in order.
--
-- /See:/ 'projectsDatabasesDocumentsWrite' smart constructor.
data ProjectsDatabasesDocumentsWrite =
  ProjectsDatabasesDocumentsWrite'
    { _pddwXgafv :: !(Maybe Xgafv)
    , _pddwUploadProtocol :: !(Maybe Text)
    , _pddwDatabase :: !Text
    , _pddwAccessToken :: !(Maybe Text)
    , _pddwUploadType :: !(Maybe Text)
    , _pddwPayload :: !WriteRequest
    , _pddwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddwXgafv'
--
-- * 'pddwUploadProtocol'
--
-- * 'pddwDatabase'
--
-- * 'pddwAccessToken'
--
-- * 'pddwUploadType'
--
-- * 'pddwPayload'
--
-- * 'pddwCallback'
projectsDatabasesDocumentsWrite
    :: Text -- ^ 'pddwDatabase'
    -> WriteRequest -- ^ 'pddwPayload'
    -> ProjectsDatabasesDocumentsWrite
projectsDatabasesDocumentsWrite pPddwDatabase_ pPddwPayload_ =
  ProjectsDatabasesDocumentsWrite'
    { _pddwXgafv = Nothing
    , _pddwUploadProtocol = Nothing
    , _pddwDatabase = pPddwDatabase_
    , _pddwAccessToken = Nothing
    , _pddwUploadType = Nothing
    , _pddwPayload = pPddwPayload_
    , _pddwCallback = Nothing
    }


-- | V1 error format.
pddwXgafv :: Lens' ProjectsDatabasesDocumentsWrite (Maybe Xgafv)
pddwXgafv
  = lens _pddwXgafv (\ s a -> s{_pddwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddwUploadProtocol :: Lens' ProjectsDatabasesDocumentsWrite (Maybe Text)
pddwUploadProtocol
  = lens _pddwUploadProtocol
      (\ s a -> s{_pddwUploadProtocol = a})

-- | Required. The database name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\`. This is only
-- required in the first message.
pddwDatabase :: Lens' ProjectsDatabasesDocumentsWrite Text
pddwDatabase
  = lens _pddwDatabase (\ s a -> s{_pddwDatabase = a})

-- | OAuth access token.
pddwAccessToken :: Lens' ProjectsDatabasesDocumentsWrite (Maybe Text)
pddwAccessToken
  = lens _pddwAccessToken
      (\ s a -> s{_pddwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddwUploadType :: Lens' ProjectsDatabasesDocumentsWrite (Maybe Text)
pddwUploadType
  = lens _pddwUploadType
      (\ s a -> s{_pddwUploadType = a})

-- | Multipart request metadata.
pddwPayload :: Lens' ProjectsDatabasesDocumentsWrite WriteRequest
pddwPayload
  = lens _pddwPayload (\ s a -> s{_pddwPayload = a})

-- | JSONP
pddwCallback :: Lens' ProjectsDatabasesDocumentsWrite (Maybe Text)
pddwCallback
  = lens _pddwCallback (\ s a -> s{_pddwCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsWrite
         where
        type Rs ProjectsDatabasesDocumentsWrite =
             WriteResponse
        type Scopes ProjectsDatabasesDocumentsWrite =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsWrite'{..}
          = go _pddwDatabase _pddwXgafv _pddwUploadProtocol
              _pddwAccessToken
              _pddwUploadType
              _pddwCallback
              (Just AltJSON)
              _pddwPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsWriteResource)
                      mempty
