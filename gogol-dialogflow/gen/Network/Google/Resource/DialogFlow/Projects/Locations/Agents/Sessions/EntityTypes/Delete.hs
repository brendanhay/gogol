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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsEntityTypesDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsEntityTypesDelete
    , ProjectsLocationsAgentsSessionsEntityTypesDelete

    -- * Request Lenses
    , plaSetdXgafv
    , plaSetdUploadProtocol
    , plaSetdAccessToken
    , plaSetdUploadType
    , plaSetdName
    , plaSetdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.delete@ method which the
-- 'ProjectsLocationsAgentsSessionsEntityTypesDelete' request conforms to.
type ProjectsLocationsAgentsSessionsEntityTypesDeleteResource
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
-- /See:/ 'projectsLocationsAgentsSessionsEntityTypesDelete' smart constructor.
data ProjectsLocationsAgentsSessionsEntityTypesDelete =
  ProjectsLocationsAgentsSessionsEntityTypesDelete'
    { _plaSetdXgafv :: !(Maybe Xgafv)
    , _plaSetdUploadProtocol :: !(Maybe Text)
    , _plaSetdAccessToken :: !(Maybe Text)
    , _plaSetdUploadType :: !(Maybe Text)
    , _plaSetdName :: !Text
    , _plaSetdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsEntityTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaSetdXgafv'
--
-- * 'plaSetdUploadProtocol'
--
-- * 'plaSetdAccessToken'
--
-- * 'plaSetdUploadType'
--
-- * 'plaSetdName'
--
-- * 'plaSetdCallback'
projectsLocationsAgentsSessionsEntityTypesDelete
    :: Text -- ^ 'plaSetdName'
    -> ProjectsLocationsAgentsSessionsEntityTypesDelete
projectsLocationsAgentsSessionsEntityTypesDelete pPlaSetdName_ =
  ProjectsLocationsAgentsSessionsEntityTypesDelete'
    { _plaSetdXgafv = Nothing
    , _plaSetdUploadProtocol = Nothing
    , _plaSetdAccessToken = Nothing
    , _plaSetdUploadType = Nothing
    , _plaSetdName = pPlaSetdName_
    , _plaSetdCallback = Nothing
    }


-- | V1 error format.
plaSetdXgafv :: Lens' ProjectsLocationsAgentsSessionsEntityTypesDelete (Maybe Xgafv)
plaSetdXgafv
  = lens _plaSetdXgafv (\ s a -> s{_plaSetdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaSetdUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsEntityTypesDelete (Maybe Text)
plaSetdUploadProtocol
  = lens _plaSetdUploadProtocol
      (\ s a -> s{_plaSetdUploadProtocol = a})

-- | OAuth access token.
plaSetdAccessToken :: Lens' ProjectsLocationsAgentsSessionsEntityTypesDelete (Maybe Text)
plaSetdAccessToken
  = lens _plaSetdAccessToken
      (\ s a -> s{_plaSetdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaSetdUploadType :: Lens' ProjectsLocationsAgentsSessionsEntityTypesDelete (Maybe Text)
plaSetdUploadType
  = lens _plaSetdUploadType
      (\ s a -> s{_plaSetdUploadType = a})

-- | Required. The name of the session entity type to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaSetdName :: Lens' ProjectsLocationsAgentsSessionsEntityTypesDelete Text
plaSetdName
  = lens _plaSetdName (\ s a -> s{_plaSetdName = a})

-- | JSONP
plaSetdCallback :: Lens' ProjectsLocationsAgentsSessionsEntityTypesDelete (Maybe Text)
plaSetdCallback
  = lens _plaSetdCallback
      (\ s a -> s{_plaSetdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsEntityTypesDelete
         where
        type Rs
               ProjectsLocationsAgentsSessionsEntityTypesDelete
             = GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsAgentsSessionsEntityTypesDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsEntityTypesDelete'{..}
          = go _plaSetdName _plaSetdXgafv
              _plaSetdUploadProtocol
              _plaSetdAccessToken
              _plaSetdUploadType
              _plaSetdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsEntityTypesDeleteResource)
                      mempty
