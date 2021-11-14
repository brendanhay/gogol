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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.CalculateCoverage
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Calculates the test coverage for an agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.calculateCoverage@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.CalculateCoverage
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesCalculateCoverageResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesCalculateCoverage
    , ProjectsLocationsAgentsTestCasesCalculateCoverage

    -- * Request Lenses
    , platcccXgafv
    , platcccUploadProtocol
    , platcccAccessToken
    , platcccUploadType
    , platcccAgent
    , platcccType
    , platcccCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.calculateCoverage@ method which the
-- 'ProjectsLocationsAgentsTestCasesCalculateCoverage' request conforms to.
type ProjectsLocationsAgentsTestCasesCalculateCoverageResource
     =
     "v3" :>
       Capture "agent" Text :>
         "testCases:calculateCoverage" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "type"
                     ProjectsLocationsAgentsTestCasesCalculateCoverageType
                     :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           GoogleCloudDialogflowCxV3CalculateCoverageResponse

-- | Calculates the test coverage for an agent.
--
-- /See:/ 'projectsLocationsAgentsTestCasesCalculateCoverage' smart constructor.
data ProjectsLocationsAgentsTestCasesCalculateCoverage =
  ProjectsLocationsAgentsTestCasesCalculateCoverage'
    { _platcccXgafv :: !(Maybe Xgafv)
    , _platcccUploadProtocol :: !(Maybe Text)
    , _platcccAccessToken :: !(Maybe Text)
    , _platcccUploadType :: !(Maybe Text)
    , _platcccAgent :: !Text
    , _platcccType :: !(Maybe ProjectsLocationsAgentsTestCasesCalculateCoverageType)
    , _platcccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesCalculateCoverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcccXgafv'
--
-- * 'platcccUploadProtocol'
--
-- * 'platcccAccessToken'
--
-- * 'platcccUploadType'
--
-- * 'platcccAgent'
--
-- * 'platcccType'
--
-- * 'platcccCallback'
projectsLocationsAgentsTestCasesCalculateCoverage
    :: Text -- ^ 'platcccAgent'
    -> ProjectsLocationsAgentsTestCasesCalculateCoverage
projectsLocationsAgentsTestCasesCalculateCoverage pPlatcccAgent_ =
  ProjectsLocationsAgentsTestCasesCalculateCoverage'
    { _platcccXgafv = Nothing
    , _platcccUploadProtocol = Nothing
    , _platcccAccessToken = Nothing
    , _platcccUploadType = Nothing
    , _platcccAgent = pPlatcccAgent_
    , _platcccType = Nothing
    , _platcccCallback = Nothing
    }


-- | V1 error format.
platcccXgafv :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage (Maybe Xgafv)
platcccXgafv
  = lens _platcccXgafv (\ s a -> s{_platcccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcccUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage (Maybe Text)
platcccUploadProtocol
  = lens _platcccUploadProtocol
      (\ s a -> s{_platcccUploadProtocol = a})

-- | OAuth access token.
platcccAccessToken :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage (Maybe Text)
platcccAccessToken
  = lens _platcccAccessToken
      (\ s a -> s{_platcccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcccUploadType :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage (Maybe Text)
platcccUploadType
  = lens _platcccUploadType
      (\ s a -> s{_platcccUploadType = a})

-- | Required. The agent to calculate coverage for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
platcccAgent :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage Text
platcccAgent
  = lens _platcccAgent (\ s a -> s{_platcccAgent = a})

-- | Required. The type of coverage requested.
platcccType :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage (Maybe ProjectsLocationsAgentsTestCasesCalculateCoverageType)
platcccType
  = lens _platcccType (\ s a -> s{_platcccType = a})

-- | JSONP
platcccCallback :: Lens' ProjectsLocationsAgentsTestCasesCalculateCoverage (Maybe Text)
platcccCallback
  = lens _platcccCallback
      (\ s a -> s{_platcccCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesCalculateCoverage
         where
        type Rs
               ProjectsLocationsAgentsTestCasesCalculateCoverage
             = GoogleCloudDialogflowCxV3CalculateCoverageResponse
        type Scopes
               ProjectsLocationsAgentsTestCasesCalculateCoverage
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesCalculateCoverage'{..}
          = go _platcccAgent _platcccXgafv
              _platcccUploadProtocol
              _platcccAccessToken
              _platcccUploadType
              _platcccType
              _platcccCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsTestCasesCalculateCoverageResource)
                      mempty
