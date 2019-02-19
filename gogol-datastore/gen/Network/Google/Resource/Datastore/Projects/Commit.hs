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
-- Module      : Network.Google.Resource.Datastore.Projects.Commit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.commit@.
module Network.Google.Resource.Datastore.Projects.Commit
    (
    -- * REST Resource
      ProjectsCommitResource

    -- * Creating a Request
    , projectsCommit
    , ProjectsCommit

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcProjectId
    , pcCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.commit@ method which the
-- 'ProjectsCommit' request conforms to.
type ProjectsCommitResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "commit" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CommitRequest :>
                         Post '[JSON] CommitResponse

-- | Commits a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ 'projectsCommit' smart constructor.
data ProjectsCommit =
  ProjectsCommit'
    { _pcXgafv          :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcAccessToken    :: !(Maybe Text)
    , _pcUploadType     :: !(Maybe Text)
    , _pcPayload        :: !CommitRequest
    , _pcProjectId      :: !Text
    , _pcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcProjectId'
--
-- * 'pcCallback'
projectsCommit
    :: CommitRequest -- ^ 'pcPayload'
    -> Text -- ^ 'pcProjectId'
    -> ProjectsCommit
projectsCommit pPcPayload_ pPcProjectId_ =
  ProjectsCommit'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcProjectId = pPcProjectId_
    , _pcCallback = Nothing
    }

-- | V1 error format.
pcXgafv :: Lens' ProjectsCommit (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' ProjectsCommit (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | OAuth access token.
pcAccessToken :: Lens' ProjectsCommit (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' ProjectsCommit (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' ProjectsCommit CommitRequest
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | The ID of the project against which to make the request.
pcProjectId :: Lens' ProjectsCommit Text
pcProjectId
  = lens _pcProjectId (\ s a -> s{_pcProjectId = a})

-- | JSONP
pcCallback :: Lens' ProjectsCommit (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest ProjectsCommit where
        type Rs ProjectsCommit = CommitResponse
        type Scopes ProjectsCommit =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsCommit'{..}
          = go _pcProjectId _pcXgafv _pcUploadProtocol
              _pcAccessToken
              _pcUploadType
              _pcCallback
              (Just AltJSON)
              _pcPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy ProjectsCommitResource)
                      mempty
