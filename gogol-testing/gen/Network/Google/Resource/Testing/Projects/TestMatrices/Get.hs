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
-- Module      : Network.Google.Resource.Testing.Projects.TestMatrices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the status of a test matrix. May return any of the following
-- canonical error codes: - PERMISSION_DENIED - if the user is not
-- authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference> for @testing.projects.testMatrices.get@.
module Network.Google.Resource.Testing.Projects.TestMatrices.Get
    (
    -- * REST Resource
      ProjectsTestMatricesGetResource

    -- * Creating a Request
    , projectsTestMatricesGet
    , ProjectsTestMatricesGet

    -- * Request Lenses
    , ptmgXgafv
    , ptmgUploadProtocol
    , ptmgTestMatrixId
    , ptmgAccessToken
    , ptmgUploadType
    , ptmgProjectId
    , ptmgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Testing.Types

-- | A resource alias for @testing.projects.testMatrices.get@ method which the
-- 'ProjectsTestMatricesGet' request conforms to.
type ProjectsTestMatricesGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "testMatrices" :>
             Capture "testMatrixId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] TestMatrix

-- | Checks the status of a test matrix. May return any of the following
-- canonical error codes: - PERMISSION_DENIED - if the user is not
-- authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ 'projectsTestMatricesGet' smart constructor.
data ProjectsTestMatricesGet = ProjectsTestMatricesGet'
    { _ptmgXgafv          :: !(Maybe Xgafv)
    , _ptmgUploadProtocol :: !(Maybe Text)
    , _ptmgTestMatrixId   :: !Text
    , _ptmgAccessToken    :: !(Maybe Text)
    , _ptmgUploadType     :: !(Maybe Text)
    , _ptmgProjectId      :: !Text
    , _ptmgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTestMatricesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptmgXgafv'
--
-- * 'ptmgUploadProtocol'
--
-- * 'ptmgTestMatrixId'
--
-- * 'ptmgAccessToken'
--
-- * 'ptmgUploadType'
--
-- * 'ptmgProjectId'
--
-- * 'ptmgCallback'
projectsTestMatricesGet
    :: Text -- ^ 'ptmgTestMatrixId'
    -> Text -- ^ 'ptmgProjectId'
    -> ProjectsTestMatricesGet
projectsTestMatricesGet pPtmgTestMatrixId_ pPtmgProjectId_ =
    ProjectsTestMatricesGet'
    { _ptmgXgafv = Nothing
    , _ptmgUploadProtocol = Nothing
    , _ptmgTestMatrixId = pPtmgTestMatrixId_
    , _ptmgAccessToken = Nothing
    , _ptmgUploadType = Nothing
    , _ptmgProjectId = pPtmgProjectId_
    , _ptmgCallback = Nothing
    }

-- | V1 error format.
ptmgXgafv :: Lens' ProjectsTestMatricesGet (Maybe Xgafv)
ptmgXgafv
  = lens _ptmgXgafv (\ s a -> s{_ptmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptmgUploadProtocol :: Lens' ProjectsTestMatricesGet (Maybe Text)
ptmgUploadProtocol
  = lens _ptmgUploadProtocol
      (\ s a -> s{_ptmgUploadProtocol = a})

-- | Unique test matrix id which was assigned by the service.
ptmgTestMatrixId :: Lens' ProjectsTestMatricesGet Text
ptmgTestMatrixId
  = lens _ptmgTestMatrixId
      (\ s a -> s{_ptmgTestMatrixId = a})

-- | OAuth access token.
ptmgAccessToken :: Lens' ProjectsTestMatricesGet (Maybe Text)
ptmgAccessToken
  = lens _ptmgAccessToken
      (\ s a -> s{_ptmgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptmgUploadType :: Lens' ProjectsTestMatricesGet (Maybe Text)
ptmgUploadType
  = lens _ptmgUploadType
      (\ s a -> s{_ptmgUploadType = a})

-- | Cloud project that owns the test matrix.
ptmgProjectId :: Lens' ProjectsTestMatricesGet Text
ptmgProjectId
  = lens _ptmgProjectId
      (\ s a -> s{_ptmgProjectId = a})

-- | JSONP
ptmgCallback :: Lens' ProjectsTestMatricesGet (Maybe Text)
ptmgCallback
  = lens _ptmgCallback (\ s a -> s{_ptmgCallback = a})

instance GoogleRequest ProjectsTestMatricesGet where
        type Rs ProjectsTestMatricesGet = TestMatrix
        type Scopes ProjectsTestMatricesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsTestMatricesGet'{..}
          = go _ptmgProjectId _ptmgTestMatrixId _ptmgXgafv
              _ptmgUploadProtocol
              _ptmgAccessToken
              _ptmgUploadType
              _ptmgCallback
              (Just AltJSON)
              testingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTestMatricesGetResource)
                      mempty
