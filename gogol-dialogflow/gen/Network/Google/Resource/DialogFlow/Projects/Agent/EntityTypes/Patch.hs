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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.patch@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Patch
    (
    -- * REST Resource
      ProjectsAgentEntityTypesPatchResource

    -- * Creating a Request
    , projectsAgentEntityTypesPatch
    , ProjectsAgentEntityTypesPatch

    -- * Request Lenses
    , paetpXgafv
    , paetpLanguageCode
    , paetpUploadProtocol
    , paetpUpdateMask
    , paetpAccessToken
    , paetpUploadType
    , paetpPayload
    , paetpName
    , paetpCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.patch@ method which the
-- 'ProjectsAgentEntityTypesPatch' request conforms to.
type ProjectsAgentEntityTypesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowV2EntityType :>
                           Patch '[JSON] GoogleCloudDialogflowV2EntityType

-- | Updates the specified entity type.
--
-- /See:/ 'projectsAgentEntityTypesPatch' smart constructor.
data ProjectsAgentEntityTypesPatch =
  ProjectsAgentEntityTypesPatch'
    { _paetpXgafv          :: !(Maybe Xgafv)
    , _paetpLanguageCode   :: !(Maybe Text)
    , _paetpUploadProtocol :: !(Maybe Text)
    , _paetpUpdateMask     :: !(Maybe GFieldMask)
    , _paetpAccessToken    :: !(Maybe Text)
    , _paetpUploadType     :: !(Maybe Text)
    , _paetpPayload        :: !GoogleCloudDialogflowV2EntityType
    , _paetpName           :: !Text
    , _paetpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentEntityTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetpXgafv'
--
-- * 'paetpLanguageCode'
--
-- * 'paetpUploadProtocol'
--
-- * 'paetpUpdateMask'
--
-- * 'paetpAccessToken'
--
-- * 'paetpUploadType'
--
-- * 'paetpPayload'
--
-- * 'paetpName'
--
-- * 'paetpCallback'
projectsAgentEntityTypesPatch
    :: GoogleCloudDialogflowV2EntityType -- ^ 'paetpPayload'
    -> Text -- ^ 'paetpName'
    -> ProjectsAgentEntityTypesPatch
projectsAgentEntityTypesPatch pPaetpPayload_ pPaetpName_ =
  ProjectsAgentEntityTypesPatch'
    { _paetpXgafv = Nothing
    , _paetpLanguageCode = Nothing
    , _paetpUploadProtocol = Nothing
    , _paetpUpdateMask = Nothing
    , _paetpAccessToken = Nothing
    , _paetpUploadType = Nothing
    , _paetpPayload = pPaetpPayload_
    , _paetpName = pPaetpName_
    , _paetpCallback = Nothing
    }


-- | V1 error format.
paetpXgafv :: Lens' ProjectsAgentEntityTypesPatch (Maybe Xgafv)
paetpXgafv
  = lens _paetpXgafv (\ s a -> s{_paetpXgafv = a})

-- | Optional. The language of entity synonyms defined in \`entity_type\`. If
-- not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow-enterprise\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
paetpLanguageCode :: Lens' ProjectsAgentEntityTypesPatch (Maybe Text)
paetpLanguageCode
  = lens _paetpLanguageCode
      (\ s a -> s{_paetpLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetpUploadProtocol :: Lens' ProjectsAgentEntityTypesPatch (Maybe Text)
paetpUploadProtocol
  = lens _paetpUploadProtocol
      (\ s a -> s{_paetpUploadProtocol = a})

-- | Optional. The mask to control which fields get updated.
paetpUpdateMask :: Lens' ProjectsAgentEntityTypesPatch (Maybe GFieldMask)
paetpUpdateMask
  = lens _paetpUpdateMask
      (\ s a -> s{_paetpUpdateMask = a})

-- | OAuth access token.
paetpAccessToken :: Lens' ProjectsAgentEntityTypesPatch (Maybe Text)
paetpAccessToken
  = lens _paetpAccessToken
      (\ s a -> s{_paetpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetpUploadType :: Lens' ProjectsAgentEntityTypesPatch (Maybe Text)
paetpUploadType
  = lens _paetpUploadType
      (\ s a -> s{_paetpUploadType = a})

-- | Multipart request metadata.
paetpPayload :: Lens' ProjectsAgentEntityTypesPatch GoogleCloudDialogflowV2EntityType
paetpPayload
  = lens _paetpPayload (\ s a -> s{_paetpPayload = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
-- methods. Format: \`projects\/\/agent\/entityTypes\/\`.
paetpName :: Lens' ProjectsAgentEntityTypesPatch Text
paetpName
  = lens _paetpName (\ s a -> s{_paetpName = a})

-- | JSONP
paetpCallback :: Lens' ProjectsAgentEntityTypesPatch (Maybe Text)
paetpCallback
  = lens _paetpCallback
      (\ s a -> s{_paetpCallback = a})

instance GoogleRequest ProjectsAgentEntityTypesPatch
         where
        type Rs ProjectsAgentEntityTypesPatch =
             GoogleCloudDialogflowV2EntityType
        type Scopes ProjectsAgentEntityTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentEntityTypesPatch'{..}
          = go _paetpName _paetpXgafv _paetpLanguageCode
              _paetpUploadProtocol
              _paetpUpdateMask
              _paetpAccessToken
              _paetpUploadType
              _paetpCallback
              (Just AltJSON)
              _paetpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentEntityTypesPatchResource)
                      mempty
