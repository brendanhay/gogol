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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified entity type. Note: You should always train a flow
-- prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsEntityTypesPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsEntityTypesPatch
    , ProjectsLocationsAgentsEntityTypesPatch

    -- * Request Lenses
    , plaetpXgafv
    , plaetpLanguageCode
    , plaetpUploadProtocol
    , plaetpUpdateMask
    , plaetpAccessToken
    , plaetpUploadType
    , plaetpPayload
    , plaetpName
    , plaetpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.patch@ method which the
-- 'ProjectsLocationsAgentsEntityTypesPatch' request conforms to.
type ProjectsLocationsAgentsEntityTypesPatchResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3EntityType
                           :> Patch '[JSON] GoogleCloudDialogflowCxV3EntityType

-- | Updates the specified entity type. Note: You should always train a flow
-- prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsEntityTypesPatch' smart constructor.
data ProjectsLocationsAgentsEntityTypesPatch =
  ProjectsLocationsAgentsEntityTypesPatch'
    { _plaetpXgafv :: !(Maybe Xgafv)
    , _plaetpLanguageCode :: !(Maybe Text)
    , _plaetpUploadProtocol :: !(Maybe Text)
    , _plaetpUpdateMask :: !(Maybe GFieldMask)
    , _plaetpAccessToken :: !(Maybe Text)
    , _plaetpUploadType :: !(Maybe Text)
    , _plaetpPayload :: !GoogleCloudDialogflowCxV3EntityType
    , _plaetpName :: !Text
    , _plaetpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEntityTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaetpXgafv'
--
-- * 'plaetpLanguageCode'
--
-- * 'plaetpUploadProtocol'
--
-- * 'plaetpUpdateMask'
--
-- * 'plaetpAccessToken'
--
-- * 'plaetpUploadType'
--
-- * 'plaetpPayload'
--
-- * 'plaetpName'
--
-- * 'plaetpCallback'
projectsLocationsAgentsEntityTypesPatch
    :: GoogleCloudDialogflowCxV3EntityType -- ^ 'plaetpPayload'
    -> Text -- ^ 'plaetpName'
    -> ProjectsLocationsAgentsEntityTypesPatch
projectsLocationsAgentsEntityTypesPatch pPlaetpPayload_ pPlaetpName_ =
  ProjectsLocationsAgentsEntityTypesPatch'
    { _plaetpXgafv = Nothing
    , _plaetpLanguageCode = Nothing
    , _plaetpUploadProtocol = Nothing
    , _plaetpUpdateMask = Nothing
    , _plaetpAccessToken = Nothing
    , _plaetpUploadType = Nothing
    , _plaetpPayload = pPlaetpPayload_
    , _plaetpName = pPlaetpName_
    , _plaetpCallback = Nothing
    }


-- | V1 error format.
plaetpXgafv :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe Xgafv)
plaetpXgafv
  = lens _plaetpXgafv (\ s a -> s{_plaetpXgafv = a})

-- | The language of the following fields in \`entity_type\`: *
-- \`EntityType.entities.value\` * \`EntityType.entities.synonyms\` *
-- \`EntityType.excluded_phrases.value\` If not specified, the agent\'s
-- default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaetpLanguageCode :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe Text)
plaetpLanguageCode
  = lens _plaetpLanguageCode
      (\ s a -> s{_plaetpLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaetpUploadProtocol :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe Text)
plaetpUploadProtocol
  = lens _plaetpUploadProtocol
      (\ s a -> s{_plaetpUploadProtocol = a})

-- | The mask to control which fields get updated.
plaetpUpdateMask :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe GFieldMask)
plaetpUpdateMask
  = lens _plaetpUpdateMask
      (\ s a -> s{_plaetpUpdateMask = a})

-- | OAuth access token.
plaetpAccessToken :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe Text)
plaetpAccessToken
  = lens _plaetpAccessToken
      (\ s a -> s{_plaetpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaetpUploadType :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe Text)
plaetpUploadType
  = lens _plaetpUploadType
      (\ s a -> s{_plaetpUploadType = a})

-- | Multipart request metadata.
plaetpPayload :: Lens' ProjectsLocationsAgentsEntityTypesPatch GoogleCloudDialogflowCxV3EntityType
plaetpPayload
  = lens _plaetpPayload
      (\ s a -> s{_plaetpPayload = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType. Format:
-- \`projects\/\/locations\/\/agents\/\/entityTypes\/\`.
plaetpName :: Lens' ProjectsLocationsAgentsEntityTypesPatch Text
plaetpName
  = lens _plaetpName (\ s a -> s{_plaetpName = a})

-- | JSONP
plaetpCallback :: Lens' ProjectsLocationsAgentsEntityTypesPatch (Maybe Text)
plaetpCallback
  = lens _plaetpCallback
      (\ s a -> s{_plaetpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEntityTypesPatch
         where
        type Rs ProjectsLocationsAgentsEntityTypesPatch =
             GoogleCloudDialogflowCxV3EntityType
        type Scopes ProjectsLocationsAgentsEntityTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEntityTypesPatch'{..}
          = go _plaetpName _plaetpXgafv _plaetpLanguageCode
              _plaetpUploadProtocol
              _plaetpUpdateMask
              _plaetpAccessToken
              _plaetpUploadType
              _plaetpCallback
              (Just AltJSON)
              _plaetpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEntityTypesPatchResource)
                      mempty
