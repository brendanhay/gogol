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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all intents in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.list@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.List
    (
    -- * REST Resource
      ProjectsAgentIntentsListResource

    -- * Creating a Request
    , projectsAgentIntentsList
    , ProjectsAgentIntentsList

    -- * Request Lenses
    , pailParent
    , pailXgafv
    , pailLanguageCode
    , pailUploadProtocol
    , pailAccessToken
    , pailUploadType
    , pailIntentView
    , pailPageToken
    , pailPageSize
    , pailCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.list@ method which the
-- 'ProjectsAgentIntentsList' request conforms to.
type ProjectsAgentIntentsListResource =
     "v2" :>
       Capture "parent" Text :>
         "intents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "intentView" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleCloudDialogflowV2ListIntentsResponse

-- | Returns the list of all intents in the specified agent.
--
-- /See:/ 'projectsAgentIntentsList' smart constructor.
data ProjectsAgentIntentsList =
  ProjectsAgentIntentsList'
    { _pailParent         :: !Text
    , _pailXgafv          :: !(Maybe Xgafv)
    , _pailLanguageCode   :: !(Maybe Text)
    , _pailUploadProtocol :: !(Maybe Text)
    , _pailAccessToken    :: !(Maybe Text)
    , _pailUploadType     :: !(Maybe Text)
    , _pailIntentView     :: !(Maybe Text)
    , _pailPageToken      :: !(Maybe Text)
    , _pailPageSize       :: !(Maybe (Textual Int32))
    , _pailCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentIntentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pailParent'
--
-- * 'pailXgafv'
--
-- * 'pailLanguageCode'
--
-- * 'pailUploadProtocol'
--
-- * 'pailAccessToken'
--
-- * 'pailUploadType'
--
-- * 'pailIntentView'
--
-- * 'pailPageToken'
--
-- * 'pailPageSize'
--
-- * 'pailCallback'
projectsAgentIntentsList
    :: Text -- ^ 'pailParent'
    -> ProjectsAgentIntentsList
projectsAgentIntentsList pPailParent_ =
  ProjectsAgentIntentsList'
    { _pailParent = pPailParent_
    , _pailXgafv = Nothing
    , _pailLanguageCode = Nothing
    , _pailUploadProtocol = Nothing
    , _pailAccessToken = Nothing
    , _pailUploadType = Nothing
    , _pailIntentView = Nothing
    , _pailPageToken = Nothing
    , _pailPageSize = Nothing
    , _pailCallback = Nothing
    }


-- | Required. The agent to list all intents from. Format:
-- \`projects\/\/agent\`.
pailParent :: Lens' ProjectsAgentIntentsList Text
pailParent
  = lens _pailParent (\ s a -> s{_pailParent = a})

-- | V1 error format.
pailXgafv :: Lens' ProjectsAgentIntentsList (Maybe Xgafv)
pailXgafv
  = lens _pailXgafv (\ s a -> s{_pailXgafv = a})

-- | Optional. The language to list training phrases, parameters and rich
-- messages for. If not specified, the agent\'s default language is used.
-- [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent before they can
-- be used.
pailLanguageCode :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailLanguageCode
  = lens _pailLanguageCode
      (\ s a -> s{_pailLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pailUploadProtocol :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailUploadProtocol
  = lens _pailUploadProtocol
      (\ s a -> s{_pailUploadProtocol = a})

-- | OAuth access token.
pailAccessToken :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailAccessToken
  = lens _pailAccessToken
      (\ s a -> s{_pailAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pailUploadType :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailUploadType
  = lens _pailUploadType
      (\ s a -> s{_pailUploadType = a})

-- | Optional. The resource view to apply to the returned intent.
pailIntentView :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailIntentView
  = lens _pailIntentView
      (\ s a -> s{_pailIntentView = a})

-- | Optional. The next_page_token value returned from a previous list
-- request.
pailPageToken :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailPageToken
  = lens _pailPageToken
      (\ s a -> s{_pailPageToken = a})

-- | Optional. The maximum number of items to return in a single page. By
-- default 100 and at most 1000.
pailPageSize :: Lens' ProjectsAgentIntentsList (Maybe Int32)
pailPageSize
  = lens _pailPageSize (\ s a -> s{_pailPageSize = a})
      . mapping _Coerce

-- | JSONP
pailCallback :: Lens' ProjectsAgentIntentsList (Maybe Text)
pailCallback
  = lens _pailCallback (\ s a -> s{_pailCallback = a})

instance GoogleRequest ProjectsAgentIntentsList where
        type Rs ProjectsAgentIntentsList =
             GoogleCloudDialogflowV2ListIntentsResponse
        type Scopes ProjectsAgentIntentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsList'{..}
          = go _pailParent _pailXgafv _pailLanguageCode
              _pailUploadProtocol
              _pailAccessToken
              _pailUploadType
              _pailIntentView
              _pailPageToken
              _pailPageSize
              _pailCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentIntentsListResource)
                      mempty
