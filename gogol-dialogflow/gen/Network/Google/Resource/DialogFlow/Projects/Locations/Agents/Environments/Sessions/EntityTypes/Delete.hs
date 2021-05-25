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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete
    , ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete

    -- * Request Lenses
    , plaesetdXgafv
    , plaesetdUploadProtocol
    , plaesetdAccessToken
    , plaesetdUploadType
    , plaesetdName
    , plaesetdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.delete@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified session entity type.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete'
    { _plaesetdXgafv :: !(Maybe Xgafv)
    , _plaesetdUploadProtocol :: !(Maybe Text)
    , _plaesetdAccessToken :: !(Maybe Text)
    , _plaesetdUploadType :: !(Maybe Text)
    , _plaesetdName :: !Text
    , _plaesetdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesetdXgafv'
--
-- * 'plaesetdUploadProtocol'
--
-- * 'plaesetdAccessToken'
--
-- * 'plaesetdUploadType'
--
-- * 'plaesetdName'
--
-- * 'plaesetdCallback'
projectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete
    :: Text -- ^ 'plaesetdName'
    -> ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete
projectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete pPlaesetdName_ =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete'
    { _plaesetdXgafv = Nothing
    , _plaesetdUploadProtocol = Nothing
    , _plaesetdAccessToken = Nothing
    , _plaesetdUploadType = Nothing
    , _plaesetdName = pPlaesetdName_
    , _plaesetdCallback = Nothing
    }


-- | V1 error format.
plaesetdXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete (Maybe Xgafv)
plaesetdXgafv
  = lens _plaesetdXgafv
      (\ s a -> s{_plaesetdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesetdUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete (Maybe Text)
plaesetdUploadProtocol
  = lens _plaesetdUploadProtocol
      (\ s a -> s{_plaesetdUploadProtocol = a})

-- | OAuth access token.
plaesetdAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete (Maybe Text)
plaesetdAccessToken
  = lens _plaesetdAccessToken
      (\ s a -> s{_plaesetdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesetdUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete (Maybe Text)
plaesetdUploadType
  = lens _plaesetdUploadType
      (\ s a -> s{_plaesetdUploadType = a})

-- | Required. The name of the session entity type to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaesetdName :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete Text
plaesetdName
  = lens _plaesetdName (\ s a -> s{_plaesetdName = a})

-- | JSONP
plaesetdCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete (Maybe Text)
plaesetdCallback
  = lens _plaesetdCallback
      (\ s a -> s{_plaesetdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete
             = GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDelete'{..}
          = go _plaesetdName _plaesetdXgafv
              _plaesetdUploadProtocol
              _plaesetdAccessToken
              _plaesetdUploadType
              _plaesetdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesDeleteResource)
                      mempty
