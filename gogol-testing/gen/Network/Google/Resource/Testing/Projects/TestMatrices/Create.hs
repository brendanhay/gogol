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
-- Module      : Network.Google.Resource.Testing.Projects.TestMatrices.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and runs a matrix of tests according to the given
-- specifications. Unsupported environments will be returned in the state
-- UNSUPPORTED. Matrices are limited to at most 200 supported executions.
-- May return any of the following canonical error codes: -
-- PERMISSION_DENIED - if the user is not authorized to write to project -
-- INVALID_ARGUMENT - if the request is malformed or if the matrix expands
-- to more than 200 supported executions
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference> for @testing.projects.testMatrices.create@.
module Network.Google.Resource.Testing.Projects.TestMatrices.Create
    (
    -- * REST Resource
      ProjectsTestMatricesCreateResource

    -- * Creating a Request
    , projectsTestMatricesCreate
    , ProjectsTestMatricesCreate

    -- * Request Lenses
    , pXgafv
    , pRequestId
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pProjectId
    , pCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Testing.Types

-- | A resource alias for @testing.projects.testMatrices.create@ method which the
-- 'ProjectsTestMatricesCreate' request conforms to.
type ProjectsTestMatricesCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "testMatrices" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "requestId" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TestMatrix :> Post '[JSON] TestMatrix

-- | Creates and runs a matrix of tests according to the given
-- specifications. Unsupported environments will be returned in the state
-- UNSUPPORTED. Matrices are limited to at most 200 supported executions.
-- May return any of the following canonical error codes: -
-- PERMISSION_DENIED - if the user is not authorized to write to project -
-- INVALID_ARGUMENT - if the request is malformed or if the matrix expands
-- to more than 200 supported executions
--
-- /See:/ 'projectsTestMatricesCreate' smart constructor.
data ProjectsTestMatricesCreate = ProjectsTestMatricesCreate'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pRequestId      :: !(Maybe Text)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !TestMatrix
    , _pProjectId      :: !Text
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTestMatricesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pRequestId'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pProjectId'
--
-- * 'pCallback'
projectsTestMatricesCreate
    :: TestMatrix -- ^ 'pPayload'
    -> Text -- ^ 'pProjectId'
    -> ProjectsTestMatricesCreate
projectsTestMatricesCreate pPPayload_ pPProjectId_ =
    ProjectsTestMatricesCreate'
    { _pXgafv = Nothing
    , _pRequestId = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pProjectId = pPProjectId_
    , _pCallback = Nothing
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsTestMatricesCreate (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | A string id used to detect duplicated requests. Ids are automatically
-- scoped to a project, so users should ensure the ID is unique
-- per-project. A UUID is recommended. Optional, but strongly recommended.
pRequestId :: Lens' ProjectsTestMatricesCreate (Maybe Text)
pRequestId
  = lens _pRequestId (\ s a -> s{_pRequestId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsTestMatricesCreate (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsTestMatricesCreate (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsTestMatricesCreate (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsTestMatricesCreate TestMatrix
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | The GCE project under which this job will run.
pProjectId :: Lens' ProjectsTestMatricesCreate Text
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | JSONP
pCallback :: Lens' ProjectsTestMatricesCreate (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsTestMatricesCreate
         where
        type Rs ProjectsTestMatricesCreate = TestMatrix
        type Scopes ProjectsTestMatricesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTestMatricesCreate'{..}
          = go _pProjectId _pXgafv _pRequestId _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              testingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTestMatricesCreateResource)
                      mempty
