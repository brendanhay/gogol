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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Results.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a test case result.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.results.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Results.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesResultsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesResultsGet
    , ProjectsLocationsAgentsTestCasesResultsGet

    -- * Request Lenses
    , platcrgXgafv
    , platcrgUploadProtocol
    , platcrgAccessToken
    , platcrgUploadType
    , platcrgName
    , platcrgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.results.get@ method which the
-- 'ProjectsLocationsAgentsTestCasesResultsGet' request conforms to.
type ProjectsLocationsAgentsTestCasesResultsGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3TestCaseResult

-- | Gets a test case result.
--
-- /See:/ 'projectsLocationsAgentsTestCasesResultsGet' smart constructor.
data ProjectsLocationsAgentsTestCasesResultsGet =
  ProjectsLocationsAgentsTestCasesResultsGet'
    { _platcrgXgafv :: !(Maybe Xgafv)
    , _platcrgUploadProtocol :: !(Maybe Text)
    , _platcrgAccessToken :: !(Maybe Text)
    , _platcrgUploadType :: !(Maybe Text)
    , _platcrgName :: !Text
    , _platcrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesResultsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcrgXgafv'
--
-- * 'platcrgUploadProtocol'
--
-- * 'platcrgAccessToken'
--
-- * 'platcrgUploadType'
--
-- * 'platcrgName'
--
-- * 'platcrgCallback'
projectsLocationsAgentsTestCasesResultsGet
    :: Text -- ^ 'platcrgName'
    -> ProjectsLocationsAgentsTestCasesResultsGet
projectsLocationsAgentsTestCasesResultsGet pPlatcrgName_ =
  ProjectsLocationsAgentsTestCasesResultsGet'
    { _platcrgXgafv = Nothing
    , _platcrgUploadProtocol = Nothing
    , _platcrgAccessToken = Nothing
    , _platcrgUploadType = Nothing
    , _platcrgName = pPlatcrgName_
    , _platcrgCallback = Nothing
    }


-- | V1 error format.
platcrgXgafv :: Lens' ProjectsLocationsAgentsTestCasesResultsGet (Maybe Xgafv)
platcrgXgafv
  = lens _platcrgXgafv (\ s a -> s{_platcrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcrgUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesResultsGet (Maybe Text)
platcrgUploadProtocol
  = lens _platcrgUploadProtocol
      (\ s a -> s{_platcrgUploadProtocol = a})

-- | OAuth access token.
platcrgAccessToken :: Lens' ProjectsLocationsAgentsTestCasesResultsGet (Maybe Text)
platcrgAccessToken
  = lens _platcrgAccessToken
      (\ s a -> s{_platcrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcrgUploadType :: Lens' ProjectsLocationsAgentsTestCasesResultsGet (Maybe Text)
platcrgUploadType
  = lens _platcrgUploadType
      (\ s a -> s{_platcrgUploadType = a})

-- | Required. The name of the testcase. Format:
-- \`projects\/\/locations\/\/agents\/\/testCases\/\/results\/\`.
platcrgName :: Lens' ProjectsLocationsAgentsTestCasesResultsGet Text
platcrgName
  = lens _platcrgName (\ s a -> s{_platcrgName = a})

-- | JSONP
platcrgCallback :: Lens' ProjectsLocationsAgentsTestCasesResultsGet (Maybe Text)
platcrgCallback
  = lens _platcrgCallback
      (\ s a -> s{_platcrgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesResultsGet
         where
        type Rs ProjectsLocationsAgentsTestCasesResultsGet =
             GoogleCloudDialogflowCxV3TestCaseResult
        type Scopes
               ProjectsLocationsAgentsTestCasesResultsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesResultsGet'{..}
          = go _platcrgName _platcrgXgafv
              _platcrgUploadProtocol
              _platcrgAccessToken
              _platcrgUploadType
              _platcrgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsTestCasesResultsGetResource)
                      mempty
