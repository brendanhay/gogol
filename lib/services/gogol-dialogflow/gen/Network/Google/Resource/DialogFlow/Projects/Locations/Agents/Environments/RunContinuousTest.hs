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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.RunContinuousTest
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Kicks off a continuous test under the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.runContinuousTest@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.RunContinuousTest
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsRunContinuousTestResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsRunContinuousTest
    , ProjectsLocationsAgentsEnvironmentsRunContinuousTest

    -- * Request Lenses
    , plaerctXgafv
    , plaerctUploadProtocol
    , plaerctEnvironment
    , plaerctAccessToken
    , plaerctUploadType
    , plaerctPayload
    , plaerctCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.runContinuousTest@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsRunContinuousTest' request conforms to.
type ProjectsLocationsAgentsEnvironmentsRunContinuousTestResource
     =
     "v3" :>
       CaptureMode "environment" "runContinuousTest" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3RunContinuousTestRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Kicks off a continuous test under the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsRunContinuousTest' smart constructor.
data ProjectsLocationsAgentsEnvironmentsRunContinuousTest =
  ProjectsLocationsAgentsEnvironmentsRunContinuousTest'
    { _plaerctXgafv :: !(Maybe Xgafv)
    , _plaerctUploadProtocol :: !(Maybe Text)
    , _plaerctEnvironment :: !Text
    , _plaerctAccessToken :: !(Maybe Text)
    , _plaerctUploadType :: !(Maybe Text)
    , _plaerctPayload :: !GoogleCloudDialogflowCxV3RunContinuousTestRequest
    , _plaerctCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsRunContinuousTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaerctXgafv'
--
-- * 'plaerctUploadProtocol'
--
-- * 'plaerctEnvironment'
--
-- * 'plaerctAccessToken'
--
-- * 'plaerctUploadType'
--
-- * 'plaerctPayload'
--
-- * 'plaerctCallback'
projectsLocationsAgentsEnvironmentsRunContinuousTest
    :: Text -- ^ 'plaerctEnvironment'
    -> GoogleCloudDialogflowCxV3RunContinuousTestRequest -- ^ 'plaerctPayload'
    -> ProjectsLocationsAgentsEnvironmentsRunContinuousTest
projectsLocationsAgentsEnvironmentsRunContinuousTest pPlaerctEnvironment_ pPlaerctPayload_ =
  ProjectsLocationsAgentsEnvironmentsRunContinuousTest'
    { _plaerctXgafv = Nothing
    , _plaerctUploadProtocol = Nothing
    , _plaerctEnvironment = pPlaerctEnvironment_
    , _plaerctAccessToken = Nothing
    , _plaerctUploadType = Nothing
    , _plaerctPayload = pPlaerctPayload_
    , _plaerctCallback = Nothing
    }


-- | V1 error format.
plaerctXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest (Maybe Xgafv)
plaerctXgafv
  = lens _plaerctXgafv (\ s a -> s{_plaerctXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaerctUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest (Maybe Text)
plaerctUploadProtocol
  = lens _plaerctUploadProtocol
      (\ s a -> s{_plaerctUploadProtocol = a})

-- | Required. Format: \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaerctEnvironment :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest Text
plaerctEnvironment
  = lens _plaerctEnvironment
      (\ s a -> s{_plaerctEnvironment = a})

-- | OAuth access token.
plaerctAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest (Maybe Text)
plaerctAccessToken
  = lens _plaerctAccessToken
      (\ s a -> s{_plaerctAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaerctUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest (Maybe Text)
plaerctUploadType
  = lens _plaerctUploadType
      (\ s a -> s{_plaerctUploadType = a})

-- | Multipart request metadata.
plaerctPayload :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest GoogleCloudDialogflowCxV3RunContinuousTestRequest
plaerctPayload
  = lens _plaerctPayload
      (\ s a -> s{_plaerctPayload = a})

-- | JSONP
plaerctCallback :: Lens' ProjectsLocationsAgentsEnvironmentsRunContinuousTest (Maybe Text)
plaerctCallback
  = lens _plaerctCallback
      (\ s a -> s{_plaerctCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsRunContinuousTest
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsRunContinuousTest
             = GoogleLongrunningOperation
        type Scopes
               ProjectsLocationsAgentsEnvironmentsRunContinuousTest
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsRunContinuousTest'{..}
          = go _plaerctEnvironment _plaerctXgafv
              _plaerctUploadProtocol
              _plaerctAccessToken
              _plaerctUploadType
              _plaerctCallback
              (Just AltJSON)
              _plaerctPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsRunContinuousTestResource)
                      mempty
