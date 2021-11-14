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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsDelete
    , ProjectsLocationsAgentsEnvironmentsDelete

    -- * Request Lenses
    , plaedXgafv
    , plaedUploadProtocol
    , plaedAccessToken
    , plaedUploadType
    , plaedName
    , plaedCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.delete@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsDelete' request conforms to.
type ProjectsLocationsAgentsEnvironmentsDeleteResource
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

-- | Deletes the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsDelete' smart constructor.
data ProjectsLocationsAgentsEnvironmentsDelete =
  ProjectsLocationsAgentsEnvironmentsDelete'
    { _plaedXgafv :: !(Maybe Xgafv)
    , _plaedUploadProtocol :: !(Maybe Text)
    , _plaedAccessToken :: !(Maybe Text)
    , _plaedUploadType :: !(Maybe Text)
    , _plaedName :: !Text
    , _plaedCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaedXgafv'
--
-- * 'plaedUploadProtocol'
--
-- * 'plaedAccessToken'
--
-- * 'plaedUploadType'
--
-- * 'plaedName'
--
-- * 'plaedCallback'
projectsLocationsAgentsEnvironmentsDelete
    :: Text -- ^ 'plaedName'
    -> ProjectsLocationsAgentsEnvironmentsDelete
projectsLocationsAgentsEnvironmentsDelete pPlaedName_ =
  ProjectsLocationsAgentsEnvironmentsDelete'
    { _plaedXgafv = Nothing
    , _plaedUploadProtocol = Nothing
    , _plaedAccessToken = Nothing
    , _plaedUploadType = Nothing
    , _plaedName = pPlaedName_
    , _plaedCallback = Nothing
    }


-- | V1 error format.
plaedXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsDelete (Maybe Xgafv)
plaedXgafv
  = lens _plaedXgafv (\ s a -> s{_plaedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaedUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsDelete (Maybe Text)
plaedUploadProtocol
  = lens _plaedUploadProtocol
      (\ s a -> s{_plaedUploadProtocol = a})

-- | OAuth access token.
plaedAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsDelete (Maybe Text)
plaedAccessToken
  = lens _plaedAccessToken
      (\ s a -> s{_plaedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaedUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsDelete (Maybe Text)
plaedUploadType
  = lens _plaedUploadType
      (\ s a -> s{_plaedUploadType = a})

-- | Required. The name of the Environment to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaedName :: Lens' ProjectsLocationsAgentsEnvironmentsDelete Text
plaedName
  = lens _plaedName (\ s a -> s{_plaedName = a})

-- | JSONP
plaedCallback :: Lens' ProjectsLocationsAgentsEnvironmentsDelete (Maybe Text)
plaedCallback
  = lens _plaedCallback
      (\ s a -> s{_plaedCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsDelete
         where
        type Rs ProjectsLocationsAgentsEnvironmentsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsEnvironmentsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsDelete'{..}
          = go _plaedName _plaedXgafv _plaedUploadProtocol
              _plaedAccessToken
              _plaedUploadType
              _plaedCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsDeleteResource)
                      mempty
