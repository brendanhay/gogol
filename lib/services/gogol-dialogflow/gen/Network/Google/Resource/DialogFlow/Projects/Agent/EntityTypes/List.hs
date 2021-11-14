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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all entity types in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.list@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.List
    (
    -- * REST Resource
      ProjectsAgentEntityTypesListResource

    -- * Creating a Request
    , projectsAgentEntityTypesList
    , ProjectsAgentEntityTypesList

    -- * Request Lenses
    , paetlParent
    , paetlXgafv
    , paetlLanguageCode
    , paetlUploadProtocol
    , paetlAccessToken
    , paetlUploadType
    , paetlPageToken
    , paetlPageSize
    , paetlCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.list@ method which the
-- 'ProjectsAgentEntityTypesList' request conforms to.
type ProjectsAgentEntityTypesListResource =
     "v2" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudDialogflowV2ListEntityTypesResponse

-- | Returns the list of all entity types in the specified agent.
--
-- /See:/ 'projectsAgentEntityTypesList' smart constructor.
data ProjectsAgentEntityTypesList =
  ProjectsAgentEntityTypesList'
    { _paetlParent         :: !Text
    , _paetlXgafv          :: !(Maybe Xgafv)
    , _paetlLanguageCode   :: !(Maybe Text)
    , _paetlUploadProtocol :: !(Maybe Text)
    , _paetlAccessToken    :: !(Maybe Text)
    , _paetlUploadType     :: !(Maybe Text)
    , _paetlPageToken      :: !(Maybe Text)
    , _paetlPageSize       :: !(Maybe (Textual Int32))
    , _paetlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentEntityTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetlParent'
--
-- * 'paetlXgafv'
--
-- * 'paetlLanguageCode'
--
-- * 'paetlUploadProtocol'
--
-- * 'paetlAccessToken'
--
-- * 'paetlUploadType'
--
-- * 'paetlPageToken'
--
-- * 'paetlPageSize'
--
-- * 'paetlCallback'
projectsAgentEntityTypesList
    :: Text -- ^ 'paetlParent'
    -> ProjectsAgentEntityTypesList
projectsAgentEntityTypesList pPaetlParent_ =
  ProjectsAgentEntityTypesList'
    { _paetlParent = pPaetlParent_
    , _paetlXgafv = Nothing
    , _paetlLanguageCode = Nothing
    , _paetlUploadProtocol = Nothing
    , _paetlAccessToken = Nothing
    , _paetlUploadType = Nothing
    , _paetlPageToken = Nothing
    , _paetlPageSize = Nothing
    , _paetlCallback = Nothing
    }


-- | Required. The agent to list all entity types from. Format:
-- \`projects\/\/agent\`.
paetlParent :: Lens' ProjectsAgentEntityTypesList Text
paetlParent
  = lens _paetlParent (\ s a -> s{_paetlParent = a})

-- | V1 error format.
paetlXgafv :: Lens' ProjectsAgentEntityTypesList (Maybe Xgafv)
paetlXgafv
  = lens _paetlXgafv (\ s a -> s{_paetlXgafv = a})

-- | Optional. The language to list entity synonyms for. If not specified,
-- the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow-enterprise\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
paetlLanguageCode :: Lens' ProjectsAgentEntityTypesList (Maybe Text)
paetlLanguageCode
  = lens _paetlLanguageCode
      (\ s a -> s{_paetlLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetlUploadProtocol :: Lens' ProjectsAgentEntityTypesList (Maybe Text)
paetlUploadProtocol
  = lens _paetlUploadProtocol
      (\ s a -> s{_paetlUploadProtocol = a})

-- | OAuth access token.
paetlAccessToken :: Lens' ProjectsAgentEntityTypesList (Maybe Text)
paetlAccessToken
  = lens _paetlAccessToken
      (\ s a -> s{_paetlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetlUploadType :: Lens' ProjectsAgentEntityTypesList (Maybe Text)
paetlUploadType
  = lens _paetlUploadType
      (\ s a -> s{_paetlUploadType = a})

-- | Optional. The next_page_token value returned from a previous list
-- request.
paetlPageToken :: Lens' ProjectsAgentEntityTypesList (Maybe Text)
paetlPageToken
  = lens _paetlPageToken
      (\ s a -> s{_paetlPageToken = a})

-- | Optional. The maximum number of items to return in a single page. By
-- default 100 and at most 1000.
paetlPageSize :: Lens' ProjectsAgentEntityTypesList (Maybe Int32)
paetlPageSize
  = lens _paetlPageSize
      (\ s a -> s{_paetlPageSize = a})
      . mapping _Coerce

-- | JSONP
paetlCallback :: Lens' ProjectsAgentEntityTypesList (Maybe Text)
paetlCallback
  = lens _paetlCallback
      (\ s a -> s{_paetlCallback = a})

instance GoogleRequest ProjectsAgentEntityTypesList
         where
        type Rs ProjectsAgentEntityTypesList =
             GoogleCloudDialogflowV2ListEntityTypesResponse
        type Scopes ProjectsAgentEntityTypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentEntityTypesList'{..}
          = go _paetlParent _paetlXgafv _paetlLanguageCode
              _paetlUploadProtocol
              _paetlAccessToken
              _paetlUploadType
              _paetlPageToken
              _paetlPageSize
              _paetlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentEntityTypesListResource)
                      mempty
