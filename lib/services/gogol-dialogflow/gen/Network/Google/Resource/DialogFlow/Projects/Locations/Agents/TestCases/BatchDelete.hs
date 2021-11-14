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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.BatchDelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch deletes test cases.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.batchDelete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.BatchDelete
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesBatchDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesBatchDelete
    , ProjectsLocationsAgentsTestCasesBatchDelete

    -- * Request Lenses
    , platcbdParent
    , platcbdXgafv
    , platcbdUploadProtocol
    , platcbdAccessToken
    , platcbdUploadType
    , platcbdPayload
    , platcbdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.batchDelete@ method which the
-- 'ProjectsLocationsAgentsTestCasesBatchDelete' request conforms to.
type ProjectsLocationsAgentsTestCasesBatchDeleteResource
     =
     "v3" :>
       Capture "parent" Text :>
         "testCases:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
                         :> Post '[JSON] GoogleProtobufEmpty

-- | Batch deletes test cases.
--
-- /See:/ 'projectsLocationsAgentsTestCasesBatchDelete' smart constructor.
data ProjectsLocationsAgentsTestCasesBatchDelete =
  ProjectsLocationsAgentsTestCasesBatchDelete'
    { _platcbdParent :: !Text
    , _platcbdXgafv :: !(Maybe Xgafv)
    , _platcbdUploadProtocol :: !(Maybe Text)
    , _platcbdAccessToken :: !(Maybe Text)
    , _platcbdUploadType :: !(Maybe Text)
    , _platcbdPayload :: !GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
    , _platcbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcbdParent'
--
-- * 'platcbdXgafv'
--
-- * 'platcbdUploadProtocol'
--
-- * 'platcbdAccessToken'
--
-- * 'platcbdUploadType'
--
-- * 'platcbdPayload'
--
-- * 'platcbdCallback'
projectsLocationsAgentsTestCasesBatchDelete
    :: Text -- ^ 'platcbdParent'
    -> GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest -- ^ 'platcbdPayload'
    -> ProjectsLocationsAgentsTestCasesBatchDelete
projectsLocationsAgentsTestCasesBatchDelete pPlatcbdParent_ pPlatcbdPayload_ =
  ProjectsLocationsAgentsTestCasesBatchDelete'
    { _platcbdParent = pPlatcbdParent_
    , _platcbdXgafv = Nothing
    , _platcbdUploadProtocol = Nothing
    , _platcbdAccessToken = Nothing
    , _platcbdUploadType = Nothing
    , _platcbdPayload = pPlatcbdPayload_
    , _platcbdCallback = Nothing
    }


-- | Required. The agent to delete test cases from. Format:
-- \`projects\/\/locations\/\/agents\/\`.
platcbdParent :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete Text
platcbdParent
  = lens _platcbdParent
      (\ s a -> s{_platcbdParent = a})

-- | V1 error format.
platcbdXgafv :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete (Maybe Xgafv)
platcbdXgafv
  = lens _platcbdXgafv (\ s a -> s{_platcbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcbdUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete (Maybe Text)
platcbdUploadProtocol
  = lens _platcbdUploadProtocol
      (\ s a -> s{_platcbdUploadProtocol = a})

-- | OAuth access token.
platcbdAccessToken :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete (Maybe Text)
platcbdAccessToken
  = lens _platcbdAccessToken
      (\ s a -> s{_platcbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcbdUploadType :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete (Maybe Text)
platcbdUploadType
  = lens _platcbdUploadType
      (\ s a -> s{_platcbdUploadType = a})

-- | Multipart request metadata.
platcbdPayload :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
platcbdPayload
  = lens _platcbdPayload
      (\ s a -> s{_platcbdPayload = a})

-- | JSONP
platcbdCallback :: Lens' ProjectsLocationsAgentsTestCasesBatchDelete (Maybe Text)
platcbdCallback
  = lens _platcbdCallback
      (\ s a -> s{_platcbdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesBatchDelete
         where
        type Rs ProjectsLocationsAgentsTestCasesBatchDelete =
             GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsAgentsTestCasesBatchDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesBatchDelete'{..}
          = go _platcbdParent _platcbdXgafv
              _platcbdUploadProtocol
              _platcbdAccessToken
              _platcbdUploadType
              _platcbdCallback
              (Just AltJSON)
              _platcbdPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsTestCasesBatchDeleteResource)
                      mempty
