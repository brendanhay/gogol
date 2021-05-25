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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Version.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsVersionsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsVersionsDelete
    , ProjectsLocationsAgentsFlowsVersionsDelete

    -- * Request Lenses
    , plafvdXgafv
    , plafvdUploadProtocol
    , plafvdAccessToken
    , plafvdUploadType
    , plafvdName
    , plafvdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.delete@ method which the
-- 'ProjectsLocationsAgentsFlowsVersionsDelete' request conforms to.
type ProjectsLocationsAgentsFlowsVersionsDeleteResource
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

-- | Deletes the specified Version.
--
-- /See:/ 'projectsLocationsAgentsFlowsVersionsDelete' smart constructor.
data ProjectsLocationsAgentsFlowsVersionsDelete =
  ProjectsLocationsAgentsFlowsVersionsDelete'
    { _plafvdXgafv :: !(Maybe Xgafv)
    , _plafvdUploadProtocol :: !(Maybe Text)
    , _plafvdAccessToken :: !(Maybe Text)
    , _plafvdUploadType :: !(Maybe Text)
    , _plafvdName :: !Text
    , _plafvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafvdXgafv'
--
-- * 'plafvdUploadProtocol'
--
-- * 'plafvdAccessToken'
--
-- * 'plafvdUploadType'
--
-- * 'plafvdName'
--
-- * 'plafvdCallback'
projectsLocationsAgentsFlowsVersionsDelete
    :: Text -- ^ 'plafvdName'
    -> ProjectsLocationsAgentsFlowsVersionsDelete
projectsLocationsAgentsFlowsVersionsDelete pPlafvdName_ =
  ProjectsLocationsAgentsFlowsVersionsDelete'
    { _plafvdXgafv = Nothing
    , _plafvdUploadProtocol = Nothing
    , _plafvdAccessToken = Nothing
    , _plafvdUploadType = Nothing
    , _plafvdName = pPlafvdName_
    , _plafvdCallback = Nothing
    }


-- | V1 error format.
plafvdXgafv :: Lens' ProjectsLocationsAgentsFlowsVersionsDelete (Maybe Xgafv)
plafvdXgafv
  = lens _plafvdXgafv (\ s a -> s{_plafvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafvdUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsVersionsDelete (Maybe Text)
plafvdUploadProtocol
  = lens _plafvdUploadProtocol
      (\ s a -> s{_plafvdUploadProtocol = a})

-- | OAuth access token.
plafvdAccessToken :: Lens' ProjectsLocationsAgentsFlowsVersionsDelete (Maybe Text)
plafvdAccessToken
  = lens _plafvdAccessToken
      (\ s a -> s{_plafvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafvdUploadType :: Lens' ProjectsLocationsAgentsFlowsVersionsDelete (Maybe Text)
plafvdUploadType
  = lens _plafvdUploadType
      (\ s a -> s{_plafvdUploadType = a})

-- | Required. The name of the Version to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/versions\/\`.
plafvdName :: Lens' ProjectsLocationsAgentsFlowsVersionsDelete Text
plafvdName
  = lens _plafvdName (\ s a -> s{_plafvdName = a})

-- | JSONP
plafvdCallback :: Lens' ProjectsLocationsAgentsFlowsVersionsDelete (Maybe Text)
plafvdCallback
  = lens _plafvdCallback
      (\ s a -> s{_plafvdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsVersionsDelete
         where
        type Rs ProjectsLocationsAgentsFlowsVersionsDelete =
             GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsAgentsFlowsVersionsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsVersionsDelete'{..}
          = go _plafvdName _plafvdXgafv _plafvdUploadProtocol
              _plafvdAccessToken
              _plafvdUploadType
              _plafvdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsVersionsDeleteResource)
                      mempty
