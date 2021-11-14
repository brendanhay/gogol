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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an entity type in the specified agent. Note: You should always
-- train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsEntityTypesCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsEntityTypesCreate
    , ProjectsLocationsAgentsEntityTypesCreate

    -- * Request Lenses
    , plaetcParent
    , plaetcXgafv
    , plaetcLanguageCode
    , plaetcUploadProtocol
    , plaetcAccessToken
    , plaetcUploadType
    , plaetcPayload
    , plaetcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.create@ method which the
-- 'ProjectsLocationsAgentsEntityTypesCreate' request conforms to.
type ProjectsLocationsAgentsEntityTypesCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3EntityType
                           :> Post '[JSON] GoogleCloudDialogflowCxV3EntityType

-- | Creates an entity type in the specified agent. Note: You should always
-- train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsEntityTypesCreate' smart constructor.
data ProjectsLocationsAgentsEntityTypesCreate =
  ProjectsLocationsAgentsEntityTypesCreate'
    { _plaetcParent :: !Text
    , _plaetcXgafv :: !(Maybe Xgafv)
    , _plaetcLanguageCode :: !(Maybe Text)
    , _plaetcUploadProtocol :: !(Maybe Text)
    , _plaetcAccessToken :: !(Maybe Text)
    , _plaetcUploadType :: !(Maybe Text)
    , _plaetcPayload :: !GoogleCloudDialogflowCxV3EntityType
    , _plaetcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEntityTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaetcParent'
--
-- * 'plaetcXgafv'
--
-- * 'plaetcLanguageCode'
--
-- * 'plaetcUploadProtocol'
--
-- * 'plaetcAccessToken'
--
-- * 'plaetcUploadType'
--
-- * 'plaetcPayload'
--
-- * 'plaetcCallback'
projectsLocationsAgentsEntityTypesCreate
    :: Text -- ^ 'plaetcParent'
    -> GoogleCloudDialogflowCxV3EntityType -- ^ 'plaetcPayload'
    -> ProjectsLocationsAgentsEntityTypesCreate
projectsLocationsAgentsEntityTypesCreate pPlaetcParent_ pPlaetcPayload_ =
  ProjectsLocationsAgentsEntityTypesCreate'
    { _plaetcParent = pPlaetcParent_
    , _plaetcXgafv = Nothing
    , _plaetcLanguageCode = Nothing
    , _plaetcUploadProtocol = Nothing
    , _plaetcAccessToken = Nothing
    , _plaetcUploadType = Nothing
    , _plaetcPayload = pPlaetcPayload_
    , _plaetcCallback = Nothing
    }


-- | Required. The agent to create a entity type for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaetcParent :: Lens' ProjectsLocationsAgentsEntityTypesCreate Text
plaetcParent
  = lens _plaetcParent (\ s a -> s{_plaetcParent = a})

-- | V1 error format.
plaetcXgafv :: Lens' ProjectsLocationsAgentsEntityTypesCreate (Maybe Xgafv)
plaetcXgafv
  = lens _plaetcXgafv (\ s a -> s{_plaetcXgafv = a})

-- | The language of the following fields in \`entity_type\`: *
-- \`EntityType.entities.value\` * \`EntityType.entities.synonyms\` *
-- \`EntityType.excluded_phrases.value\` If not specified, the agent\'s
-- default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaetcLanguageCode :: Lens' ProjectsLocationsAgentsEntityTypesCreate (Maybe Text)
plaetcLanguageCode
  = lens _plaetcLanguageCode
      (\ s a -> s{_plaetcLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaetcUploadProtocol :: Lens' ProjectsLocationsAgentsEntityTypesCreate (Maybe Text)
plaetcUploadProtocol
  = lens _plaetcUploadProtocol
      (\ s a -> s{_plaetcUploadProtocol = a})

-- | OAuth access token.
plaetcAccessToken :: Lens' ProjectsLocationsAgentsEntityTypesCreate (Maybe Text)
plaetcAccessToken
  = lens _plaetcAccessToken
      (\ s a -> s{_plaetcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaetcUploadType :: Lens' ProjectsLocationsAgentsEntityTypesCreate (Maybe Text)
plaetcUploadType
  = lens _plaetcUploadType
      (\ s a -> s{_plaetcUploadType = a})

-- | Multipart request metadata.
plaetcPayload :: Lens' ProjectsLocationsAgentsEntityTypesCreate GoogleCloudDialogflowCxV3EntityType
plaetcPayload
  = lens _plaetcPayload
      (\ s a -> s{_plaetcPayload = a})

-- | JSONP
plaetcCallback :: Lens' ProjectsLocationsAgentsEntityTypesCreate (Maybe Text)
plaetcCallback
  = lens _plaetcCallback
      (\ s a -> s{_plaetcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEntityTypesCreate
         where
        type Rs ProjectsLocationsAgentsEntityTypesCreate =
             GoogleCloudDialogflowCxV3EntityType
        type Scopes ProjectsLocationsAgentsEntityTypesCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEntityTypesCreate'{..}
          = go _plaetcParent _plaetcXgafv _plaetcLanguageCode
              _plaetcUploadProtocol
              _plaetcAccessToken
              _plaetcUploadType
              _plaetcCallback
              (Just AltJSON)
              _plaetcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEntityTypesCreateResource)
                      mempty
