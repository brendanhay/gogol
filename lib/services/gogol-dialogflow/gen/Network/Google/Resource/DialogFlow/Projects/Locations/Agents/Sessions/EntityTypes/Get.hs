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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsEntityTypesGetResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsEntityTypesGet
    , ProjectsLocationsAgentsSessionsEntityTypesGet

    -- * Request Lenses
    , plaSetgXgafv
    , plaSetgUploadProtocol
    , plaSetgAccessToken
    , plaSetgUploadType
    , plaSetgName
    , plaSetgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.get@ method which the
-- 'ProjectsLocationsAgentsSessionsEntityTypesGet' request conforms to.
type ProjectsLocationsAgentsSessionsEntityTypesGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       GoogleCloudDialogflowCxV3SessionEntityType

-- | Retrieves the specified session entity type.
--
-- /See:/ 'projectsLocationsAgentsSessionsEntityTypesGet' smart constructor.
data ProjectsLocationsAgentsSessionsEntityTypesGet =
  ProjectsLocationsAgentsSessionsEntityTypesGet'
    { _plaSetgXgafv :: !(Maybe Xgafv)
    , _plaSetgUploadProtocol :: !(Maybe Text)
    , _plaSetgAccessToken :: !(Maybe Text)
    , _plaSetgUploadType :: !(Maybe Text)
    , _plaSetgName :: !Text
    , _plaSetgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsEntityTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaSetgXgafv'
--
-- * 'plaSetgUploadProtocol'
--
-- * 'plaSetgAccessToken'
--
-- * 'plaSetgUploadType'
--
-- * 'plaSetgName'
--
-- * 'plaSetgCallback'
projectsLocationsAgentsSessionsEntityTypesGet
    :: Text -- ^ 'plaSetgName'
    -> ProjectsLocationsAgentsSessionsEntityTypesGet
projectsLocationsAgentsSessionsEntityTypesGet pPlaSetgName_ =
  ProjectsLocationsAgentsSessionsEntityTypesGet'
    { _plaSetgXgafv = Nothing
    , _plaSetgUploadProtocol = Nothing
    , _plaSetgAccessToken = Nothing
    , _plaSetgUploadType = Nothing
    , _plaSetgName = pPlaSetgName_
    , _plaSetgCallback = Nothing
    }


-- | V1 error format.
plaSetgXgafv :: Lens' ProjectsLocationsAgentsSessionsEntityTypesGet (Maybe Xgafv)
plaSetgXgafv
  = lens _plaSetgXgafv (\ s a -> s{_plaSetgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaSetgUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsEntityTypesGet (Maybe Text)
plaSetgUploadProtocol
  = lens _plaSetgUploadProtocol
      (\ s a -> s{_plaSetgUploadProtocol = a})

-- | OAuth access token.
plaSetgAccessToken :: Lens' ProjectsLocationsAgentsSessionsEntityTypesGet (Maybe Text)
plaSetgAccessToken
  = lens _plaSetgAccessToken
      (\ s a -> s{_plaSetgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaSetgUploadType :: Lens' ProjectsLocationsAgentsSessionsEntityTypesGet (Maybe Text)
plaSetgUploadType
  = lens _plaSetgUploadType
      (\ s a -> s{_plaSetgUploadType = a})

-- | Required. The name of the session entity type. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaSetgName :: Lens' ProjectsLocationsAgentsSessionsEntityTypesGet Text
plaSetgName
  = lens _plaSetgName (\ s a -> s{_plaSetgName = a})

-- | JSONP
plaSetgCallback :: Lens' ProjectsLocationsAgentsSessionsEntityTypesGet (Maybe Text)
plaSetgCallback
  = lens _plaSetgCallback
      (\ s a -> s{_plaSetgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsEntityTypesGet
         where
        type Rs ProjectsLocationsAgentsSessionsEntityTypesGet
             = GoogleCloudDialogflowCxV3SessionEntityType
        type Scopes
               ProjectsLocationsAgentsSessionsEntityTypesGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsEntityTypesGet'{..}
          = go _plaSetgName _plaSetgXgafv
              _plaSetgUploadProtocol
              _plaSetgAccessToken
              _plaSetgUploadType
              _plaSetgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsEntityTypesGetResource)
                      mempty
