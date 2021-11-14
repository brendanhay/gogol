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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an intent in the specified agent. Note: You should always train
-- a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsIntentsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsIntentsCreate
    , ProjectsLocationsAgentsIntentsCreate

    -- * Request Lenses
    , plaicParent
    , plaicXgafv
    , plaicLanguageCode
    , plaicUploadProtocol
    , plaicAccessToken
    , plaicUploadType
    , plaicPayload
    , plaicCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.intents.create@ method which the
-- 'ProjectsLocationsAgentsIntentsCreate' request conforms to.
type ProjectsLocationsAgentsIntentsCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "intents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3Intent :>
                           Post '[JSON] GoogleCloudDialogflowCxV3Intent

-- | Creates an intent in the specified agent. Note: You should always train
-- a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsIntentsCreate' smart constructor.
data ProjectsLocationsAgentsIntentsCreate =
  ProjectsLocationsAgentsIntentsCreate'
    { _plaicParent :: !Text
    , _plaicXgafv :: !(Maybe Xgafv)
    , _plaicLanguageCode :: !(Maybe Text)
    , _plaicUploadProtocol :: !(Maybe Text)
    , _plaicAccessToken :: !(Maybe Text)
    , _plaicUploadType :: !(Maybe Text)
    , _plaicPayload :: !GoogleCloudDialogflowCxV3Intent
    , _plaicCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsIntentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaicParent'
--
-- * 'plaicXgafv'
--
-- * 'plaicLanguageCode'
--
-- * 'plaicUploadProtocol'
--
-- * 'plaicAccessToken'
--
-- * 'plaicUploadType'
--
-- * 'plaicPayload'
--
-- * 'plaicCallback'
projectsLocationsAgentsIntentsCreate
    :: Text -- ^ 'plaicParent'
    -> GoogleCloudDialogflowCxV3Intent -- ^ 'plaicPayload'
    -> ProjectsLocationsAgentsIntentsCreate
projectsLocationsAgentsIntentsCreate pPlaicParent_ pPlaicPayload_ =
  ProjectsLocationsAgentsIntentsCreate'
    { _plaicParent = pPlaicParent_
    , _plaicXgafv = Nothing
    , _plaicLanguageCode = Nothing
    , _plaicUploadProtocol = Nothing
    , _plaicAccessToken = Nothing
    , _plaicUploadType = Nothing
    , _plaicPayload = pPlaicPayload_
    , _plaicCallback = Nothing
    }


-- | Required. The agent to create an intent for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaicParent :: Lens' ProjectsLocationsAgentsIntentsCreate Text
plaicParent
  = lens _plaicParent (\ s a -> s{_plaicParent = a})

-- | V1 error format.
plaicXgafv :: Lens' ProjectsLocationsAgentsIntentsCreate (Maybe Xgafv)
plaicXgafv
  = lens _plaicXgafv (\ s a -> s{_plaicXgafv = a})

-- | The language of the following fields in \`intent\`: *
-- \`Intent.training_phrases.parts.text\` If not specified, the agent\'s
-- default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaicLanguageCode :: Lens' ProjectsLocationsAgentsIntentsCreate (Maybe Text)
plaicLanguageCode
  = lens _plaicLanguageCode
      (\ s a -> s{_plaicLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaicUploadProtocol :: Lens' ProjectsLocationsAgentsIntentsCreate (Maybe Text)
plaicUploadProtocol
  = lens _plaicUploadProtocol
      (\ s a -> s{_plaicUploadProtocol = a})

-- | OAuth access token.
plaicAccessToken :: Lens' ProjectsLocationsAgentsIntentsCreate (Maybe Text)
plaicAccessToken
  = lens _plaicAccessToken
      (\ s a -> s{_plaicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaicUploadType :: Lens' ProjectsLocationsAgentsIntentsCreate (Maybe Text)
plaicUploadType
  = lens _plaicUploadType
      (\ s a -> s{_plaicUploadType = a})

-- | Multipart request metadata.
plaicPayload :: Lens' ProjectsLocationsAgentsIntentsCreate GoogleCloudDialogflowCxV3Intent
plaicPayload
  = lens _plaicPayload (\ s a -> s{_plaicPayload = a})

-- | JSONP
plaicCallback :: Lens' ProjectsLocationsAgentsIntentsCreate (Maybe Text)
plaicCallback
  = lens _plaicCallback
      (\ s a -> s{_plaicCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsIntentsCreate
         where
        type Rs ProjectsLocationsAgentsIntentsCreate =
             GoogleCloudDialogflowCxV3Intent
        type Scopes ProjectsLocationsAgentsIntentsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsIntentsCreate'{..}
          = go _plaicParent _plaicXgafv _plaicLanguageCode
              _plaicUploadProtocol
              _plaicAccessToken
              _plaicUploadType
              _plaicCallback
              (Just AltJSON)
              _plaicPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsIntentsCreateResource)
                      mempty
