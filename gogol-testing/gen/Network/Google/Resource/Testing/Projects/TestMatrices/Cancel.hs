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
-- Module      : Network.Google.Resource.Testing.Projects.TestMatrices.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels unfinished test executions in a test matrix. This call returns
-- immediately and cancellation proceeds asychronously. If the matrix is
-- already final, this operation will have no effect. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference> for @testing.projects.testMatrices.cancel@.
module Network.Google.Resource.Testing.Projects.TestMatrices.Cancel
    (
    -- * REST Resource
      ProjectsTestMatricesCancelResource

    -- * Creating a Request
    , projectsTestMatricesCancel
    , ProjectsTestMatricesCancel

    -- * Request Lenses
    , ptmcXgafv
    , ptmcUploadProtocol
    , ptmcTestMatrixId
    , ptmcAccessToken
    , ptmcUploadType
    , ptmcProjectId
    , ptmcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Testing.Types

-- | A resource alias for @testing.projects.testMatrices.cancel@ method which the
-- 'ProjectsTestMatricesCancel' request conforms to.
type ProjectsTestMatricesCancelResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "testMatrices" :>
             CaptureMode "testMatrixId" "cancel" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] CancelTestMatrixResponse

-- | Cancels unfinished test executions in a test matrix. This call returns
-- immediately and cancellation proceeds asychronously. If the matrix is
-- already final, this operation will have no effect. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ 'projectsTestMatricesCancel' smart constructor.
data ProjectsTestMatricesCancel =
  ProjectsTestMatricesCancel'
    { _ptmcXgafv          :: !(Maybe Xgafv)
    , _ptmcUploadProtocol :: !(Maybe Text)
    , _ptmcTestMatrixId   :: !Text
    , _ptmcAccessToken    :: !(Maybe Text)
    , _ptmcUploadType     :: !(Maybe Text)
    , _ptmcProjectId      :: !Text
    , _ptmcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTestMatricesCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptmcXgafv'
--
-- * 'ptmcUploadProtocol'
--
-- * 'ptmcTestMatrixId'
--
-- * 'ptmcAccessToken'
--
-- * 'ptmcUploadType'
--
-- * 'ptmcProjectId'
--
-- * 'ptmcCallback'
projectsTestMatricesCancel
    :: Text -- ^ 'ptmcTestMatrixId'
    -> Text -- ^ 'ptmcProjectId'
    -> ProjectsTestMatricesCancel
projectsTestMatricesCancel pPtmcTestMatrixId_ pPtmcProjectId_ =
  ProjectsTestMatricesCancel'
    { _ptmcXgafv = Nothing
    , _ptmcUploadProtocol = Nothing
    , _ptmcTestMatrixId = pPtmcTestMatrixId_
    , _ptmcAccessToken = Nothing
    , _ptmcUploadType = Nothing
    , _ptmcProjectId = pPtmcProjectId_
    , _ptmcCallback = Nothing
    }


-- | V1 error format.
ptmcXgafv :: Lens' ProjectsTestMatricesCancel (Maybe Xgafv)
ptmcXgafv
  = lens _ptmcXgafv (\ s a -> s{_ptmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptmcUploadProtocol :: Lens' ProjectsTestMatricesCancel (Maybe Text)
ptmcUploadProtocol
  = lens _ptmcUploadProtocol
      (\ s a -> s{_ptmcUploadProtocol = a})

-- | Test matrix that will be canceled.
ptmcTestMatrixId :: Lens' ProjectsTestMatricesCancel Text
ptmcTestMatrixId
  = lens _ptmcTestMatrixId
      (\ s a -> s{_ptmcTestMatrixId = a})

-- | OAuth access token.
ptmcAccessToken :: Lens' ProjectsTestMatricesCancel (Maybe Text)
ptmcAccessToken
  = lens _ptmcAccessToken
      (\ s a -> s{_ptmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptmcUploadType :: Lens' ProjectsTestMatricesCancel (Maybe Text)
ptmcUploadType
  = lens _ptmcUploadType
      (\ s a -> s{_ptmcUploadType = a})

-- | Cloud project that owns the test.
ptmcProjectId :: Lens' ProjectsTestMatricesCancel Text
ptmcProjectId
  = lens _ptmcProjectId
      (\ s a -> s{_ptmcProjectId = a})

-- | JSONP
ptmcCallback :: Lens' ProjectsTestMatricesCancel (Maybe Text)
ptmcCallback
  = lens _ptmcCallback (\ s a -> s{_ptmcCallback = a})

instance GoogleRequest ProjectsTestMatricesCancel
         where
        type Rs ProjectsTestMatricesCancel =
             CancelTestMatrixResponse
        type Scopes ProjectsTestMatricesCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTestMatricesCancel'{..}
          = go _ptmcProjectId _ptmcTestMatrixId _ptmcXgafv
              _ptmcUploadProtocol
              _ptmcAccessToken
              _ptmcUploadType
              _ptmcCallback
              (Just AltJSON)
              testingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTestMatricesCancelResource)
                      mempty
