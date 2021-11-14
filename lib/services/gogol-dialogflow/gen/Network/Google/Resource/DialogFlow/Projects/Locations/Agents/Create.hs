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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an agent in the specified location. Note: You should always
-- train flows prior to sending them queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsCreate
    , ProjectsLocationsAgentsCreate

    -- * Request Lenses
    , placParent
    , placXgafv
    , placUploadProtocol
    , placAccessToken
    , placUploadType
    , placPayload
    , placCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.create@ method which the
-- 'ProjectsLocationsAgentsCreate' request conforms to.
type ProjectsLocationsAgentsCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "agents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Agent :>
                         Post '[JSON] GoogleCloudDialogflowCxV3Agent

-- | Creates an agent in the specified location. Note: You should always
-- train flows prior to sending them queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsCreate' smart constructor.
data ProjectsLocationsAgentsCreate =
  ProjectsLocationsAgentsCreate'
    { _placParent :: !Text
    , _placXgafv :: !(Maybe Xgafv)
    , _placUploadProtocol :: !(Maybe Text)
    , _placAccessToken :: !(Maybe Text)
    , _placUploadType :: !(Maybe Text)
    , _placPayload :: !GoogleCloudDialogflowCxV3Agent
    , _placCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'placParent'
--
-- * 'placXgafv'
--
-- * 'placUploadProtocol'
--
-- * 'placAccessToken'
--
-- * 'placUploadType'
--
-- * 'placPayload'
--
-- * 'placCallback'
projectsLocationsAgentsCreate
    :: Text -- ^ 'placParent'
    -> GoogleCloudDialogflowCxV3Agent -- ^ 'placPayload'
    -> ProjectsLocationsAgentsCreate
projectsLocationsAgentsCreate pPlacParent_ pPlacPayload_ =
  ProjectsLocationsAgentsCreate'
    { _placParent = pPlacParent_
    , _placXgafv = Nothing
    , _placUploadProtocol = Nothing
    , _placAccessToken = Nothing
    , _placUploadType = Nothing
    , _placPayload = pPlacPayload_
    , _placCallback = Nothing
    }


-- | Required. The location to create a agent for. Format:
-- \`projects\/\/locations\/\`.
placParent :: Lens' ProjectsLocationsAgentsCreate Text
placParent
  = lens _placParent (\ s a -> s{_placParent = a})

-- | V1 error format.
placXgafv :: Lens' ProjectsLocationsAgentsCreate (Maybe Xgafv)
placXgafv
  = lens _placXgafv (\ s a -> s{_placXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
placUploadProtocol :: Lens' ProjectsLocationsAgentsCreate (Maybe Text)
placUploadProtocol
  = lens _placUploadProtocol
      (\ s a -> s{_placUploadProtocol = a})

-- | OAuth access token.
placAccessToken :: Lens' ProjectsLocationsAgentsCreate (Maybe Text)
placAccessToken
  = lens _placAccessToken
      (\ s a -> s{_placAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
placUploadType :: Lens' ProjectsLocationsAgentsCreate (Maybe Text)
placUploadType
  = lens _placUploadType
      (\ s a -> s{_placUploadType = a})

-- | Multipart request metadata.
placPayload :: Lens' ProjectsLocationsAgentsCreate GoogleCloudDialogflowCxV3Agent
placPayload
  = lens _placPayload (\ s a -> s{_placPayload = a})

-- | JSONP
placCallback :: Lens' ProjectsLocationsAgentsCreate (Maybe Text)
placCallback
  = lens _placCallback (\ s a -> s{_placCallback = a})

instance GoogleRequest ProjectsLocationsAgentsCreate
         where
        type Rs ProjectsLocationsAgentsCreate =
             GoogleCloudDialogflowCxV3Agent
        type Scopes ProjectsLocationsAgentsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsCreate'{..}
          = go _placParent _placXgafv _placUploadProtocol
              _placAccessToken
              _placUploadType
              _placCallback
              (Just AltJSON)
              _placPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsCreateResource)
                      mempty
