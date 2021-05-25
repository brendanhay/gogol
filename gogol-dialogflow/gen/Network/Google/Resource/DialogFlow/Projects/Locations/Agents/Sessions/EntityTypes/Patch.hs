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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsEntityTypesPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsEntityTypesPatch
    , ProjectsLocationsAgentsSessionsEntityTypesPatch

    -- * Request Lenses
    , plaSetpXgafv
    , plaSetpUploadProtocol
    , plaSetpUpdateMask
    , plaSetpAccessToken
    , plaSetpUploadType
    , plaSetpPayload
    , plaSetpName
    , plaSetpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.patch@ method which the
-- 'ProjectsLocationsAgentsSessionsEntityTypesPatch' request conforms to.
type ProjectsLocationsAgentsSessionsEntityTypesPatchResource
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
-- /See:/ 'projectsLocationsAgentsSessionsEntityTypesPatch' smart constructor.
data ProjectsLocationsAgentsSessionsEntityTypesPatch =
  ProjectsLocationsAgentsSessionsEntityTypesPatch'
    { _plaSetpXgafv :: !(Maybe Xgafv)
    , _plaSetpUploadProtocol :: !(Maybe Text)
    , _plaSetpUpdateMask :: !(Maybe GFieldMask)
    , _plaSetpAccessToken :: !(Maybe Text)
    , _plaSetpUploadType :: !(Maybe Text)
    , _plaSetpPayload :: !GoogleCloudDialogflowCxV3SessionEntityType
    , _plaSetpName :: !Text
    , _plaSetpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsEntityTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaSetpXgafv'
--
-- * 'plaSetpUploadProtocol'
--
-- * 'plaSetpUpdateMask'
--
-- * 'plaSetpAccessToken'
--
-- * 'plaSetpUploadType'
--
-- * 'plaSetpPayload'
--
-- * 'plaSetpName'
--
-- * 'plaSetpCallback'
projectsLocationsAgentsSessionsEntityTypesPatch
    :: GoogleCloudDialogflowCxV3SessionEntityType -- ^ 'plaSetpPayload'
    -> Text -- ^ 'plaSetpName'
    -> ProjectsLocationsAgentsSessionsEntityTypesPatch
projectsLocationsAgentsSessionsEntityTypesPatch pPlaSetpPayload_ pPlaSetpName_ =
  ProjectsLocationsAgentsSessionsEntityTypesPatch'
    { _plaSetpXgafv = Nothing
    , _plaSetpUploadProtocol = Nothing
    , _plaSetpUpdateMask = Nothing
    , _plaSetpAccessToken = Nothing
    , _plaSetpUploadType = Nothing
    , _plaSetpPayload = pPlaSetpPayload_
    , _plaSetpName = pPlaSetpName_
    , _plaSetpCallback = Nothing
    }


-- | V1 error format.
plaSetpXgafv :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch (Maybe Xgafv)
plaSetpXgafv
  = lens _plaSetpXgafv (\ s a -> s{_plaSetpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaSetpUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch (Maybe Text)
plaSetpUploadProtocol
  = lens _plaSetpUploadProtocol
      (\ s a -> s{_plaSetpUploadProtocol = a})

-- | The mask to control which fields get updated.
plaSetpUpdateMask :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch (Maybe GFieldMask)
plaSetpUpdateMask
  = lens _plaSetpUpdateMask
      (\ s a -> s{_plaSetpUpdateMask = a})

-- | OAuth access token.
plaSetpAccessToken :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch (Maybe Text)
plaSetpAccessToken
  = lens _plaSetpAccessToken
      (\ s a -> s{_plaSetpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaSetpUploadType :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch (Maybe Text)
plaSetpUploadType
  = lens _plaSetpUploadType
      (\ s a -> s{_plaSetpUploadType = a})

-- | Multipart request metadata.
plaSetpPayload :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch GoogleCloudDialogflowCxV3SessionEntityType
plaSetpPayload
  = lens _plaSetpPayload
      (\ s a -> s{_plaSetpPayload = a})

-- | Required. The unique identifier of the session entity type. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaSetpName :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch Text
plaSetpName
  = lens _plaSetpName (\ s a -> s{_plaSetpName = a})

-- | JSONP
plaSetpCallback :: Lens' ProjectsLocationsAgentsSessionsEntityTypesPatch (Maybe Text)
plaSetpCallback
  = lens _plaSetpCallback
      (\ s a -> s{_plaSetpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsEntityTypesPatch
         where
        type Rs
               ProjectsLocationsAgentsSessionsEntityTypesPatch
             = GoogleCloudDialogflowCxV3SessionEntityType
        type Scopes
               ProjectsLocationsAgentsSessionsEntityTypesPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsEntityTypesPatch'{..}
          = go _plaSetpName _plaSetpXgafv
              _plaSetpUploadProtocol
              _plaSetpUpdateMask
              _plaSetpAccessToken
              _plaSetpUploadType
              _plaSetpCallback
              (Just AltJSON)
              _plaSetpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsEntityTypesPatchResource)
                      mempty
