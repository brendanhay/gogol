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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified intent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsIntentsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsIntentsGet
    , ProjectsLocationsAgentsIntentsGet

    -- * Request Lenses
    , plaigXgafv
    , plaigLanguageCode
    , plaigUploadProtocol
    , plaigAccessToken
    , plaigUploadType
    , plaigName
    , plaigCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.intents.get@ method which the
-- 'ProjectsLocationsAgentsIntentsGet' request conforms to.
type ProjectsLocationsAgentsIntentsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudDialogflowCxV3Intent

-- | Retrieves the specified intent.
--
-- /See:/ 'projectsLocationsAgentsIntentsGet' smart constructor.
data ProjectsLocationsAgentsIntentsGet =
  ProjectsLocationsAgentsIntentsGet'
    { _plaigXgafv :: !(Maybe Xgafv)
    , _plaigLanguageCode :: !(Maybe Text)
    , _plaigUploadProtocol :: !(Maybe Text)
    , _plaigAccessToken :: !(Maybe Text)
    , _plaigUploadType :: !(Maybe Text)
    , _plaigName :: !Text
    , _plaigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsIntentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaigXgafv'
--
-- * 'plaigLanguageCode'
--
-- * 'plaigUploadProtocol'
--
-- * 'plaigAccessToken'
--
-- * 'plaigUploadType'
--
-- * 'plaigName'
--
-- * 'plaigCallback'
projectsLocationsAgentsIntentsGet
    :: Text -- ^ 'plaigName'
    -> ProjectsLocationsAgentsIntentsGet
projectsLocationsAgentsIntentsGet pPlaigName_ =
  ProjectsLocationsAgentsIntentsGet'
    { _plaigXgafv = Nothing
    , _plaigLanguageCode = Nothing
    , _plaigUploadProtocol = Nothing
    , _plaigAccessToken = Nothing
    , _plaigUploadType = Nothing
    , _plaigName = pPlaigName_
    , _plaigCallback = Nothing
    }


-- | V1 error format.
plaigXgafv :: Lens' ProjectsLocationsAgentsIntentsGet (Maybe Xgafv)
plaigXgafv
  = lens _plaigXgafv (\ s a -> s{_plaigXgafv = a})

-- | The language to retrieve the intent for. The following fields are
-- language dependent: * \`Intent.training_phrases.parts.text\` If not
-- specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaigLanguageCode :: Lens' ProjectsLocationsAgentsIntentsGet (Maybe Text)
plaigLanguageCode
  = lens _plaigLanguageCode
      (\ s a -> s{_plaigLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaigUploadProtocol :: Lens' ProjectsLocationsAgentsIntentsGet (Maybe Text)
plaigUploadProtocol
  = lens _plaigUploadProtocol
      (\ s a -> s{_plaigUploadProtocol = a})

-- | OAuth access token.
plaigAccessToken :: Lens' ProjectsLocationsAgentsIntentsGet (Maybe Text)
plaigAccessToken
  = lens _plaigAccessToken
      (\ s a -> s{_plaigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaigUploadType :: Lens' ProjectsLocationsAgentsIntentsGet (Maybe Text)
plaigUploadType
  = lens _plaigUploadType
      (\ s a -> s{_plaigUploadType = a})

-- | Required. The name of the intent. Format:
-- \`projects\/\/locations\/\/agents\/\/intents\/\`.
plaigName :: Lens' ProjectsLocationsAgentsIntentsGet Text
plaigName
  = lens _plaigName (\ s a -> s{_plaigName = a})

-- | JSONP
plaigCallback :: Lens' ProjectsLocationsAgentsIntentsGet (Maybe Text)
plaigCallback
  = lens _plaigCallback
      (\ s a -> s{_plaigCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsIntentsGet
         where
        type Rs ProjectsLocationsAgentsIntentsGet =
             GoogleCloudDialogflowCxV3Intent
        type Scopes ProjectsLocationsAgentsIntentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsIntentsGet'{..}
          = go _plaigName _plaigXgafv _plaigLanguageCode
              _plaigUploadProtocol
              _plaigAccessToken
              _plaigUploadType
              _plaigCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsIntentsGetResource)
                      mempty
