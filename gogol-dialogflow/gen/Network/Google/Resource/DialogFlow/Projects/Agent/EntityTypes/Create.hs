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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an entity type in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.create@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Create
    (
    -- * REST Resource
      ProjectsAgentEntityTypesCreateResource

    -- * Creating a Request
    , projectsAgentEntityTypesCreate
    , ProjectsAgentEntityTypesCreate

    -- * Request Lenses
    , paetcParent
    , paetcXgafv
    , paetcLanguageCode
    , paetcUploadProtocol
    , paetcAccessToken
    , paetcUploadType
    , paetcPayload
    , paetcCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.create@ method which the
-- 'ProjectsAgentEntityTypesCreate' request conforms to.
type ProjectsAgentEntityTypesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowV2EntityType :>
                           Post '[JSON] GoogleCloudDialogflowV2EntityType

-- | Creates an entity type in the specified agent.
--
-- /See:/ 'projectsAgentEntityTypesCreate' smart constructor.
data ProjectsAgentEntityTypesCreate = ProjectsAgentEntityTypesCreate'
    { _paetcParent         :: !Text
    , _paetcXgafv          :: !(Maybe Xgafv)
    , _paetcLanguageCode   :: !(Maybe Text)
    , _paetcUploadProtocol :: !(Maybe Text)
    , _paetcAccessToken    :: !(Maybe Text)
    , _paetcUploadType     :: !(Maybe Text)
    , _paetcPayload        :: !GoogleCloudDialogflowV2EntityType
    , _paetcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentEntityTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetcParent'
--
-- * 'paetcXgafv'
--
-- * 'paetcLanguageCode'
--
-- * 'paetcUploadProtocol'
--
-- * 'paetcAccessToken'
--
-- * 'paetcUploadType'
--
-- * 'paetcPayload'
--
-- * 'paetcCallback'
projectsAgentEntityTypesCreate
    :: Text -- ^ 'paetcParent'
    -> GoogleCloudDialogflowV2EntityType -- ^ 'paetcPayload'
    -> ProjectsAgentEntityTypesCreate
projectsAgentEntityTypesCreate pPaetcParent_ pPaetcPayload_ =
    ProjectsAgentEntityTypesCreate'
    { _paetcParent = pPaetcParent_
    , _paetcXgafv = Nothing
    , _paetcLanguageCode = Nothing
    , _paetcUploadProtocol = Nothing
    , _paetcAccessToken = Nothing
    , _paetcUploadType = Nothing
    , _paetcPayload = pPaetcPayload_
    , _paetcCallback = Nothing
    }

-- | Required. The agent to create a entity type for. Format:
-- \`projects\/\/agent\`.
paetcParent :: Lens' ProjectsAgentEntityTypesCreate Text
paetcParent
  = lens _paetcParent (\ s a -> s{_paetcParent = a})

-- | V1 error format.
paetcXgafv :: Lens' ProjectsAgentEntityTypesCreate (Maybe Xgafv)
paetcXgafv
  = lens _paetcXgafv (\ s a -> s{_paetcXgafv = a})

-- | Optional. The language of entity synonyms defined in \`entity_type\`. If
-- not specified, the agent\'s default language is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
paetcLanguageCode :: Lens' ProjectsAgentEntityTypesCreate (Maybe Text)
paetcLanguageCode
  = lens _paetcLanguageCode
      (\ s a -> s{_paetcLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetcUploadProtocol :: Lens' ProjectsAgentEntityTypesCreate (Maybe Text)
paetcUploadProtocol
  = lens _paetcUploadProtocol
      (\ s a -> s{_paetcUploadProtocol = a})

-- | OAuth access token.
paetcAccessToken :: Lens' ProjectsAgentEntityTypesCreate (Maybe Text)
paetcAccessToken
  = lens _paetcAccessToken
      (\ s a -> s{_paetcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetcUploadType :: Lens' ProjectsAgentEntityTypesCreate (Maybe Text)
paetcUploadType
  = lens _paetcUploadType
      (\ s a -> s{_paetcUploadType = a})

-- | Multipart request metadata.
paetcPayload :: Lens' ProjectsAgentEntityTypesCreate GoogleCloudDialogflowV2EntityType
paetcPayload
  = lens _paetcPayload (\ s a -> s{_paetcPayload = a})

-- | JSONP
paetcCallback :: Lens' ProjectsAgentEntityTypesCreate (Maybe Text)
paetcCallback
  = lens _paetcCallback
      (\ s a -> s{_paetcCallback = a})

instance GoogleRequest ProjectsAgentEntityTypesCreate
         where
        type Rs ProjectsAgentEntityTypesCreate =
             GoogleCloudDialogflowV2EntityType
        type Scopes ProjectsAgentEntityTypesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentEntityTypesCreate'{..}
          = go _paetcParent _paetcXgafv _paetcLanguageCode
              _paetcUploadProtocol
              _paetcAccessToken
              _paetcUploadType
              _paetcCallback
              (Just AltJSON)
              _paetcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentEntityTypesCreateResource)
                      mempty
