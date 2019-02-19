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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all session entity types in the specified session.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.entityTypes.list@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.List
    (
    -- * REST Resource
      ProjectsAgentSessionsEntityTypesListResource

    -- * Creating a Request
    , projectsAgentSessionsEntityTypesList
    , ProjectsAgentSessionsEntityTypesList

    -- * Request Lenses
    , paSetlParent
    , paSetlXgafv
    , paSetlUploadProtocol
    , paSetlAccessToken
    , paSetlUploadType
    , paSetlPageToken
    , paSetlPageSize
    , paSetlCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.entityTypes.list@ method which the
-- 'ProjectsAgentSessionsEntityTypesList' request conforms to.
type ProjectsAgentSessionsEntityTypesListResource =
     "v2" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowV2ListSessionEntityTypesResponse

-- | Returns the list of all session entity types in the specified session.
--
-- /See:/ 'projectsAgentSessionsEntityTypesList' smart constructor.
data ProjectsAgentSessionsEntityTypesList =
  ProjectsAgentSessionsEntityTypesList'
    { _paSetlParent         :: !Text
    , _paSetlXgafv          :: !(Maybe Xgafv)
    , _paSetlUploadProtocol :: !(Maybe Text)
    , _paSetlAccessToken    :: !(Maybe Text)
    , _paSetlUploadType     :: !(Maybe Text)
    , _paSetlPageToken      :: !(Maybe Text)
    , _paSetlPageSize       :: !(Maybe (Textual Int32))
    , _paSetlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentSessionsEntityTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paSetlParent'
--
-- * 'paSetlXgafv'
--
-- * 'paSetlUploadProtocol'
--
-- * 'paSetlAccessToken'
--
-- * 'paSetlUploadType'
--
-- * 'paSetlPageToken'
--
-- * 'paSetlPageSize'
--
-- * 'paSetlCallback'
projectsAgentSessionsEntityTypesList
    :: Text -- ^ 'paSetlParent'
    -> ProjectsAgentSessionsEntityTypesList
projectsAgentSessionsEntityTypesList pPaSetlParent_ =
  ProjectsAgentSessionsEntityTypesList'
    { _paSetlParent = pPaSetlParent_
    , _paSetlXgafv = Nothing
    , _paSetlUploadProtocol = Nothing
    , _paSetlAccessToken = Nothing
    , _paSetlUploadType = Nothing
    , _paSetlPageToken = Nothing
    , _paSetlPageSize = Nothing
    , _paSetlCallback = Nothing
    }

-- | Required. The session to list all session entity types from. Format:
-- \`projects\/\/agent\/sessions\/\`.
paSetlParent :: Lens' ProjectsAgentSessionsEntityTypesList Text
paSetlParent
  = lens _paSetlParent (\ s a -> s{_paSetlParent = a})

-- | V1 error format.
paSetlXgafv :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Xgafv)
paSetlXgafv
  = lens _paSetlXgafv (\ s a -> s{_paSetlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paSetlUploadProtocol :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Text)
paSetlUploadProtocol
  = lens _paSetlUploadProtocol
      (\ s a -> s{_paSetlUploadProtocol = a})

-- | OAuth access token.
paSetlAccessToken :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Text)
paSetlAccessToken
  = lens _paSetlAccessToken
      (\ s a -> s{_paSetlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paSetlUploadType :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Text)
paSetlUploadType
  = lens _paSetlUploadType
      (\ s a -> s{_paSetlUploadType = a})

-- | Optional. The next_page_token value returned from a previous list
-- request.
paSetlPageToken :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Text)
paSetlPageToken
  = lens _paSetlPageToken
      (\ s a -> s{_paSetlPageToken = a})

-- | Optional. The maximum number of items to return in a single page. By
-- default 100 and at most 1000.
paSetlPageSize :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Int32)
paSetlPageSize
  = lens _paSetlPageSize
      (\ s a -> s{_paSetlPageSize = a})
      . mapping _Coerce

-- | JSONP
paSetlCallback :: Lens' ProjectsAgentSessionsEntityTypesList (Maybe Text)
paSetlCallback
  = lens _paSetlCallback
      (\ s a -> s{_paSetlCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsEntityTypesList
         where
        type Rs ProjectsAgentSessionsEntityTypesList =
             GoogleCloudDialogflowV2ListSessionEntityTypesResponse
        type Scopes ProjectsAgentSessionsEntityTypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsEntityTypesList'{..}
          = go _paSetlParent _paSetlXgafv _paSetlUploadProtocol
              _paSetlAccessToken
              _paSetlUploadType
              _paSetlPageToken
              _paSetlPageSize
              _paSetlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsEntityTypesListResource)
                      mempty
