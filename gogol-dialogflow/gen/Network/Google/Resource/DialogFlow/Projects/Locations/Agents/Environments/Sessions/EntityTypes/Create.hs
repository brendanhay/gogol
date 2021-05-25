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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate
    , ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate

    -- * Request Lenses
    , plaesetcParent
    , plaesetcXgafv
    , plaesetcUploadProtocol
    , plaesetcAccessToken
    , plaesetcUploadType
    , plaesetcPayload
    , plaesetcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.create@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreateResource
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
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate'
    { _plaesetcParent :: !Text
    , _plaesetcXgafv :: !(Maybe Xgafv)
    , _plaesetcUploadProtocol :: !(Maybe Text)
    , _plaesetcAccessToken :: !(Maybe Text)
    , _plaesetcUploadType :: !(Maybe Text)
    , _plaesetcPayload :: !GoogleCloudDialogflowCxV3SessionEntityType
    , _plaesetcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesetcParent'
--
-- * 'plaesetcXgafv'
--
-- * 'plaesetcUploadProtocol'
--
-- * 'plaesetcAccessToken'
--
-- * 'plaesetcUploadType'
--
-- * 'plaesetcPayload'
--
-- * 'plaesetcCallback'
projectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate
    :: Text -- ^ 'plaesetcParent'
    -> GoogleCloudDialogflowCxV3SessionEntityType -- ^ 'plaesetcPayload'
    -> ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate
projectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate pPlaesetcParent_ pPlaesetcPayload_ =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate'
    { _plaesetcParent = pPlaesetcParent_
    , _plaesetcXgafv = Nothing
    , _plaesetcUploadProtocol = Nothing
    , _plaesetcAccessToken = Nothing
    , _plaesetcUploadType = Nothing
    , _plaesetcPayload = pPlaesetcPayload_
    , _plaesetcCallback = Nothing
    }


-- | Required. The session to create a session entity type for. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaesetcParent :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate Text
plaesetcParent
  = lens _plaesetcParent
      (\ s a -> s{_plaesetcParent = a})

-- | V1 error format.
plaesetcXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate (Maybe Xgafv)
plaesetcXgafv
  = lens _plaesetcXgafv
      (\ s a -> s{_plaesetcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesetcUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate (Maybe Text)
plaesetcUploadProtocol
  = lens _plaesetcUploadProtocol
      (\ s a -> s{_plaesetcUploadProtocol = a})

-- | OAuth access token.
plaesetcAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate (Maybe Text)
plaesetcAccessToken
  = lens _plaesetcAccessToken
      (\ s a -> s{_plaesetcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesetcUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate (Maybe Text)
plaesetcUploadType
  = lens _plaesetcUploadType
      (\ s a -> s{_plaesetcUploadType = a})

-- | Multipart request metadata.
plaesetcPayload :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate GoogleCloudDialogflowCxV3SessionEntityType
plaesetcPayload
  = lens _plaesetcPayload
      (\ s a -> s{_plaesetcPayload = a})

-- | JSONP
plaesetcCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate (Maybe Text)
plaesetcCallback
  = lens _plaesetcCallback
      (\ s a -> s{_plaesetcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate
             = GoogleCloudDialogflowCxV3SessionEntityType
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreate'{..}
          = go _plaesetcParent _plaesetcXgafv
              _plaesetcUploadProtocol
              _plaesetcAccessToken
              _plaesetcUploadType
              _plaesetcCallback
              (Just AltJSON)
              _plaesetcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesCreateResource)
                      mempty
