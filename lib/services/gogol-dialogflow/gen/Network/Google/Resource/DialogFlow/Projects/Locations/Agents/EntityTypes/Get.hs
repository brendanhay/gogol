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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsEntityTypesGetResource

    -- * Creating a Request
    , projectsLocationsAgentsEntityTypesGet
    , ProjectsLocationsAgentsEntityTypesGet

    -- * Request Lenses
    , plaetgXgafv
    , plaetgLanguageCode
    , plaetgUploadProtocol
    , plaetgAccessToken
    , plaetgUploadType
    , plaetgName
    , plaetgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.get@ method which the
-- 'ProjectsLocationsAgentsEntityTypesGet' request conforms to.
type ProjectsLocationsAgentsEntityTypesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudDialogflowCxV3EntityType

-- | Retrieves the specified entity type.
--
-- /See:/ 'projectsLocationsAgentsEntityTypesGet' smart constructor.
data ProjectsLocationsAgentsEntityTypesGet =
  ProjectsLocationsAgentsEntityTypesGet'
    { _plaetgXgafv :: !(Maybe Xgafv)
    , _plaetgLanguageCode :: !(Maybe Text)
    , _plaetgUploadProtocol :: !(Maybe Text)
    , _plaetgAccessToken :: !(Maybe Text)
    , _plaetgUploadType :: !(Maybe Text)
    , _plaetgName :: !Text
    , _plaetgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEntityTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaetgXgafv'
--
-- * 'plaetgLanguageCode'
--
-- * 'plaetgUploadProtocol'
--
-- * 'plaetgAccessToken'
--
-- * 'plaetgUploadType'
--
-- * 'plaetgName'
--
-- * 'plaetgCallback'
projectsLocationsAgentsEntityTypesGet
    :: Text -- ^ 'plaetgName'
    -> ProjectsLocationsAgentsEntityTypesGet
projectsLocationsAgentsEntityTypesGet pPlaetgName_ =
  ProjectsLocationsAgentsEntityTypesGet'
    { _plaetgXgafv = Nothing
    , _plaetgLanguageCode = Nothing
    , _plaetgUploadProtocol = Nothing
    , _plaetgAccessToken = Nothing
    , _plaetgUploadType = Nothing
    , _plaetgName = pPlaetgName_
    , _plaetgCallback = Nothing
    }


-- | V1 error format.
plaetgXgafv :: Lens' ProjectsLocationsAgentsEntityTypesGet (Maybe Xgafv)
plaetgXgafv
  = lens _plaetgXgafv (\ s a -> s{_plaetgXgafv = a})

-- | The language to retrieve the entity type for. The following fields are
-- language dependent: * \`EntityType.entities.value\` *
-- \`EntityType.entities.synonyms\` * \`EntityType.excluded_phrases.value\`
-- If not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaetgLanguageCode :: Lens' ProjectsLocationsAgentsEntityTypesGet (Maybe Text)
plaetgLanguageCode
  = lens _plaetgLanguageCode
      (\ s a -> s{_plaetgLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaetgUploadProtocol :: Lens' ProjectsLocationsAgentsEntityTypesGet (Maybe Text)
plaetgUploadProtocol
  = lens _plaetgUploadProtocol
      (\ s a -> s{_plaetgUploadProtocol = a})

-- | OAuth access token.
plaetgAccessToken :: Lens' ProjectsLocationsAgentsEntityTypesGet (Maybe Text)
plaetgAccessToken
  = lens _plaetgAccessToken
      (\ s a -> s{_plaetgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaetgUploadType :: Lens' ProjectsLocationsAgentsEntityTypesGet (Maybe Text)
plaetgUploadType
  = lens _plaetgUploadType
      (\ s a -> s{_plaetgUploadType = a})

-- | Required. The name of the entity type. Format:
-- \`projects\/\/locations\/\/agents\/\/entityTypes\/\`.
plaetgName :: Lens' ProjectsLocationsAgentsEntityTypesGet Text
plaetgName
  = lens _plaetgName (\ s a -> s{_plaetgName = a})

-- | JSONP
plaetgCallback :: Lens' ProjectsLocationsAgentsEntityTypesGet (Maybe Text)
plaetgCallback
  = lens _plaetgCallback
      (\ s a -> s{_plaetgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEntityTypesGet
         where
        type Rs ProjectsLocationsAgentsEntityTypesGet =
             GoogleCloudDialogflowCxV3EntityType
        type Scopes ProjectsLocationsAgentsEntityTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEntityTypesGet'{..}
          = go _plaetgName _plaetgXgafv _plaetgLanguageCode
              _plaetgUploadProtocol
              _plaetgAccessToken
              _plaetgUploadType
              _plaetgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsEntityTypesGetResource)
                      mempty
