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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a test case for the given agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesCreate
    , ProjectsLocationsAgentsTestCasesCreate

    -- * Request Lenses
    , platccParent
    , platccXgafv
    , platccUploadProtocol
    , platccAccessToken
    , platccUploadType
    , platccPayload
    , platccCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.create@ method which the
-- 'ProjectsLocationsAgentsTestCasesCreate' request conforms to.
type ProjectsLocationsAgentsTestCasesCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "testCases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3TestCase :>
                         Post '[JSON] GoogleCloudDialogflowCxV3TestCase

-- | Creates a test case for the given agent.
--
-- /See:/ 'projectsLocationsAgentsTestCasesCreate' smart constructor.
data ProjectsLocationsAgentsTestCasesCreate =
  ProjectsLocationsAgentsTestCasesCreate'
    { _platccParent :: !Text
    , _platccXgafv :: !(Maybe Xgafv)
    , _platccUploadProtocol :: !(Maybe Text)
    , _platccAccessToken :: !(Maybe Text)
    , _platccUploadType :: !(Maybe Text)
    , _platccPayload :: !GoogleCloudDialogflowCxV3TestCase
    , _platccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platccParent'
--
-- * 'platccXgafv'
--
-- * 'platccUploadProtocol'
--
-- * 'platccAccessToken'
--
-- * 'platccUploadType'
--
-- * 'platccPayload'
--
-- * 'platccCallback'
projectsLocationsAgentsTestCasesCreate
    :: Text -- ^ 'platccParent'
    -> GoogleCloudDialogflowCxV3TestCase -- ^ 'platccPayload'
    -> ProjectsLocationsAgentsTestCasesCreate
projectsLocationsAgentsTestCasesCreate pPlatccParent_ pPlatccPayload_ =
  ProjectsLocationsAgentsTestCasesCreate'
    { _platccParent = pPlatccParent_
    , _platccXgafv = Nothing
    , _platccUploadProtocol = Nothing
    , _platccAccessToken = Nothing
    , _platccUploadType = Nothing
    , _platccPayload = pPlatccPayload_
    , _platccCallback = Nothing
    }


-- | Required. The agent to create the test case for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
platccParent :: Lens' ProjectsLocationsAgentsTestCasesCreate Text
platccParent
  = lens _platccParent (\ s a -> s{_platccParent = a})

-- | V1 error format.
platccXgafv :: Lens' ProjectsLocationsAgentsTestCasesCreate (Maybe Xgafv)
platccXgafv
  = lens _platccXgafv (\ s a -> s{_platccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platccUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesCreate (Maybe Text)
platccUploadProtocol
  = lens _platccUploadProtocol
      (\ s a -> s{_platccUploadProtocol = a})

-- | OAuth access token.
platccAccessToken :: Lens' ProjectsLocationsAgentsTestCasesCreate (Maybe Text)
platccAccessToken
  = lens _platccAccessToken
      (\ s a -> s{_platccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platccUploadType :: Lens' ProjectsLocationsAgentsTestCasesCreate (Maybe Text)
platccUploadType
  = lens _platccUploadType
      (\ s a -> s{_platccUploadType = a})

-- | Multipart request metadata.
platccPayload :: Lens' ProjectsLocationsAgentsTestCasesCreate GoogleCloudDialogflowCxV3TestCase
platccPayload
  = lens _platccPayload
      (\ s a -> s{_platccPayload = a})

-- | JSONP
platccCallback :: Lens' ProjectsLocationsAgentsTestCasesCreate (Maybe Text)
platccCallback
  = lens _platccCallback
      (\ s a -> s{_platccCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesCreate
         where
        type Rs ProjectsLocationsAgentsTestCasesCreate =
             GoogleCloudDialogflowCxV3TestCase
        type Scopes ProjectsLocationsAgentsTestCasesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesCreate'{..}
          = go _platccParent _platccXgafv _platccUploadProtocol
              _platccAccessToken
              _platccUploadType
              _platccCallback
              (Just AltJSON)
              _platccPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesCreateResource)
                      mempty
