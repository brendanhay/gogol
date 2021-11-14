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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified test case.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesPatch
    , ProjectsLocationsAgentsTestCasesPatch

    -- * Request Lenses
    , platcpXgafv
    , platcpUploadProtocol
    , platcpUpdateMask
    , platcpAccessToken
    , platcpUploadType
    , platcpPayload
    , platcpName
    , platcpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.patch@ method which the
-- 'ProjectsLocationsAgentsTestCasesPatch' request conforms to.
type ProjectsLocationsAgentsTestCasesPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3TestCase :>
                         Patch '[JSON] GoogleCloudDialogflowCxV3TestCase

-- | Updates the specified test case.
--
-- /See:/ 'projectsLocationsAgentsTestCasesPatch' smart constructor.
data ProjectsLocationsAgentsTestCasesPatch =
  ProjectsLocationsAgentsTestCasesPatch'
    { _platcpXgafv :: !(Maybe Xgafv)
    , _platcpUploadProtocol :: !(Maybe Text)
    , _platcpUpdateMask :: !(Maybe GFieldMask)
    , _platcpAccessToken :: !(Maybe Text)
    , _platcpUploadType :: !(Maybe Text)
    , _platcpPayload :: !GoogleCloudDialogflowCxV3TestCase
    , _platcpName :: !Text
    , _platcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcpXgafv'
--
-- * 'platcpUploadProtocol'
--
-- * 'platcpUpdateMask'
--
-- * 'platcpAccessToken'
--
-- * 'platcpUploadType'
--
-- * 'platcpPayload'
--
-- * 'platcpName'
--
-- * 'platcpCallback'
projectsLocationsAgentsTestCasesPatch
    :: GoogleCloudDialogflowCxV3TestCase -- ^ 'platcpPayload'
    -> Text -- ^ 'platcpName'
    -> ProjectsLocationsAgentsTestCasesPatch
projectsLocationsAgentsTestCasesPatch pPlatcpPayload_ pPlatcpName_ =
  ProjectsLocationsAgentsTestCasesPatch'
    { _platcpXgafv = Nothing
    , _platcpUploadProtocol = Nothing
    , _platcpUpdateMask = Nothing
    , _platcpAccessToken = Nothing
    , _platcpUploadType = Nothing
    , _platcpPayload = pPlatcpPayload_
    , _platcpName = pPlatcpName_
    , _platcpCallback = Nothing
    }


-- | V1 error format.
platcpXgafv :: Lens' ProjectsLocationsAgentsTestCasesPatch (Maybe Xgafv)
platcpXgafv
  = lens _platcpXgafv (\ s a -> s{_platcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcpUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesPatch (Maybe Text)
platcpUploadProtocol
  = lens _platcpUploadProtocol
      (\ s a -> s{_platcpUploadProtocol = a})

-- | Required. The mask to specify which fields should be updated. The
-- \`creationTime\` and \`lastTestResult\` cannot be updated.
platcpUpdateMask :: Lens' ProjectsLocationsAgentsTestCasesPatch (Maybe GFieldMask)
platcpUpdateMask
  = lens _platcpUpdateMask
      (\ s a -> s{_platcpUpdateMask = a})

-- | OAuth access token.
platcpAccessToken :: Lens' ProjectsLocationsAgentsTestCasesPatch (Maybe Text)
platcpAccessToken
  = lens _platcpAccessToken
      (\ s a -> s{_platcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcpUploadType :: Lens' ProjectsLocationsAgentsTestCasesPatch (Maybe Text)
platcpUploadType
  = lens _platcpUploadType
      (\ s a -> s{_platcpUploadType = a})

-- | Multipart request metadata.
platcpPayload :: Lens' ProjectsLocationsAgentsTestCasesPatch GoogleCloudDialogflowCxV3TestCase
platcpPayload
  = lens _platcpPayload
      (\ s a -> s{_platcpPayload = a})

-- | The unique identifier of the test case. TestCases.CreateTestCase will
-- populate the name automatically. Otherwise use format:
-- \`projects\/\/locations\/\/agents\/ \/testCases\/\`.
platcpName :: Lens' ProjectsLocationsAgentsTestCasesPatch Text
platcpName
  = lens _platcpName (\ s a -> s{_platcpName = a})

-- | JSONP
platcpCallback :: Lens' ProjectsLocationsAgentsTestCasesPatch (Maybe Text)
platcpCallback
  = lens _platcpCallback
      (\ s a -> s{_platcpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesPatch
         where
        type Rs ProjectsLocationsAgentsTestCasesPatch =
             GoogleCloudDialogflowCxV3TestCase
        type Scopes ProjectsLocationsAgentsTestCasesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesPatch'{..}
          = go _platcpName _platcpXgafv _platcpUploadProtocol
              _platcpUpdateMask
              _platcpAccessToken
              _platcpUploadType
              _platcpCallback
              (Just AltJSON)
              _platcpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesPatchResource)
                      mempty
