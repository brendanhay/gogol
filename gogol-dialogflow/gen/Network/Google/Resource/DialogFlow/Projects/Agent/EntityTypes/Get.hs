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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.get@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Get
    (
    -- * REST Resource
      ProjectsAgentEntityTypesGetResource

    -- * Creating a Request
    , projectsAgentEntityTypesGet
    , ProjectsAgentEntityTypesGet

    -- * Request Lenses
    , paetgXgafv
    , paetgLanguageCode
    , paetgUploadProtocol
    , paetgAccessToken
    , paetgUploadType
    , paetgName
    , paetgCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.get@ method which the
-- 'ProjectsAgentEntityTypesGet' request conforms to.
type ProjectsAgentEntityTypesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudDialogflowV2EntityType

-- | Retrieves the specified entity type.
--
-- /See:/ 'projectsAgentEntityTypesGet' smart constructor.
data ProjectsAgentEntityTypesGet =
  ProjectsAgentEntityTypesGet'
    { _paetgXgafv          :: !(Maybe Xgafv)
    , _paetgLanguageCode   :: !(Maybe Text)
    , _paetgUploadProtocol :: !(Maybe Text)
    , _paetgAccessToken    :: !(Maybe Text)
    , _paetgUploadType     :: !(Maybe Text)
    , _paetgName           :: !Text
    , _paetgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentEntityTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetgXgafv'
--
-- * 'paetgLanguageCode'
--
-- * 'paetgUploadProtocol'
--
-- * 'paetgAccessToken'
--
-- * 'paetgUploadType'
--
-- * 'paetgName'
--
-- * 'paetgCallback'
projectsAgentEntityTypesGet
    :: Text -- ^ 'paetgName'
    -> ProjectsAgentEntityTypesGet
projectsAgentEntityTypesGet pPaetgName_ =
  ProjectsAgentEntityTypesGet'
    { _paetgXgafv = Nothing
    , _paetgLanguageCode = Nothing
    , _paetgUploadProtocol = Nothing
    , _paetgAccessToken = Nothing
    , _paetgUploadType = Nothing
    , _paetgName = pPaetgName_
    , _paetgCallback = Nothing
    }


-- | V1 error format.
paetgXgafv :: Lens' ProjectsAgentEntityTypesGet (Maybe Xgafv)
paetgXgafv
  = lens _paetgXgafv (\ s a -> s{_paetgXgafv = a})

-- | Optional. The language to retrieve entity synonyms for. If not
-- specified, the agent\'s default language is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
paetgLanguageCode :: Lens' ProjectsAgentEntityTypesGet (Maybe Text)
paetgLanguageCode
  = lens _paetgLanguageCode
      (\ s a -> s{_paetgLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetgUploadProtocol :: Lens' ProjectsAgentEntityTypesGet (Maybe Text)
paetgUploadProtocol
  = lens _paetgUploadProtocol
      (\ s a -> s{_paetgUploadProtocol = a})

-- | OAuth access token.
paetgAccessToken :: Lens' ProjectsAgentEntityTypesGet (Maybe Text)
paetgAccessToken
  = lens _paetgAccessToken
      (\ s a -> s{_paetgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetgUploadType :: Lens' ProjectsAgentEntityTypesGet (Maybe Text)
paetgUploadType
  = lens _paetgUploadType
      (\ s a -> s{_paetgUploadType = a})

-- | Required. The name of the entity type. Format:
-- \`projects\/\/agent\/entityTypes\/\`.
paetgName :: Lens' ProjectsAgentEntityTypesGet Text
paetgName
  = lens _paetgName (\ s a -> s{_paetgName = a})

-- | JSONP
paetgCallback :: Lens' ProjectsAgentEntityTypesGet (Maybe Text)
paetgCallback
  = lens _paetgCallback
      (\ s a -> s{_paetgCallback = a})

instance GoogleRequest ProjectsAgentEntityTypesGet
         where
        type Rs ProjectsAgentEntityTypesGet =
             GoogleCloudDialogflowV2EntityType
        type Scopes ProjectsAgentEntityTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentEntityTypesGet'{..}
          = go _paetgName _paetgXgafv _paetgLanguageCode
              _paetgUploadProtocol
              _paetgAccessToken
              _paetgUploadType
              _paetgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentEntityTypesGetResource)
                      mempty
