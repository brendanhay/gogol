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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified intent. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsIntentsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsIntentsPatch
    , ProjectsLocationsAgentsIntentsPatch

    -- * Request Lenses
    , plaipXgafv
    , plaipLanguageCode
    , plaipUploadProtocol
    , plaipUpdateMask
    , plaipAccessToken
    , plaipUploadType
    , plaipPayload
    , plaipName
    , plaipCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.intents.patch@ method which the
-- 'ProjectsLocationsAgentsIntentsPatch' request conforms to.
type ProjectsLocationsAgentsIntentsPatchResource =
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
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3Intent :>
                           Patch '[JSON] GoogleCloudDialogflowCxV3Intent

-- | Updates the specified intent. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsIntentsPatch' smart constructor.
data ProjectsLocationsAgentsIntentsPatch =
  ProjectsLocationsAgentsIntentsPatch'
    { _plaipXgafv :: !(Maybe Xgafv)
    , _plaipLanguageCode :: !(Maybe Text)
    , _plaipUploadProtocol :: !(Maybe Text)
    , _plaipUpdateMask :: !(Maybe GFieldMask)
    , _plaipAccessToken :: !(Maybe Text)
    , _plaipUploadType :: !(Maybe Text)
    , _plaipPayload :: !GoogleCloudDialogflowCxV3Intent
    , _plaipName :: !Text
    , _plaipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsIntentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaipXgafv'
--
-- * 'plaipLanguageCode'
--
-- * 'plaipUploadProtocol'
--
-- * 'plaipUpdateMask'
--
-- * 'plaipAccessToken'
--
-- * 'plaipUploadType'
--
-- * 'plaipPayload'
--
-- * 'plaipName'
--
-- * 'plaipCallback'
projectsLocationsAgentsIntentsPatch
    :: GoogleCloudDialogflowCxV3Intent -- ^ 'plaipPayload'
    -> Text -- ^ 'plaipName'
    -> ProjectsLocationsAgentsIntentsPatch
projectsLocationsAgentsIntentsPatch pPlaipPayload_ pPlaipName_ =
  ProjectsLocationsAgentsIntentsPatch'
    { _plaipXgafv = Nothing
    , _plaipLanguageCode = Nothing
    , _plaipUploadProtocol = Nothing
    , _plaipUpdateMask = Nothing
    , _plaipAccessToken = Nothing
    , _plaipUploadType = Nothing
    , _plaipPayload = pPlaipPayload_
    , _plaipName = pPlaipName_
    , _plaipCallback = Nothing
    }


-- | V1 error format.
plaipXgafv :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe Xgafv)
plaipXgafv
  = lens _plaipXgafv (\ s a -> s{_plaipXgafv = a})

-- | The language of the following fields in \`intent\`: *
-- \`Intent.training_phrases.parts.text\` If not specified, the agent\'s
-- default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaipLanguageCode :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe Text)
plaipLanguageCode
  = lens _plaipLanguageCode
      (\ s a -> s{_plaipLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaipUploadProtocol :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe Text)
plaipUploadProtocol
  = lens _plaipUploadProtocol
      (\ s a -> s{_plaipUploadProtocol = a})

-- | The mask to control which fields get updated. If the mask is not
-- present, all fields will be updated.
plaipUpdateMask :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe GFieldMask)
plaipUpdateMask
  = lens _plaipUpdateMask
      (\ s a -> s{_plaipUpdateMask = a})

-- | OAuth access token.
plaipAccessToken :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe Text)
plaipAccessToken
  = lens _plaipAccessToken
      (\ s a -> s{_plaipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaipUploadType :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe Text)
plaipUploadType
  = lens _plaipUploadType
      (\ s a -> s{_plaipUploadType = a})

-- | Multipart request metadata.
plaipPayload :: Lens' ProjectsLocationsAgentsIntentsPatch GoogleCloudDialogflowCxV3Intent
plaipPayload
  = lens _plaipPayload (\ s a -> s{_plaipPayload = a})

-- | The unique identifier of the intent. Required for the
-- Intents.UpdateIntent method. Intents.CreateIntent populates the name
-- automatically. Format: \`projects\/\/locations\/\/agents\/\/intents\/\`.
plaipName :: Lens' ProjectsLocationsAgentsIntentsPatch Text
plaipName
  = lens _plaipName (\ s a -> s{_plaipName = a})

-- | JSONP
plaipCallback :: Lens' ProjectsLocationsAgentsIntentsPatch (Maybe Text)
plaipCallback
  = lens _plaipCallback
      (\ s a -> s{_plaipCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsIntentsPatch
         where
        type Rs ProjectsLocationsAgentsIntentsPatch =
             GoogleCloudDialogflowCxV3Intent
        type Scopes ProjectsLocationsAgentsIntentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsIntentsPatch'{..}
          = go _plaipName _plaipXgafv _plaipLanguageCode
              _plaipUploadProtocol
              _plaipUpdateMask
              _plaipAccessToken
              _plaipUploadType
              _plaipCallback
              (Just AltJSON)
              _plaipPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsIntentsPatchResource)
                      mempty
