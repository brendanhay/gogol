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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an intent in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.create@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Create
    (
    -- * REST Resource
      ProjectsAgentIntentsCreateResource

    -- * Creating a Request
    , projectsAgentIntentsCreate
    , ProjectsAgentIntentsCreate

    -- * Request Lenses
    , paicParent
    , paicXgafv
    , paicLanguageCode
    , paicUploadProtocol
    , paicAccessToken
    , paicUploadType
    , paicPayload
    , paicIntentView
    , paicCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.create@ method which the
-- 'ProjectsAgentIntentsCreate' request conforms to.
type ProjectsAgentIntentsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "intents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "intentView" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GoogleCloudDialogflowV2Intent :>
                             Post '[JSON] GoogleCloudDialogflowV2Intent

-- | Creates an intent in the specified agent.
--
-- /See:/ 'projectsAgentIntentsCreate' smart constructor.
data ProjectsAgentIntentsCreate = ProjectsAgentIntentsCreate'
    { _paicParent         :: !Text
    , _paicXgafv          :: !(Maybe Xgafv)
    , _paicLanguageCode   :: !(Maybe Text)
    , _paicUploadProtocol :: !(Maybe Text)
    , _paicAccessToken    :: !(Maybe Text)
    , _paicUploadType     :: !(Maybe Text)
    , _paicPayload        :: !GoogleCloudDialogflowV2Intent
    , _paicIntentView     :: !(Maybe Text)
    , _paicCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentIntentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paicParent'
--
-- * 'paicXgafv'
--
-- * 'paicLanguageCode'
--
-- * 'paicUploadProtocol'
--
-- * 'paicAccessToken'
--
-- * 'paicUploadType'
--
-- * 'paicPayload'
--
-- * 'paicIntentView'
--
-- * 'paicCallback'
projectsAgentIntentsCreate
    :: Text -- ^ 'paicParent'
    -> GoogleCloudDialogflowV2Intent -- ^ 'paicPayload'
    -> ProjectsAgentIntentsCreate
projectsAgentIntentsCreate pPaicParent_ pPaicPayload_ =
    ProjectsAgentIntentsCreate'
    { _paicParent = pPaicParent_
    , _paicXgafv = Nothing
    , _paicLanguageCode = Nothing
    , _paicUploadProtocol = Nothing
    , _paicAccessToken = Nothing
    , _paicUploadType = Nothing
    , _paicPayload = pPaicPayload_
    , _paicIntentView = Nothing
    , _paicCallback = Nothing
    }

-- | Required. The agent to create a intent for. Format:
-- \`projects\/\/agent\`.
paicParent :: Lens' ProjectsAgentIntentsCreate Text
paicParent
  = lens _paicParent (\ s a -> s{_paicParent = a})

-- | V1 error format.
paicXgafv :: Lens' ProjectsAgentIntentsCreate (Maybe Xgafv)
paicXgafv
  = lens _paicXgafv (\ s a -> s{_paicXgafv = a})

-- | Optional. The language of training phrases, parameters and rich messages
-- defined in \`intent\`. If not specified, the agent\'s default language
-- is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
paicLanguageCode :: Lens' ProjectsAgentIntentsCreate (Maybe Text)
paicLanguageCode
  = lens _paicLanguageCode
      (\ s a -> s{_paicLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paicUploadProtocol :: Lens' ProjectsAgentIntentsCreate (Maybe Text)
paicUploadProtocol
  = lens _paicUploadProtocol
      (\ s a -> s{_paicUploadProtocol = a})

-- | OAuth access token.
paicAccessToken :: Lens' ProjectsAgentIntentsCreate (Maybe Text)
paicAccessToken
  = lens _paicAccessToken
      (\ s a -> s{_paicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paicUploadType :: Lens' ProjectsAgentIntentsCreate (Maybe Text)
paicUploadType
  = lens _paicUploadType
      (\ s a -> s{_paicUploadType = a})

-- | Multipart request metadata.
paicPayload :: Lens' ProjectsAgentIntentsCreate GoogleCloudDialogflowV2Intent
paicPayload
  = lens _paicPayload (\ s a -> s{_paicPayload = a})

-- | Optional. The resource view to apply to the returned intent.
paicIntentView :: Lens' ProjectsAgentIntentsCreate (Maybe Text)
paicIntentView
  = lens _paicIntentView
      (\ s a -> s{_paicIntentView = a})

-- | JSONP
paicCallback :: Lens' ProjectsAgentIntentsCreate (Maybe Text)
paicCallback
  = lens _paicCallback (\ s a -> s{_paicCallback = a})

instance GoogleRequest ProjectsAgentIntentsCreate
         where
        type Rs ProjectsAgentIntentsCreate =
             GoogleCloudDialogflowV2Intent
        type Scopes ProjectsAgentIntentsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsCreate'{..}
          = go _paicParent _paicXgafv _paicLanguageCode
              _paicUploadProtocol
              _paicAccessToken
              _paicUploadType
              _paicIntentView
              _paicCallback
              (Just AltJSON)
              _paicPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentIntentsCreateResource)
                      mempty
