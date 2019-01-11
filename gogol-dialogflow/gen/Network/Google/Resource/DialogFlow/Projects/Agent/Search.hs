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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of agents. Since there is at most one conversational
-- agent per project, this method is useful primarily for listing all
-- agents across projects the caller has access to. One can achieve that
-- with a wildcard project collection id \"-\". Refer to [List
-- Sub-Collections](https:\/\/cloud.google.com\/apis\/design\/design_patterns#list_sub-collections).
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.search@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Search
    (
    -- * REST Resource
      ProjectsAgentSearchResource

    -- * Creating a Request
    , projectsAgentSearch
    , ProjectsAgentSearch

    -- * Request Lenses
    , pasParent
    , pasXgafv
    , pasUploadProtocol
    , pasAccessToken
    , pasUploadType
    , pasPageToken
    , pasPageSize
    , pasCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.search@ method which the
-- 'ProjectsAgentSearch' request conforms to.
type ProjectsAgentSearchResource =
     "v2" :>
       Capture "parent" Text :>
         "agent:search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowV2SearchAgentsResponse

-- | Returns the list of agents. Since there is at most one conversational
-- agent per project, this method is useful primarily for listing all
-- agents across projects the caller has access to. One can achieve that
-- with a wildcard project collection id \"-\". Refer to [List
-- Sub-Collections](https:\/\/cloud.google.com\/apis\/design\/design_patterns#list_sub-collections).
--
-- /See:/ 'projectsAgentSearch' smart constructor.
data ProjectsAgentSearch = ProjectsAgentSearch'
    { _pasParent         :: !Text
    , _pasXgafv          :: !(Maybe Xgafv)
    , _pasUploadProtocol :: !(Maybe Text)
    , _pasAccessToken    :: !(Maybe Text)
    , _pasUploadType     :: !(Maybe Text)
    , _pasPageToken      :: !(Maybe Text)
    , _pasPageSize       :: !(Maybe (Textual Int32))
    , _pasCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasParent'
--
-- * 'pasXgafv'
--
-- * 'pasUploadProtocol'
--
-- * 'pasAccessToken'
--
-- * 'pasUploadType'
--
-- * 'pasPageToken'
--
-- * 'pasPageSize'
--
-- * 'pasCallback'
projectsAgentSearch
    :: Text -- ^ 'pasParent'
    -> ProjectsAgentSearch
projectsAgentSearch pPasParent_ =
    ProjectsAgentSearch'
    { _pasParent = pPasParent_
    , _pasXgafv = Nothing
    , _pasUploadProtocol = Nothing
    , _pasAccessToken = Nothing
    , _pasUploadType = Nothing
    , _pasPageToken = Nothing
    , _pasPageSize = Nothing
    , _pasCallback = Nothing
    }

-- | Required. The project to list agents from. Format: \`projects\/\`.
pasParent :: Lens' ProjectsAgentSearch Text
pasParent
  = lens _pasParent (\ s a -> s{_pasParent = a})

-- | V1 error format.
pasXgafv :: Lens' ProjectsAgentSearch (Maybe Xgafv)
pasXgafv = lens _pasXgafv (\ s a -> s{_pasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pasUploadProtocol :: Lens' ProjectsAgentSearch (Maybe Text)
pasUploadProtocol
  = lens _pasUploadProtocol
      (\ s a -> s{_pasUploadProtocol = a})

-- | OAuth access token.
pasAccessToken :: Lens' ProjectsAgentSearch (Maybe Text)
pasAccessToken
  = lens _pasAccessToken
      (\ s a -> s{_pasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pasUploadType :: Lens' ProjectsAgentSearch (Maybe Text)
pasUploadType
  = lens _pasUploadType
      (\ s a -> s{_pasUploadType = a})

-- | Optional. The next_page_token value returned from a previous list
-- request.
pasPageToken :: Lens' ProjectsAgentSearch (Maybe Text)
pasPageToken
  = lens _pasPageToken (\ s a -> s{_pasPageToken = a})

-- | Optional. The maximum number of items to return in a single page. By
-- default 100 and at most 1000.
pasPageSize :: Lens' ProjectsAgentSearch (Maybe Int32)
pasPageSize
  = lens _pasPageSize (\ s a -> s{_pasPageSize = a}) .
      mapping _Coerce

-- | JSONP
pasCallback :: Lens' ProjectsAgentSearch (Maybe Text)
pasCallback
  = lens _pasCallback (\ s a -> s{_pasCallback = a})

instance GoogleRequest ProjectsAgentSearch where
        type Rs ProjectsAgentSearch =
             GoogleCloudDialogflowV2SearchAgentsResponse
        type Scopes ProjectsAgentSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentSearch'{..}
          = go _pasParent _pasXgafv _pasUploadProtocol
              _pasAccessToken
              _pasUploadType
              _pasPageToken
              _pasPageSize
              _pasCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentSearchResource)
                      mempty
