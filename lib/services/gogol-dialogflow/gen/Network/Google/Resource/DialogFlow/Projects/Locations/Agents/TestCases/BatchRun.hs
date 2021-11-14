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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.BatchRun
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Kicks off a batch run of test cases.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.batchRun@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.BatchRun
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesBatchRunResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesBatchRun
    , ProjectsLocationsAgentsTestCasesBatchRun

    -- * Request Lenses
    , platcbrParent
    , platcbrXgafv
    , platcbrUploadProtocol
    , platcbrAccessToken
    , platcbrUploadType
    , platcbrPayload
    , platcbrCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.batchRun@ method which the
-- 'ProjectsLocationsAgentsTestCasesBatchRun' request conforms to.
type ProjectsLocationsAgentsTestCasesBatchRunResource
     =
     "v3" :>
       Capture "parent" Text :>
         "testCases:batchRun" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Kicks off a batch run of test cases.
--
-- /See:/ 'projectsLocationsAgentsTestCasesBatchRun' smart constructor.
data ProjectsLocationsAgentsTestCasesBatchRun =
  ProjectsLocationsAgentsTestCasesBatchRun'
    { _platcbrParent :: !Text
    , _platcbrXgafv :: !(Maybe Xgafv)
    , _platcbrUploadProtocol :: !(Maybe Text)
    , _platcbrAccessToken :: !(Maybe Text)
    , _platcbrUploadType :: !(Maybe Text)
    , _platcbrPayload :: !GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
    , _platcbrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesBatchRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcbrParent'
--
-- * 'platcbrXgafv'
--
-- * 'platcbrUploadProtocol'
--
-- * 'platcbrAccessToken'
--
-- * 'platcbrUploadType'
--
-- * 'platcbrPayload'
--
-- * 'platcbrCallback'
projectsLocationsAgentsTestCasesBatchRun
    :: Text -- ^ 'platcbrParent'
    -> GoogleCloudDialogflowCxV3BatchRunTestCasesRequest -- ^ 'platcbrPayload'
    -> ProjectsLocationsAgentsTestCasesBatchRun
projectsLocationsAgentsTestCasesBatchRun pPlatcbrParent_ pPlatcbrPayload_ =
  ProjectsLocationsAgentsTestCasesBatchRun'
    { _platcbrParent = pPlatcbrParent_
    , _platcbrXgafv = Nothing
    , _platcbrUploadProtocol = Nothing
    , _platcbrAccessToken = Nothing
    , _platcbrUploadType = Nothing
    , _platcbrPayload = pPlatcbrPayload_
    , _platcbrCallback = Nothing
    }


-- | Required. Agent name. Format: \`projects\/\/locations\/\/agents\/ \`.
platcbrParent :: Lens' ProjectsLocationsAgentsTestCasesBatchRun Text
platcbrParent
  = lens _platcbrParent
      (\ s a -> s{_platcbrParent = a})

-- | V1 error format.
platcbrXgafv :: Lens' ProjectsLocationsAgentsTestCasesBatchRun (Maybe Xgafv)
platcbrXgafv
  = lens _platcbrXgafv (\ s a -> s{_platcbrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcbrUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesBatchRun (Maybe Text)
platcbrUploadProtocol
  = lens _platcbrUploadProtocol
      (\ s a -> s{_platcbrUploadProtocol = a})

-- | OAuth access token.
platcbrAccessToken :: Lens' ProjectsLocationsAgentsTestCasesBatchRun (Maybe Text)
platcbrAccessToken
  = lens _platcbrAccessToken
      (\ s a -> s{_platcbrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcbrUploadType :: Lens' ProjectsLocationsAgentsTestCasesBatchRun (Maybe Text)
platcbrUploadType
  = lens _platcbrUploadType
      (\ s a -> s{_platcbrUploadType = a})

-- | Multipart request metadata.
platcbrPayload :: Lens' ProjectsLocationsAgentsTestCasesBatchRun GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
platcbrPayload
  = lens _platcbrPayload
      (\ s a -> s{_platcbrPayload = a})

-- | JSONP
platcbrCallback :: Lens' ProjectsLocationsAgentsTestCasesBatchRun (Maybe Text)
platcbrCallback
  = lens _platcbrCallback
      (\ s a -> s{_platcbrCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesBatchRun
         where
        type Rs ProjectsLocationsAgentsTestCasesBatchRun =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsTestCasesBatchRun
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesBatchRun'{..}
          = go _platcbrParent _platcbrXgafv
              _platcbrUploadProtocol
              _platcbrAccessToken
              _platcbrUploadType
              _platcbrCallback
              (Just AltJSON)
              _platcbrPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsTestCasesBatchRunResource)
                      mempty
