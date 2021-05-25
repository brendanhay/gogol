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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.LookupEnvironmentHistory
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up the history of the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.LookupEnvironmentHistory
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistoryResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
    , ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory

    -- * Request Lenses
    , plaelehXgafv
    , plaelehUploadProtocol
    , plaelehAccessToken
    , plaelehUploadType
    , plaelehName
    , plaelehPageToken
    , plaelehPageSize
    , plaelehCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory' request conforms to.
type ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistoryResource
     =
     "v3" :>
       CaptureMode "name" "lookupEnvironmentHistory" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse

-- | Looks up the history of the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsLookupEnvironmentHistory' smart constructor.
data ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory =
  ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory'
    { _plaelehXgafv :: !(Maybe Xgafv)
    , _plaelehUploadProtocol :: !(Maybe Text)
    , _plaelehAccessToken :: !(Maybe Text)
    , _plaelehUploadType :: !(Maybe Text)
    , _plaelehName :: !Text
    , _plaelehPageToken :: !(Maybe Text)
    , _plaelehPageSize :: !(Maybe (Textual Int32))
    , _plaelehCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaelehXgafv'
--
-- * 'plaelehUploadProtocol'
--
-- * 'plaelehAccessToken'
--
-- * 'plaelehUploadType'
--
-- * 'plaelehName'
--
-- * 'plaelehPageToken'
--
-- * 'plaelehPageSize'
--
-- * 'plaelehCallback'
projectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
    :: Text -- ^ 'plaelehName'
    -> ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
projectsLocationsAgentsEnvironmentsLookupEnvironmentHistory pPlaelehName_ =
  ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory'
    { _plaelehXgafv = Nothing
    , _plaelehUploadProtocol = Nothing
    , _plaelehAccessToken = Nothing
    , _plaelehUploadType = Nothing
    , _plaelehName = pPlaelehName_
    , _plaelehPageToken = Nothing
    , _plaelehPageSize = Nothing
    , _plaelehCallback = Nothing
    }


-- | V1 error format.
plaelehXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Xgafv)
plaelehXgafv
  = lens _plaelehXgafv (\ s a -> s{_plaelehXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaelehUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Text)
plaelehUploadProtocol
  = lens _plaelehUploadProtocol
      (\ s a -> s{_plaelehUploadProtocol = a})

-- | OAuth access token.
plaelehAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Text)
plaelehAccessToken
  = lens _plaelehAccessToken
      (\ s a -> s{_plaelehAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaelehUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Text)
plaelehUploadType
  = lens _plaelehUploadType
      (\ s a -> s{_plaelehUploadType = a})

-- | Required. Resource name of the environment to look up the history for.
-- Format: \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaelehName :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory Text
plaelehName
  = lens _plaelehName (\ s a -> s{_plaelehName = a})

-- | The next_page_token value returned from a previous list request.
plaelehPageToken :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Text)
plaelehPageToken
  = lens _plaelehPageToken
      (\ s a -> s{_plaelehPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaelehPageSize :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Int32)
plaelehPageSize
  = lens _plaelehPageSize
      (\ s a -> s{_plaelehPageSize = a})
      . mapping _Coerce

-- | JSONP
plaelehCallback :: Lens' ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory (Maybe Text)
plaelehCallback
  = lens _plaelehCallback
      (\ s a -> s{_plaelehCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
             =
             GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory'{..}
          = go _plaelehName _plaelehXgafv
              _plaelehUploadProtocol
              _plaelehAccessToken
              _plaelehUploadType
              _plaelehPageToken
              _plaelehPageSize
              _plaelehCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistoryResource)
                      mempty
