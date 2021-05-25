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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsEntityTypesCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsEntityTypesCreate
    , ProjectsLocationsAgentsSessionsEntityTypesCreate

    -- * Request Lenses
    , plaSetcParent
    , plaSetcXgafv
    , plaSetcUploadProtocol
    , plaSetcAccessToken
    , plaSetcUploadType
    , plaSetcPayload
    , plaSetcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.create@ method which the
-- 'ProjectsLocationsAgentsSessionsEntityTypesCreate' request conforms to.
type ProjectsLocationsAgentsSessionsEntityTypesCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3SessionEntityType
                         :>
                         Post '[JSON]
                           GoogleCloudDialogflowCxV3SessionEntityType

-- | Creates a session entity type.
--
-- /See:/ 'projectsLocationsAgentsSessionsEntityTypesCreate' smart constructor.
data ProjectsLocationsAgentsSessionsEntityTypesCreate =
  ProjectsLocationsAgentsSessionsEntityTypesCreate'
    { _plaSetcParent :: !Text
    , _plaSetcXgafv :: !(Maybe Xgafv)
    , _plaSetcUploadProtocol :: !(Maybe Text)
    , _plaSetcAccessToken :: !(Maybe Text)
    , _plaSetcUploadType :: !(Maybe Text)
    , _plaSetcPayload :: !GoogleCloudDialogflowCxV3SessionEntityType
    , _plaSetcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsEntityTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaSetcParent'
--
-- * 'plaSetcXgafv'
--
-- * 'plaSetcUploadProtocol'
--
-- * 'plaSetcAccessToken'
--
-- * 'plaSetcUploadType'
--
-- * 'plaSetcPayload'
--
-- * 'plaSetcCallback'
projectsLocationsAgentsSessionsEntityTypesCreate
    :: Text -- ^ 'plaSetcParent'
    -> GoogleCloudDialogflowCxV3SessionEntityType -- ^ 'plaSetcPayload'
    -> ProjectsLocationsAgentsSessionsEntityTypesCreate
projectsLocationsAgentsSessionsEntityTypesCreate pPlaSetcParent_ pPlaSetcPayload_ =
  ProjectsLocationsAgentsSessionsEntityTypesCreate'
    { _plaSetcParent = pPlaSetcParent_
    , _plaSetcXgafv = Nothing
    , _plaSetcUploadProtocol = Nothing
    , _plaSetcAccessToken = Nothing
    , _plaSetcUploadType = Nothing
    , _plaSetcPayload = pPlaSetcPayload_
    , _plaSetcCallback = Nothing
    }


-- | Required. The session to create a session entity type for. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaSetcParent :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate Text
plaSetcParent
  = lens _plaSetcParent
      (\ s a -> s{_plaSetcParent = a})

-- | V1 error format.
plaSetcXgafv :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate (Maybe Xgafv)
plaSetcXgafv
  = lens _plaSetcXgafv (\ s a -> s{_plaSetcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaSetcUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate (Maybe Text)
plaSetcUploadProtocol
  = lens _plaSetcUploadProtocol
      (\ s a -> s{_plaSetcUploadProtocol = a})

-- | OAuth access token.
plaSetcAccessToken :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate (Maybe Text)
plaSetcAccessToken
  = lens _plaSetcAccessToken
      (\ s a -> s{_plaSetcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaSetcUploadType :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate (Maybe Text)
plaSetcUploadType
  = lens _plaSetcUploadType
      (\ s a -> s{_plaSetcUploadType = a})

-- | Multipart request metadata.
plaSetcPayload :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate GoogleCloudDialogflowCxV3SessionEntityType
plaSetcPayload
  = lens _plaSetcPayload
      (\ s a -> s{_plaSetcPayload = a})

-- | JSONP
plaSetcCallback :: Lens' ProjectsLocationsAgentsSessionsEntityTypesCreate (Maybe Text)
plaSetcCallback
  = lens _plaSetcCallback
      (\ s a -> s{_plaSetcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsEntityTypesCreate
         where
        type Rs
               ProjectsLocationsAgentsSessionsEntityTypesCreate
             = GoogleCloudDialogflowCxV3SessionEntityType
        type Scopes
               ProjectsLocationsAgentsSessionsEntityTypesCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsEntityTypesCreate'{..}
          = go _plaSetcParent _plaSetcXgafv
              _plaSetcUploadProtocol
              _plaSetcAccessToken
              _plaSetcUploadType
              _plaSetcCallback
              (Just AltJSON)
              _plaSetcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsEntityTypesCreateResource)
                      mempty
