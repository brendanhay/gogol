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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Environment in the specified Agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsCreate
    , ProjectsLocationsAgentsEnvironmentsCreate

    -- * Request Lenses
    , plaecParent
    , plaecXgafv
    , plaecUploadProtocol
    , plaecAccessToken
    , plaecUploadType
    , plaecPayload
    , plaecCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.create@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsCreate' request conforms to.
type ProjectsLocationsAgentsEnvironmentsCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "environments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Environment
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Creates an Environment in the specified Agent.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsCreate' smart constructor.
data ProjectsLocationsAgentsEnvironmentsCreate =
  ProjectsLocationsAgentsEnvironmentsCreate'
    { _plaecParent :: !Text
    , _plaecXgafv :: !(Maybe Xgafv)
    , _plaecUploadProtocol :: !(Maybe Text)
    , _plaecAccessToken :: !(Maybe Text)
    , _plaecUploadType :: !(Maybe Text)
    , _plaecPayload :: !GoogleCloudDialogflowCxV3Environment
    , _plaecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaecParent'
--
-- * 'plaecXgafv'
--
-- * 'plaecUploadProtocol'
--
-- * 'plaecAccessToken'
--
-- * 'plaecUploadType'
--
-- * 'plaecPayload'
--
-- * 'plaecCallback'
projectsLocationsAgentsEnvironmentsCreate
    :: Text -- ^ 'plaecParent'
    -> GoogleCloudDialogflowCxV3Environment -- ^ 'plaecPayload'
    -> ProjectsLocationsAgentsEnvironmentsCreate
projectsLocationsAgentsEnvironmentsCreate pPlaecParent_ pPlaecPayload_ =
  ProjectsLocationsAgentsEnvironmentsCreate'
    { _plaecParent = pPlaecParent_
    , _plaecXgafv = Nothing
    , _plaecUploadProtocol = Nothing
    , _plaecAccessToken = Nothing
    , _plaecUploadType = Nothing
    , _plaecPayload = pPlaecPayload_
    , _plaecCallback = Nothing
    }


-- | Required. The Agent to create an Environment for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaecParent :: Lens' ProjectsLocationsAgentsEnvironmentsCreate Text
plaecParent
  = lens _plaecParent (\ s a -> s{_plaecParent = a})

-- | V1 error format.
plaecXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsCreate (Maybe Xgafv)
plaecXgafv
  = lens _plaecXgafv (\ s a -> s{_plaecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaecUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsCreate (Maybe Text)
plaecUploadProtocol
  = lens _plaecUploadProtocol
      (\ s a -> s{_plaecUploadProtocol = a})

-- | OAuth access token.
plaecAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsCreate (Maybe Text)
plaecAccessToken
  = lens _plaecAccessToken
      (\ s a -> s{_plaecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaecUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsCreate (Maybe Text)
plaecUploadType
  = lens _plaecUploadType
      (\ s a -> s{_plaecUploadType = a})

-- | Multipart request metadata.
plaecPayload :: Lens' ProjectsLocationsAgentsEnvironmentsCreate GoogleCloudDialogflowCxV3Environment
plaecPayload
  = lens _plaecPayload (\ s a -> s{_plaecPayload = a})

-- | JSONP
plaecCallback :: Lens' ProjectsLocationsAgentsEnvironmentsCreate (Maybe Text)
plaecCallback
  = lens _plaecCallback
      (\ s a -> s{_plaecCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsCreate
         where
        type Rs ProjectsLocationsAgentsEnvironmentsCreate =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsEnvironmentsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsCreate'{..}
          = go _plaecParent _plaecXgafv _plaecUploadProtocol
              _plaecAccessToken
              _plaecUploadType
              _plaecCallback
              (Just AltJSON)
              _plaecPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsCreateResource)
                      mempty
