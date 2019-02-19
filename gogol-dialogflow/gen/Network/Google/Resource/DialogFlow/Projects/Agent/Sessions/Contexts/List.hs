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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all contexts in the specified session.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.contexts.list@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.List
    (
    -- * REST Resource
      ProjectsAgentSessionsContextsListResource

    -- * Creating a Request
    , projectsAgentSessionsContextsList
    , ProjectsAgentSessionsContextsList

    -- * Request Lenses
    , pasclParent
    , pasclXgafv
    , pasclUploadProtocol
    , pasclAccessToken
    , pasclUploadType
    , pasclPageToken
    , pasclPageSize
    , pasclCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.contexts.list@ method which the
-- 'ProjectsAgentSessionsContextsList' request conforms to.
type ProjectsAgentSessionsContextsListResource =
     "v2" :>
       Capture "parent" Text :>
         "contexts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowV2ListContextsResponse

-- | Returns the list of all contexts in the specified session.
--
-- /See:/ 'projectsAgentSessionsContextsList' smart constructor.
data ProjectsAgentSessionsContextsList =
  ProjectsAgentSessionsContextsList'
    { _pasclParent         :: !Text
    , _pasclXgafv          :: !(Maybe Xgafv)
    , _pasclUploadProtocol :: !(Maybe Text)
    , _pasclAccessToken    :: !(Maybe Text)
    , _pasclUploadType     :: !(Maybe Text)
    , _pasclPageToken      :: !(Maybe Text)
    , _pasclPageSize       :: !(Maybe (Textual Int32))
    , _pasclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentSessionsContextsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasclParent'
--
-- * 'pasclXgafv'
--
-- * 'pasclUploadProtocol'
--
-- * 'pasclAccessToken'
--
-- * 'pasclUploadType'
--
-- * 'pasclPageToken'
--
-- * 'pasclPageSize'
--
-- * 'pasclCallback'
projectsAgentSessionsContextsList
    :: Text -- ^ 'pasclParent'
    -> ProjectsAgentSessionsContextsList
projectsAgentSessionsContextsList pPasclParent_ =
  ProjectsAgentSessionsContextsList'
    { _pasclParent = pPasclParent_
    , _pasclXgafv = Nothing
    , _pasclUploadProtocol = Nothing
    , _pasclAccessToken = Nothing
    , _pasclUploadType = Nothing
    , _pasclPageToken = Nothing
    , _pasclPageSize = Nothing
    , _pasclCallback = Nothing
    }

-- | Required. The session to list all contexts from. Format:
-- \`projects\/\/agent\/sessions\/\`.
pasclParent :: Lens' ProjectsAgentSessionsContextsList Text
pasclParent
  = lens _pasclParent (\ s a -> s{_pasclParent = a})

-- | V1 error format.
pasclXgafv :: Lens' ProjectsAgentSessionsContextsList (Maybe Xgafv)
pasclXgafv
  = lens _pasclXgafv (\ s a -> s{_pasclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pasclUploadProtocol :: Lens' ProjectsAgentSessionsContextsList (Maybe Text)
pasclUploadProtocol
  = lens _pasclUploadProtocol
      (\ s a -> s{_pasclUploadProtocol = a})

-- | OAuth access token.
pasclAccessToken :: Lens' ProjectsAgentSessionsContextsList (Maybe Text)
pasclAccessToken
  = lens _pasclAccessToken
      (\ s a -> s{_pasclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pasclUploadType :: Lens' ProjectsAgentSessionsContextsList (Maybe Text)
pasclUploadType
  = lens _pasclUploadType
      (\ s a -> s{_pasclUploadType = a})

-- | Optional. The next_page_token value returned from a previous list
-- request.
pasclPageToken :: Lens' ProjectsAgentSessionsContextsList (Maybe Text)
pasclPageToken
  = lens _pasclPageToken
      (\ s a -> s{_pasclPageToken = a})

-- | Optional. The maximum number of items to return in a single page. By
-- default 100 and at most 1000.
pasclPageSize :: Lens' ProjectsAgentSessionsContextsList (Maybe Int32)
pasclPageSize
  = lens _pasclPageSize
      (\ s a -> s{_pasclPageSize = a})
      . mapping _Coerce

-- | JSONP
pasclCallback :: Lens' ProjectsAgentSessionsContextsList (Maybe Text)
pasclCallback
  = lens _pasclCallback
      (\ s a -> s{_pasclCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsContextsList
         where
        type Rs ProjectsAgentSessionsContextsList =
             GoogleCloudDialogflowV2ListContextsResponse
        type Scopes ProjectsAgentSessionsContextsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentSessionsContextsList'{..}
          = go _pasclParent _pasclXgafv _pasclUploadProtocol
              _pasclAccessToken
              _pasclUploadType
              _pasclPageToken
              _pasclPageSize
              _pasclCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsContextsListResource)
                      mempty
