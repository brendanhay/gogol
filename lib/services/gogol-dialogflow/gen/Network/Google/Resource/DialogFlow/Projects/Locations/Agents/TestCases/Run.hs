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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Run
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Kicks off a test case run.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.run@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Run
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesRunResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesRun
    , ProjectsLocationsAgentsTestCasesRun

    -- * Request Lenses
    , platcrXgafv
    , platcrUploadProtocol
    , platcrAccessToken
    , platcrUploadType
    , platcrPayload
    , platcrName
    , platcrCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.run@ method which the
-- 'ProjectsLocationsAgentsTestCasesRun' request conforms to.
type ProjectsLocationsAgentsTestCasesRunResource =
     "v3" :>
       CaptureMode "name" "run" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3RunTestCaseRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Kicks off a test case run.
--
-- /See:/ 'projectsLocationsAgentsTestCasesRun' smart constructor.
data ProjectsLocationsAgentsTestCasesRun =
  ProjectsLocationsAgentsTestCasesRun'
    { _platcrXgafv :: !(Maybe Xgafv)
    , _platcrUploadProtocol :: !(Maybe Text)
    , _platcrAccessToken :: !(Maybe Text)
    , _platcrUploadType :: !(Maybe Text)
    , _platcrPayload :: !GoogleCloudDialogflowCxV3RunTestCaseRequest
    , _platcrName :: !Text
    , _platcrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcrXgafv'
--
-- * 'platcrUploadProtocol'
--
-- * 'platcrAccessToken'
--
-- * 'platcrUploadType'
--
-- * 'platcrPayload'
--
-- * 'platcrName'
--
-- * 'platcrCallback'
projectsLocationsAgentsTestCasesRun
    :: GoogleCloudDialogflowCxV3RunTestCaseRequest -- ^ 'platcrPayload'
    -> Text -- ^ 'platcrName'
    -> ProjectsLocationsAgentsTestCasesRun
projectsLocationsAgentsTestCasesRun pPlatcrPayload_ pPlatcrName_ =
  ProjectsLocationsAgentsTestCasesRun'
    { _platcrXgafv = Nothing
    , _platcrUploadProtocol = Nothing
    , _platcrAccessToken = Nothing
    , _platcrUploadType = Nothing
    , _platcrPayload = pPlatcrPayload_
    , _platcrName = pPlatcrName_
    , _platcrCallback = Nothing
    }


-- | V1 error format.
platcrXgafv :: Lens' ProjectsLocationsAgentsTestCasesRun (Maybe Xgafv)
platcrXgafv
  = lens _platcrXgafv (\ s a -> s{_platcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcrUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesRun (Maybe Text)
platcrUploadProtocol
  = lens _platcrUploadProtocol
      (\ s a -> s{_platcrUploadProtocol = a})

-- | OAuth access token.
platcrAccessToken :: Lens' ProjectsLocationsAgentsTestCasesRun (Maybe Text)
platcrAccessToken
  = lens _platcrAccessToken
      (\ s a -> s{_platcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcrUploadType :: Lens' ProjectsLocationsAgentsTestCasesRun (Maybe Text)
platcrUploadType
  = lens _platcrUploadType
      (\ s a -> s{_platcrUploadType = a})

-- | Multipart request metadata.
platcrPayload :: Lens' ProjectsLocationsAgentsTestCasesRun GoogleCloudDialogflowCxV3RunTestCaseRequest
platcrPayload
  = lens _platcrPayload
      (\ s a -> s{_platcrPayload = a})

-- | Required. Format of test case name to run: \`projects\/\/locations\/
-- \/agents\/\/testCases\/\`.
platcrName :: Lens' ProjectsLocationsAgentsTestCasesRun Text
platcrName
  = lens _platcrName (\ s a -> s{_platcrName = a})

-- | JSONP
platcrCallback :: Lens' ProjectsLocationsAgentsTestCasesRun (Maybe Text)
platcrCallback
  = lens _platcrCallback
      (\ s a -> s{_platcrCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesRun
         where
        type Rs ProjectsLocationsAgentsTestCasesRun =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsTestCasesRun =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesRun'{..}
          = go _platcrName _platcrXgafv _platcrUploadProtocol
              _platcrAccessToken
              _platcrUploadType
              _platcrCallback
              (Just AltJSON)
              _platcrPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesRunResource)
                      mempty
