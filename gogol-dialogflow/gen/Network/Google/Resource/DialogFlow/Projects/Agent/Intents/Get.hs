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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified intent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.get@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Get
    (
    -- * REST Resource
      ProjectsAgentIntentsGetResource

    -- * Creating a Request
    , projectsAgentIntentsGet
    , ProjectsAgentIntentsGet

    -- * Request Lenses
    , paigXgafv
    , paigLanguageCode
    , paigUploadProtocol
    , paigAccessToken
    , paigUploadType
    , paigIntentView
    , paigName
    , paigCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.get@ method which the
-- 'ProjectsAgentIntentsGet' request conforms to.
type ProjectsAgentIntentsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "intentView" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GoogleCloudDialogflowV2Intent

-- | Retrieves the specified intent.
--
-- /See:/ 'projectsAgentIntentsGet' smart constructor.
data ProjectsAgentIntentsGet =
  ProjectsAgentIntentsGet'
    { _paigXgafv          :: !(Maybe Xgafv)
    , _paigLanguageCode   :: !(Maybe Text)
    , _paigUploadProtocol :: !(Maybe Text)
    , _paigAccessToken    :: !(Maybe Text)
    , _paigUploadType     :: !(Maybe Text)
    , _paigIntentView     :: !(Maybe Text)
    , _paigName           :: !Text
    , _paigCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentIntentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paigXgafv'
--
-- * 'paigLanguageCode'
--
-- * 'paigUploadProtocol'
--
-- * 'paigAccessToken'
--
-- * 'paigUploadType'
--
-- * 'paigIntentView'
--
-- * 'paigName'
--
-- * 'paigCallback'
projectsAgentIntentsGet
    :: Text -- ^ 'paigName'
    -> ProjectsAgentIntentsGet
projectsAgentIntentsGet pPaigName_ =
  ProjectsAgentIntentsGet'
    { _paigXgafv = Nothing
    , _paigLanguageCode = Nothing
    , _paigUploadProtocol = Nothing
    , _paigAccessToken = Nothing
    , _paigUploadType = Nothing
    , _paigIntentView = Nothing
    , _paigName = pPaigName_
    , _paigCallback = Nothing
    }

-- | V1 error format.
paigXgafv :: Lens' ProjectsAgentIntentsGet (Maybe Xgafv)
paigXgafv
  = lens _paigXgafv (\ s a -> s{_paigXgafv = a})

-- | Optional. The language to retrieve training phrases, parameters and rich
-- messages for. If not specified, the agent\'s default language is used.
-- [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
paigLanguageCode :: Lens' ProjectsAgentIntentsGet (Maybe Text)
paigLanguageCode
  = lens _paigLanguageCode
      (\ s a -> s{_paigLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paigUploadProtocol :: Lens' ProjectsAgentIntentsGet (Maybe Text)
paigUploadProtocol
  = lens _paigUploadProtocol
      (\ s a -> s{_paigUploadProtocol = a})

-- | OAuth access token.
paigAccessToken :: Lens' ProjectsAgentIntentsGet (Maybe Text)
paigAccessToken
  = lens _paigAccessToken
      (\ s a -> s{_paigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paigUploadType :: Lens' ProjectsAgentIntentsGet (Maybe Text)
paigUploadType
  = lens _paigUploadType
      (\ s a -> s{_paigUploadType = a})

-- | Optional. The resource view to apply to the returned intent.
paigIntentView :: Lens' ProjectsAgentIntentsGet (Maybe Text)
paigIntentView
  = lens _paigIntentView
      (\ s a -> s{_paigIntentView = a})

-- | Required. The name of the intent. Format:
-- \`projects\/\/agent\/intents\/\`.
paigName :: Lens' ProjectsAgentIntentsGet Text
paigName = lens _paigName (\ s a -> s{_paigName = a})

-- | JSONP
paigCallback :: Lens' ProjectsAgentIntentsGet (Maybe Text)
paigCallback
  = lens _paigCallback (\ s a -> s{_paigCallback = a})

instance GoogleRequest ProjectsAgentIntentsGet where
        type Rs ProjectsAgentIntentsGet =
             GoogleCloudDialogflowV2Intent
        type Scopes ProjectsAgentIntentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsGet'{..}
          = go _paigName _paigXgafv _paigLanguageCode
              _paigUploadProtocol
              _paigAccessToken
              _paigUploadType
              _paigIntentView
              _paigCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentIntentsGetResource)
                      mempty
