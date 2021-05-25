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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all intents in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsIntentsListResource

    -- * Creating a Request
    , projectsLocationsAgentsIntentsList
    , ProjectsLocationsAgentsIntentsList

    -- * Request Lenses
    , plailParent
    , plailXgafv
    , plailLanguageCode
    , plailUploadProtocol
    , plailAccessToken
    , plailUploadType
    , plailIntentView
    , plailPageToken
    , plailPageSize
    , plailCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.intents.list@ method which the
-- 'ProjectsLocationsAgentsIntentsList' request conforms to.
type ProjectsLocationsAgentsIntentsListResource =
     "v3" :>
       Capture "parent" Text :>
         "intents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "intentView"
                       ProjectsLocationsAgentsIntentsListIntentView
                       :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleCloudDialogflowCxV3ListIntentsResponse

-- | Returns the list of all intents in the specified agent.
--
-- /See:/ 'projectsLocationsAgentsIntentsList' smart constructor.
data ProjectsLocationsAgentsIntentsList =
  ProjectsLocationsAgentsIntentsList'
    { _plailParent :: !Text
    , _plailXgafv :: !(Maybe Xgafv)
    , _plailLanguageCode :: !(Maybe Text)
    , _plailUploadProtocol :: !(Maybe Text)
    , _plailAccessToken :: !(Maybe Text)
    , _plailUploadType :: !(Maybe Text)
    , _plailIntentView :: !(Maybe ProjectsLocationsAgentsIntentsListIntentView)
    , _plailPageToken :: !(Maybe Text)
    , _plailPageSize :: !(Maybe (Textual Int32))
    , _plailCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsIntentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plailParent'
--
-- * 'plailXgafv'
--
-- * 'plailLanguageCode'
--
-- * 'plailUploadProtocol'
--
-- * 'plailAccessToken'
--
-- * 'plailUploadType'
--
-- * 'plailIntentView'
--
-- * 'plailPageToken'
--
-- * 'plailPageSize'
--
-- * 'plailCallback'
projectsLocationsAgentsIntentsList
    :: Text -- ^ 'plailParent'
    -> ProjectsLocationsAgentsIntentsList
projectsLocationsAgentsIntentsList pPlailParent_ =
  ProjectsLocationsAgentsIntentsList'
    { _plailParent = pPlailParent_
    , _plailXgafv = Nothing
    , _plailLanguageCode = Nothing
    , _plailUploadProtocol = Nothing
    , _plailAccessToken = Nothing
    , _plailUploadType = Nothing
    , _plailIntentView = Nothing
    , _plailPageToken = Nothing
    , _plailPageSize = Nothing
    , _plailCallback = Nothing
    }


-- | Required. The agent to list all intents for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plailParent :: Lens' ProjectsLocationsAgentsIntentsList Text
plailParent
  = lens _plailParent (\ s a -> s{_plailParent = a})

-- | V1 error format.
plailXgafv :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Xgafv)
plailXgafv
  = lens _plailXgafv (\ s a -> s{_plailXgafv = a})

-- | The language to list intents for. The following fields are language
-- dependent: * \`Intent.training_phrases.parts.text\` If not specified,
-- the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plailLanguageCode :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Text)
plailLanguageCode
  = lens _plailLanguageCode
      (\ s a -> s{_plailLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plailUploadProtocol :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Text)
plailUploadProtocol
  = lens _plailUploadProtocol
      (\ s a -> s{_plailUploadProtocol = a})

-- | OAuth access token.
plailAccessToken :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Text)
plailAccessToken
  = lens _plailAccessToken
      (\ s a -> s{_plailAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plailUploadType :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Text)
plailUploadType
  = lens _plailUploadType
      (\ s a -> s{_plailUploadType = a})

-- | The resource view to apply to the returned intent.
plailIntentView :: Lens' ProjectsLocationsAgentsIntentsList (Maybe ProjectsLocationsAgentsIntentsListIntentView)
plailIntentView
  = lens _plailIntentView
      (\ s a -> s{_plailIntentView = a})

-- | The next_page_token value returned from a previous list request.
plailPageToken :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Text)
plailPageToken
  = lens _plailPageToken
      (\ s a -> s{_plailPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plailPageSize :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Int32)
plailPageSize
  = lens _plailPageSize
      (\ s a -> s{_plailPageSize = a})
      . mapping _Coerce

-- | JSONP
plailCallback :: Lens' ProjectsLocationsAgentsIntentsList (Maybe Text)
plailCallback
  = lens _plailCallback
      (\ s a -> s{_plailCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsIntentsList
         where
        type Rs ProjectsLocationsAgentsIntentsList =
             GoogleCloudDialogflowCxV3ListIntentsResponse
        type Scopes ProjectsLocationsAgentsIntentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsIntentsList'{..}
          = go _plailParent _plailXgafv _plailLanguageCode
              _plailUploadProtocol
              _plailAccessToken
              _plailUploadType
              _plailIntentView
              _plailPageToken
              _plailPageSize
              _plailCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsIntentsListResource)
                      mempty
