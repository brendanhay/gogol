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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all entity types in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsEntityTypesListResource

    -- * Creating a Request
    , projectsLocationsAgentsEntityTypesList
    , ProjectsLocationsAgentsEntityTypesList

    -- * Request Lenses
    , plaetlParent
    , plaetlXgafv
    , plaetlLanguageCode
    , plaetlUploadProtocol
    , plaetlAccessToken
    , plaetlUploadType
    , plaetlPageToken
    , plaetlPageSize
    , plaetlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.list@ method which the
-- 'ProjectsLocationsAgentsEntityTypesList' request conforms to.
type ProjectsLocationsAgentsEntityTypesListResource =
     "v3" :>
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
                               GoogleCloudDialogflowCxV3ListEntityTypesResponse

-- | Returns the list of all entity types in the specified agent.
--
-- /See:/ 'projectsLocationsAgentsEntityTypesList' smart constructor.
data ProjectsLocationsAgentsEntityTypesList =
  ProjectsLocationsAgentsEntityTypesList'
    { _plaetlParent :: !Text
    , _plaetlXgafv :: !(Maybe Xgafv)
    , _plaetlLanguageCode :: !(Maybe Text)
    , _plaetlUploadProtocol :: !(Maybe Text)
    , _plaetlAccessToken :: !(Maybe Text)
    , _plaetlUploadType :: !(Maybe Text)
    , _plaetlPageToken :: !(Maybe Text)
    , _plaetlPageSize :: !(Maybe (Textual Int32))
    , _plaetlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEntityTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaetlParent'
--
-- * 'plaetlXgafv'
--
-- * 'plaetlLanguageCode'
--
-- * 'plaetlUploadProtocol'
--
-- * 'plaetlAccessToken'
--
-- * 'plaetlUploadType'
--
-- * 'plaetlPageToken'
--
-- * 'plaetlPageSize'
--
-- * 'plaetlCallback'
projectsLocationsAgentsEntityTypesList
    :: Text -- ^ 'plaetlParent'
    -> ProjectsLocationsAgentsEntityTypesList
projectsLocationsAgentsEntityTypesList pPlaetlParent_ =
  ProjectsLocationsAgentsEntityTypesList'
    { _plaetlParent = pPlaetlParent_
    , _plaetlXgafv = Nothing
    , _plaetlLanguageCode = Nothing
    , _plaetlUploadProtocol = Nothing
    , _plaetlAccessToken = Nothing
    , _plaetlUploadType = Nothing
    , _plaetlPageToken = Nothing
    , _plaetlPageSize = Nothing
    , _plaetlCallback = Nothing
    }


-- | Required. The agent to list all entity types for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaetlParent :: Lens' ProjectsLocationsAgentsEntityTypesList Text
plaetlParent
  = lens _plaetlParent (\ s a -> s{_plaetlParent = a})

-- | V1 error format.
plaetlXgafv :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Xgafv)
plaetlXgafv
  = lens _plaetlXgafv (\ s a -> s{_plaetlXgafv = a})

-- | The language to list entity types for. The following fields are language
-- dependent: * \`EntityType.entities.value\` *
-- \`EntityType.entities.synonyms\` * \`EntityType.excluded_phrases.value\`
-- If not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaetlLanguageCode :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Text)
plaetlLanguageCode
  = lens _plaetlLanguageCode
      (\ s a -> s{_plaetlLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaetlUploadProtocol :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Text)
plaetlUploadProtocol
  = lens _plaetlUploadProtocol
      (\ s a -> s{_plaetlUploadProtocol = a})

-- | OAuth access token.
plaetlAccessToken :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Text)
plaetlAccessToken
  = lens _plaetlAccessToken
      (\ s a -> s{_plaetlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaetlUploadType :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Text)
plaetlUploadType
  = lens _plaetlUploadType
      (\ s a -> s{_plaetlUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaetlPageToken :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Text)
plaetlPageToken
  = lens _plaetlPageToken
      (\ s a -> s{_plaetlPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaetlPageSize :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Int32)
plaetlPageSize
  = lens _plaetlPageSize
      (\ s a -> s{_plaetlPageSize = a})
      . mapping _Coerce

-- | JSONP
plaetlCallback :: Lens' ProjectsLocationsAgentsEntityTypesList (Maybe Text)
plaetlCallback
  = lens _plaetlCallback
      (\ s a -> s{_plaetlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEntityTypesList
         where
        type Rs ProjectsLocationsAgentsEntityTypesList =
             GoogleCloudDialogflowCxV3ListEntityTypesResponse
        type Scopes ProjectsLocationsAgentsEntityTypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEntityTypesList'{..}
          = go _plaetlParent _plaetlXgafv _plaetlLanguageCode
              _plaetlUploadProtocol
              _plaetlAccessToken
              _plaetlUploadType
              _plaetlPageToken
              _plaetlPageSize
              _plaetlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsEntityTypesListResource)
                      mempty
