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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
    , ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch

    -- * Request Lenses
    , plaesetpXgafv
    , plaesetpUploadProtocol
    , plaesetpUpdateMask
    , plaesetpAccessToken
    , plaesetpUploadType
    , plaesetpPayload
    , plaesetpName
    , plaesetpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatchResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3SessionEntityType
                         :>
                         Patch '[JSON]
                           GoogleCloudDialogflowCxV3SessionEntityType

-- | Updates the specified session entity type.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch'
    { _plaesetpXgafv :: !(Maybe Xgafv)
    , _plaesetpUploadProtocol :: !(Maybe Text)
    , _plaesetpUpdateMask :: !(Maybe GFieldMask)
    , _plaesetpAccessToken :: !(Maybe Text)
    , _plaesetpUploadType :: !(Maybe Text)
    , _plaesetpPayload :: !GoogleCloudDialogflowCxV3SessionEntityType
    , _plaesetpName :: !Text
    , _plaesetpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesetpXgafv'
--
-- * 'plaesetpUploadProtocol'
--
-- * 'plaesetpUpdateMask'
--
-- * 'plaesetpAccessToken'
--
-- * 'plaesetpUploadType'
--
-- * 'plaesetpPayload'
--
-- * 'plaesetpName'
--
-- * 'plaesetpCallback'
projectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
    :: GoogleCloudDialogflowCxV3SessionEntityType -- ^ 'plaesetpPayload'
    -> Text -- ^ 'plaesetpName'
    -> ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
projectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch pPlaesetpPayload_ pPlaesetpName_ =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch'
    { _plaesetpXgafv = Nothing
    , _plaesetpUploadProtocol = Nothing
    , _plaesetpUpdateMask = Nothing
    , _plaesetpAccessToken = Nothing
    , _plaesetpUploadType = Nothing
    , _plaesetpPayload = pPlaesetpPayload_
    , _plaesetpName = pPlaesetpName_
    , _plaesetpCallback = Nothing
    }


-- | V1 error format.
plaesetpXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch (Maybe Xgafv)
plaesetpXgafv
  = lens _plaesetpXgafv
      (\ s a -> s{_plaesetpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesetpUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch (Maybe Text)
plaesetpUploadProtocol
  = lens _plaesetpUploadProtocol
      (\ s a -> s{_plaesetpUploadProtocol = a})

-- | The mask to control which fields get updated.
plaesetpUpdateMask :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch (Maybe GFieldMask)
plaesetpUpdateMask
  = lens _plaesetpUpdateMask
      (\ s a -> s{_plaesetpUpdateMask = a})

-- | OAuth access token.
plaesetpAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch (Maybe Text)
plaesetpAccessToken
  = lens _plaesetpAccessToken
      (\ s a -> s{_plaesetpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesetpUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch (Maybe Text)
plaesetpUploadType
  = lens _plaesetpUploadType
      (\ s a -> s{_plaesetpUploadType = a})

-- | Multipart request metadata.
plaesetpPayload :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch GoogleCloudDialogflowCxV3SessionEntityType
plaesetpPayload
  = lens _plaesetpPayload
      (\ s a -> s{_plaesetpPayload = a})

-- | Required. The unique identifier of the session entity type. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaesetpName :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch Text
plaesetpName
  = lens _plaesetpName (\ s a -> s{_plaesetpName = a})

-- | JSONP
plaesetpCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch (Maybe Text)
plaesetpCallback
  = lens _plaesetpCallback
      (\ s a -> s{_plaesetpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
             = GoogleCloudDialogflowCxV3SessionEntityType
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch'{..}
          = go _plaesetpName _plaesetpXgafv
              _plaesetpUploadProtocol
              _plaesetpUpdateMask
              _plaesetpAccessToken
              _plaesetpUploadType
              _plaesetpCallback
              (Just AltJSON)
              _plaesetpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatchResource)
                      mempty
