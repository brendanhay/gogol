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
-- Module      : Network.Google.Resource.DialogFlow.Projects.GetAgent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.getAgent@.
module Network.Google.Resource.DialogFlow.Projects.GetAgent
    (
    -- * REST Resource
      ProjectsGetAgentResource

    -- * Creating a Request
    , projectsGetAgent
    , ProjectsGetAgent

    -- * Request Lenses
    , pgaParent
    , pgaXgafv
    , pgaUploadProtocol
    , pgaAccessToken
    , pgaUploadType
    , pgaCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.getAgent@ method which the
-- 'ProjectsGetAgent' request conforms to.
type ProjectsGetAgentResource =
     "v2" :>
       Capture "parent" Text :>
         "agent" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudDialogflowV2Agent

-- | Retrieves the specified agent.
--
-- /See:/ 'projectsGetAgent' smart constructor.
data ProjectsGetAgent =
  ProjectsGetAgent'
    { _pgaParent         :: !Text
    , _pgaXgafv          :: !(Maybe Xgafv)
    , _pgaUploadProtocol :: !(Maybe Text)
    , _pgaAccessToken    :: !(Maybe Text)
    , _pgaUploadType     :: !(Maybe Text)
    , _pgaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetAgent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgaParent'
--
-- * 'pgaXgafv'
--
-- * 'pgaUploadProtocol'
--
-- * 'pgaAccessToken'
--
-- * 'pgaUploadType'
--
-- * 'pgaCallback'
projectsGetAgent
    :: Text -- ^ 'pgaParent'
    -> ProjectsGetAgent
projectsGetAgent pPgaParent_ =
  ProjectsGetAgent'
    { _pgaParent = pPgaParent_
    , _pgaXgafv = Nothing
    , _pgaUploadProtocol = Nothing
    , _pgaAccessToken = Nothing
    , _pgaUploadType = Nothing
    , _pgaCallback = Nothing
    }


-- | Required. The project that the agent to fetch is associated with.
-- Format: \`projects\/\`.
pgaParent :: Lens' ProjectsGetAgent Text
pgaParent
  = lens _pgaParent (\ s a -> s{_pgaParent = a})

-- | V1 error format.
pgaXgafv :: Lens' ProjectsGetAgent (Maybe Xgafv)
pgaXgafv = lens _pgaXgafv (\ s a -> s{_pgaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgaUploadProtocol :: Lens' ProjectsGetAgent (Maybe Text)
pgaUploadProtocol
  = lens _pgaUploadProtocol
      (\ s a -> s{_pgaUploadProtocol = a})

-- | OAuth access token.
pgaAccessToken :: Lens' ProjectsGetAgent (Maybe Text)
pgaAccessToken
  = lens _pgaAccessToken
      (\ s a -> s{_pgaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgaUploadType :: Lens' ProjectsGetAgent (Maybe Text)
pgaUploadType
  = lens _pgaUploadType
      (\ s a -> s{_pgaUploadType = a})

-- | JSONP
pgaCallback :: Lens' ProjectsGetAgent (Maybe Text)
pgaCallback
  = lens _pgaCallback (\ s a -> s{_pgaCallback = a})

instance GoogleRequest ProjectsGetAgent where
        type Rs ProjectsGetAgent =
             GoogleCloudDialogflowV2Agent
        type Scopes ProjectsGetAgent =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsGetAgent'{..}
          = go _pgaParent _pgaXgafv _pgaUploadProtocol
              _pgaAccessToken
              _pgaUploadType
              _pgaCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetAgentResource)
                      mempty
