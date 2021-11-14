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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGetResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsEntityTypesGet
    , ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet

    -- * Request Lenses
    , plaesetgXgafv
    , plaesetgUploadProtocol
    , plaesetgAccessToken
    , plaesetgUploadType
    , plaesetgName
    , plaesetgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.get@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGetResource
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
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsEntityTypesGet' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet'
    { _plaesetgXgafv :: !(Maybe Xgafv)
    , _plaesetgUploadProtocol :: !(Maybe Text)
    , _plaesetgAccessToken :: !(Maybe Text)
    , _plaesetgUploadType :: !(Maybe Text)
    , _plaesetgName :: !Text
    , _plaesetgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesetgXgafv'
--
-- * 'plaesetgUploadProtocol'
--
-- * 'plaesetgAccessToken'
--
-- * 'plaesetgUploadType'
--
-- * 'plaesetgName'
--
-- * 'plaesetgCallback'
projectsLocationsAgentsEnvironmentsSessionsEntityTypesGet
    :: Text -- ^ 'plaesetgName'
    -> ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet
projectsLocationsAgentsEnvironmentsSessionsEntityTypesGet pPlaesetgName_ =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet'
    { _plaesetgXgafv = Nothing
    , _plaesetgUploadProtocol = Nothing
    , _plaesetgAccessToken = Nothing
    , _plaesetgUploadType = Nothing
    , _plaesetgName = pPlaesetgName_
    , _plaesetgCallback = Nothing
    }


-- | V1 error format.
plaesetgXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet (Maybe Xgafv)
plaesetgXgafv
  = lens _plaesetgXgafv
      (\ s a -> s{_plaesetgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesetgUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet (Maybe Text)
plaesetgUploadProtocol
  = lens _plaesetgUploadProtocol
      (\ s a -> s{_plaesetgUploadProtocol = a})

-- | OAuth access token.
plaesetgAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet (Maybe Text)
plaesetgAccessToken
  = lens _plaesetgAccessToken
      (\ s a -> s{_plaesetgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesetgUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet (Maybe Text)
plaesetgUploadType
  = lens _plaesetgUploadType
      (\ s a -> s{_plaesetgUploadType = a})

-- | Required. The name of the session entity type. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaesetgName :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet Text
plaesetgName
  = lens _plaesetgName (\ s a -> s{_plaesetgName = a})

-- | JSONP
plaesetgCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet (Maybe Text)
plaesetgCallback
  = lens _plaesetgCallback
      (\ s a -> s{_plaesetgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet
             = GoogleCloudDialogflowCxV3SessionEntityType
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGet'{..}
          = go _plaesetgName _plaesetgXgafv
              _plaesetgUploadProtocol
              _plaesetgAccessToken
              _plaesetgUploadType
              _plaesetgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesGetResource)
                      mempty
