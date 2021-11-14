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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all experiments in the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsListResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsList
    , ProjectsLocationsAgentsEnvironmentsExperimentsList

    -- * Request Lenses
    , plaeelParent
    , plaeelXgafv
    , plaeelUploadProtocol
    , plaeelAccessToken
    , plaeelUploadType
    , plaeelPageToken
    , plaeelPageSize
    , plaeelCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.list@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsList' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "experiments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListExperimentsResponse

-- | Returns the list of all experiments in the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsList' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsList =
  ProjectsLocationsAgentsEnvironmentsExperimentsList'
    { _plaeelParent :: !Text
    , _plaeelXgafv :: !(Maybe Xgafv)
    , _plaeelUploadProtocol :: !(Maybe Text)
    , _plaeelAccessToken :: !(Maybe Text)
    , _plaeelUploadType :: !(Maybe Text)
    , _plaeelPageToken :: !(Maybe Text)
    , _plaeelPageSize :: !(Maybe (Textual Int32))
    , _plaeelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeelParent'
--
-- * 'plaeelXgafv'
--
-- * 'plaeelUploadProtocol'
--
-- * 'plaeelAccessToken'
--
-- * 'plaeelUploadType'
--
-- * 'plaeelPageToken'
--
-- * 'plaeelPageSize'
--
-- * 'plaeelCallback'
projectsLocationsAgentsEnvironmentsExperimentsList
    :: Text -- ^ 'plaeelParent'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsList
projectsLocationsAgentsEnvironmentsExperimentsList pPlaeelParent_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsList'
    { _plaeelParent = pPlaeelParent_
    , _plaeelXgafv = Nothing
    , _plaeelUploadProtocol = Nothing
    , _plaeelAccessToken = Nothing
    , _plaeelUploadType = Nothing
    , _plaeelPageToken = Nothing
    , _plaeelPageSize = Nothing
    , _plaeelCallback = Nothing
    }


-- | Required. The Environment to list all environments for. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaeelParent :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList Text
plaeelParent
  = lens _plaeelParent (\ s a -> s{_plaeelParent = a})

-- | V1 error format.
plaeelXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Xgafv)
plaeelXgafv
  = lens _plaeelXgafv (\ s a -> s{_plaeelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeelUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Text)
plaeelUploadProtocol
  = lens _plaeelUploadProtocol
      (\ s a -> s{_plaeelUploadProtocol = a})

-- | OAuth access token.
plaeelAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Text)
plaeelAccessToken
  = lens _plaeelAccessToken
      (\ s a -> s{_plaeelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeelUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Text)
plaeelUploadType
  = lens _plaeelUploadType
      (\ s a -> s{_plaeelUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaeelPageToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Text)
plaeelPageToken
  = lens _plaeelPageToken
      (\ s a -> s{_plaeelPageToken = a})

-- | The maximum number of items to return in a single page. By default 20
-- and at most 100.
plaeelPageSize :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Int32)
plaeelPageSize
  = lens _plaeelPageSize
      (\ s a -> s{_plaeelPageSize = a})
      . mapping _Coerce

-- | JSONP
plaeelCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsList (Maybe Text)
plaeelCallback
  = lens _plaeelCallback
      (\ s a -> s{_plaeelCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsList
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsList
             = GoogleCloudDialogflowCxV3ListExperimentsResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsList'{..}
          = go _plaeelParent _plaeelXgafv _plaeelUploadProtocol
              _plaeelAccessToken
              _plaeelUploadType
              _plaeelPageToken
              _plaeelPageSize
              _plaeelCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsListResource)
                      mempty
