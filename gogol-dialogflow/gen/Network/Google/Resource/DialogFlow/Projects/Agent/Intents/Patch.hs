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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified intent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.patch@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Patch
    (
    -- * REST Resource
      ProjectsAgentIntentsPatchResource

    -- * Creating a Request
    , projectsAgentIntentsPatch
    , ProjectsAgentIntentsPatch

    -- * Request Lenses
    , paipXgafv
    , paipLanguageCode
    , paipUploadProtocol
    , paipUpdateMask
    , paipAccessToken
    , paipUploadType
    , paipPayload
    , paipIntentView
    , paipName
    , paipCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.patch@ method which the
-- 'ProjectsAgentIntentsPatch' request conforms to.
type ProjectsAgentIntentsPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "intentView" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GoogleCloudDialogflowV2Intent :>
                             Patch '[JSON] GoogleCloudDialogflowV2Intent

-- | Updates the specified intent.
--
-- /See:/ 'projectsAgentIntentsPatch' smart constructor.
data ProjectsAgentIntentsPatch = ProjectsAgentIntentsPatch'
    { _paipXgafv          :: !(Maybe Xgafv)
    , _paipLanguageCode   :: !(Maybe Text)
    , _paipUploadProtocol :: !(Maybe Text)
    , _paipUpdateMask     :: !(Maybe GFieldMask)
    , _paipAccessToken    :: !(Maybe Text)
    , _paipUploadType     :: !(Maybe Text)
    , _paipPayload        :: !GoogleCloudDialogflowV2Intent
    , _paipIntentView     :: !(Maybe Text)
    , _paipName           :: !Text
    , _paipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentIntentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paipXgafv'
--
-- * 'paipLanguageCode'
--
-- * 'paipUploadProtocol'
--
-- * 'paipUpdateMask'
--
-- * 'paipAccessToken'
--
-- * 'paipUploadType'
--
-- * 'paipPayload'
--
-- * 'paipIntentView'
--
-- * 'paipName'
--
-- * 'paipCallback'
projectsAgentIntentsPatch
    :: GoogleCloudDialogflowV2Intent -- ^ 'paipPayload'
    -> Text -- ^ 'paipName'
    -> ProjectsAgentIntentsPatch
projectsAgentIntentsPatch pPaipPayload_ pPaipName_ =
    ProjectsAgentIntentsPatch'
    { _paipXgafv = Nothing
    , _paipLanguageCode = Nothing
    , _paipUploadProtocol = Nothing
    , _paipUpdateMask = Nothing
    , _paipAccessToken = Nothing
    , _paipUploadType = Nothing
    , _paipPayload = pPaipPayload_
    , _paipIntentView = Nothing
    , _paipName = pPaipName_
    , _paipCallback = Nothing
    }

-- | V1 error format.
paipXgafv :: Lens' ProjectsAgentIntentsPatch (Maybe Xgafv)
paipXgafv
  = lens _paipXgafv (\ s a -> s{_paipXgafv = a})

-- | Optional. The language of training phrases, parameters and rich messages
-- defined in \`intent\`. If not specified, the agent\'s default language
-- is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
paipLanguageCode :: Lens' ProjectsAgentIntentsPatch (Maybe Text)
paipLanguageCode
  = lens _paipLanguageCode
      (\ s a -> s{_paipLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paipUploadProtocol :: Lens' ProjectsAgentIntentsPatch (Maybe Text)
paipUploadProtocol
  = lens _paipUploadProtocol
      (\ s a -> s{_paipUploadProtocol = a})

-- | Optional. The mask to control which fields get updated.
paipUpdateMask :: Lens' ProjectsAgentIntentsPatch (Maybe GFieldMask)
paipUpdateMask
  = lens _paipUpdateMask
      (\ s a -> s{_paipUpdateMask = a})

-- | OAuth access token.
paipAccessToken :: Lens' ProjectsAgentIntentsPatch (Maybe Text)
paipAccessToken
  = lens _paipAccessToken
      (\ s a -> s{_paipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paipUploadType :: Lens' ProjectsAgentIntentsPatch (Maybe Text)
paipUploadType
  = lens _paipUploadType
      (\ s a -> s{_paipUploadType = a})

-- | Multipart request metadata.
paipPayload :: Lens' ProjectsAgentIntentsPatch GoogleCloudDialogflowV2Intent
paipPayload
  = lens _paipPayload (\ s a -> s{_paipPayload = a})

-- | Optional. The resource view to apply to the returned intent.
paipIntentView :: Lens' ProjectsAgentIntentsPatch (Maybe Text)
paipIntentView
  = lens _paipIntentView
      (\ s a -> s{_paipIntentView = a})

-- | Required for all methods except \`create\` (\`create\` populates the
-- name automatically. The unique identifier of this intent. Format:
-- \`projects\/\/agent\/intents\/\`.
paipName :: Lens' ProjectsAgentIntentsPatch Text
paipName = lens _paipName (\ s a -> s{_paipName = a})

-- | JSONP
paipCallback :: Lens' ProjectsAgentIntentsPatch (Maybe Text)
paipCallback
  = lens _paipCallback (\ s a -> s{_paipCallback = a})

instance GoogleRequest ProjectsAgentIntentsPatch
         where
        type Rs ProjectsAgentIntentsPatch =
             GoogleCloudDialogflowV2Intent
        type Scopes ProjectsAgentIntentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsPatch'{..}
          = go _paipName _paipXgafv _paipLanguageCode
              _paipUploadProtocol
              _paipUpdateMask
              _paipAccessToken
              _paipUploadType
              _paipIntentView
              _paipCallback
              (Just AltJSON)
              _paipPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentIntentsPatchResource)
                      mempty
