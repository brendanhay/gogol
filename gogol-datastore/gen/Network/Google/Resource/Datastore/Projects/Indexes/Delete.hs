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
-- Module      : Network.Google.Resource.Datastore.Projects.Indexes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing index. An index can only be deleted if it is in a
-- \`READY\` or \`ERROR\` state. On successful execution of the request,
-- the index will be in a \`DELETING\` state. And on completion of the
-- returned google.longrunning.Operation, the index will be removed. During
-- index deletion, the process could result in an error, in which case the
-- index will move to the \`ERROR\` state. The process can be recovered by
-- fixing the data that caused the error, followed by calling delete again.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.delete@.
module Network.Google.Resource.Datastore.Projects.Indexes.Delete
    (
    -- * REST Resource
      ProjectsIndexesDeleteResource

    -- * Creating a Request
    , projectsIndexesDelete
    , ProjectsIndexesDelete

    -- * Request Lenses
    , pidXgafv
    , pidUploadProtocol
    , pidAccessToken
    , pidUploadType
    , pidProjectId
    , pidIndexId
    , pidCallback
    ) where

import Network.Google.Datastore.Types
import Network.Google.Prelude

-- | A resource alias for @datastore.projects.indexes.delete@ method which the
-- 'ProjectsIndexesDelete' request conforms to.
type ProjectsIndexesDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "indexes" :>
             Capture "indexId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Delete '[JSON] GoogleLongrunningOperation

-- | Deletes an existing index. An index can only be deleted if it is in a
-- \`READY\` or \`ERROR\` state. On successful execution of the request,
-- the index will be in a \`DELETING\` state. And on completion of the
-- returned google.longrunning.Operation, the index will be removed. During
-- index deletion, the process could result in an error, in which case the
-- index will move to the \`ERROR\` state. The process can be recovered by
-- fixing the data that caused the error, followed by calling delete again.
--
-- /See:/ 'projectsIndexesDelete' smart constructor.
data ProjectsIndexesDelete =
  ProjectsIndexesDelete'
    { _pidXgafv :: !(Maybe Xgafv)
    , _pidUploadProtocol :: !(Maybe Text)
    , _pidAccessToken :: !(Maybe Text)
    , _pidUploadType :: !(Maybe Text)
    , _pidProjectId :: !Text
    , _pidIndexId :: !Text
    , _pidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsIndexesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidXgafv'
--
-- * 'pidUploadProtocol'
--
-- * 'pidAccessToken'
--
-- * 'pidUploadType'
--
-- * 'pidProjectId'
--
-- * 'pidIndexId'
--
-- * 'pidCallback'
projectsIndexesDelete
    :: Text -- ^ 'pidProjectId'
    -> Text -- ^ 'pidIndexId'
    -> ProjectsIndexesDelete
projectsIndexesDelete pPidProjectId_ pPidIndexId_ =
  ProjectsIndexesDelete'
    { _pidXgafv = Nothing
    , _pidUploadProtocol = Nothing
    , _pidAccessToken = Nothing
    , _pidUploadType = Nothing
    , _pidProjectId = pPidProjectId_
    , _pidIndexId = pPidIndexId_
    , _pidCallback = Nothing
    }


-- | V1 error format.
pidXgafv :: Lens' ProjectsIndexesDelete (Maybe Xgafv)
pidXgafv = lens _pidXgafv (\ s a -> s{_pidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidUploadProtocol :: Lens' ProjectsIndexesDelete (Maybe Text)
pidUploadProtocol
  = lens _pidUploadProtocol
      (\ s a -> s{_pidUploadProtocol = a})

-- | OAuth access token.
pidAccessToken :: Lens' ProjectsIndexesDelete (Maybe Text)
pidAccessToken
  = lens _pidAccessToken
      (\ s a -> s{_pidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidUploadType :: Lens' ProjectsIndexesDelete (Maybe Text)
pidUploadType
  = lens _pidUploadType
      (\ s a -> s{_pidUploadType = a})

-- | Project ID against which to make the request.
pidProjectId :: Lens' ProjectsIndexesDelete Text
pidProjectId
  = lens _pidProjectId (\ s a -> s{_pidProjectId = a})

-- | The resource ID of the index to delete.
pidIndexId :: Lens' ProjectsIndexesDelete Text
pidIndexId
  = lens _pidIndexId (\ s a -> s{_pidIndexId = a})

-- | JSONP
pidCallback :: Lens' ProjectsIndexesDelete (Maybe Text)
pidCallback
  = lens _pidCallback (\ s a -> s{_pidCallback = a})

instance GoogleRequest ProjectsIndexesDelete where
        type Rs ProjectsIndexesDelete =
             GoogleLongrunningOperation
        type Scopes ProjectsIndexesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsIndexesDelete'{..}
          = go _pidProjectId _pidIndexId _pidXgafv
              _pidUploadProtocol
              _pidAccessToken
              _pidUploadType
              _pidCallback
              (Just AltJSON)
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIndexesDeleteResource)
                      mempty
