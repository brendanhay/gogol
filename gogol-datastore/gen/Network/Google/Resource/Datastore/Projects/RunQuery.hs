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
-- Module      : Network.Google.Resource.Datastore.Projects.RunQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for entities.
--
-- /See:/ <https://cloud.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.projects.runQuery@.
module Network.Google.Resource.Datastore.Projects.RunQuery
    (
    -- * REST Resource
      ProjectsRunQueryResource

    -- * Creating a Request
    , projectsRunQuery
    , ProjectsRunQuery

    -- * Request Lenses
    , prqXgafv
    , prqUploadProtocol
    , prqPp
    , prqAccessToken
    , prqUploadType
    , prqPayload
    , prqBearerToken
    , prqProjectId
    , prqCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.runQuery@ method which the
-- 'ProjectsRunQuery' request conforms to.
type ProjectsRunQueryResource =
     "v1beta3" :>
       "projects" :>
         CaptureMode "projectId" "runQuery" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RunQueryRequest :>
                             Post '[JSON] RunQueryResponse

-- | Queries for entities.
--
-- /See:/ 'projectsRunQuery' smart constructor.
data ProjectsRunQuery = ProjectsRunQuery'
    { _prqXgafv          :: !(Maybe Xgafv)
    , _prqUploadProtocol :: !(Maybe Text)
    , _prqPp             :: !Bool
    , _prqAccessToken    :: !(Maybe Text)
    , _prqUploadType     :: !(Maybe Text)
    , _prqPayload        :: !RunQueryRequest
    , _prqBearerToken    :: !(Maybe Text)
    , _prqProjectId      :: !Text
    , _prqCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prqXgafv'
--
-- * 'prqUploadProtocol'
--
-- * 'prqPp'
--
-- * 'prqAccessToken'
--
-- * 'prqUploadType'
--
-- * 'prqPayload'
--
-- * 'prqBearerToken'
--
-- * 'prqProjectId'
--
-- * 'prqCallback'
projectsRunQuery
    :: RunQueryRequest -- ^ 'prqPayload'
    -> Text -- ^ 'prqProjectId'
    -> ProjectsRunQuery
projectsRunQuery pPrqPayload_ pPrqProjectId_ =
    ProjectsRunQuery'
    { _prqXgafv = Nothing
    , _prqUploadProtocol = Nothing
    , _prqPp = True
    , _prqAccessToken = Nothing
    , _prqUploadType = Nothing
    , _prqPayload = pPrqPayload_
    , _prqBearerToken = Nothing
    , _prqProjectId = pPrqProjectId_
    , _prqCallback = Nothing
    }

-- | V1 error format.
prqXgafv :: Lens' ProjectsRunQuery (Maybe Xgafv)
prqXgafv = lens _prqXgafv (\ s a -> s{_prqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prqUploadProtocol :: Lens' ProjectsRunQuery (Maybe Text)
prqUploadProtocol
  = lens _prqUploadProtocol
      (\ s a -> s{_prqUploadProtocol = a})

-- | Pretty-print response.
prqPp :: Lens' ProjectsRunQuery Bool
prqPp = lens _prqPp (\ s a -> s{_prqPp = a})

-- | OAuth access token.
prqAccessToken :: Lens' ProjectsRunQuery (Maybe Text)
prqAccessToken
  = lens _prqAccessToken
      (\ s a -> s{_prqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prqUploadType :: Lens' ProjectsRunQuery (Maybe Text)
prqUploadType
  = lens _prqUploadType
      (\ s a -> s{_prqUploadType = a})

-- | Multipart request metadata.
prqPayload :: Lens' ProjectsRunQuery RunQueryRequest
prqPayload
  = lens _prqPayload (\ s a -> s{_prqPayload = a})

-- | OAuth bearer token.
prqBearerToken :: Lens' ProjectsRunQuery (Maybe Text)
prqBearerToken
  = lens _prqBearerToken
      (\ s a -> s{_prqBearerToken = a})

-- | The ID of the project against which to make the request.
prqProjectId :: Lens' ProjectsRunQuery Text
prqProjectId
  = lens _prqProjectId (\ s a -> s{_prqProjectId = a})

-- | JSONP
prqCallback :: Lens' ProjectsRunQuery (Maybe Text)
prqCallback
  = lens _prqCallback (\ s a -> s{_prqCallback = a})

instance GoogleRequest ProjectsRunQuery where
        type Rs ProjectsRunQuery = RunQueryResponse
        type Scopes ProjectsRunQuery =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsRunQuery'{..}
          = go _prqProjectId _prqXgafv _prqUploadProtocol
              (Just _prqPp)
              _prqAccessToken
              _prqUploadType
              _prqBearerToken
              _prqCallback
              (Just AltJSON)
              _prqPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRunQueryResource)
                      mempty
