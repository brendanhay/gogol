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
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.runQuery@.
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
    , prqAccessToken
    , prqUploadType
    , prqPayload
    , prqProjectId
    , prqCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.runQuery@ method which the
-- 'ProjectsRunQuery' request conforms to.
type ProjectsRunQueryResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "runQuery" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RunQueryRequest :>
                         Post '[JSON] RunQueryResponse

-- | Queries for entities.
--
-- /See:/ 'projectsRunQuery' smart constructor.
data ProjectsRunQuery =
  ProjectsRunQuery'
    { _prqXgafv          :: !(Maybe Xgafv)
    , _prqUploadProtocol :: !(Maybe Text)
    , _prqAccessToken    :: !(Maybe Text)
    , _prqUploadType     :: !(Maybe Text)
    , _prqPayload        :: !RunQueryRequest
    , _prqProjectId      :: !Text
    , _prqCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prqXgafv'
--
-- * 'prqUploadProtocol'
--
-- * 'prqAccessToken'
--
-- * 'prqUploadType'
--
-- * 'prqPayload'
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
    , _prqAccessToken = Nothing
    , _prqUploadType = Nothing
    , _prqPayload = pPrqPayload_
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
              _prqAccessToken
              _prqUploadType
              _prqCallback
              (Just AltJSON)
              _prqPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRunQueryResource)
                      mempty
