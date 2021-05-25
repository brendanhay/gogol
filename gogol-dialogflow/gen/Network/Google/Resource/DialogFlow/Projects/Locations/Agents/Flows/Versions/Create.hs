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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Version in the specified Flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsVersionsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsVersionsCreate
    , ProjectsLocationsAgentsFlowsVersionsCreate

    -- * Request Lenses
    , plafvcParent
    , plafvcXgafv
    , plafvcUploadProtocol
    , plafvcAccessToken
    , plafvcUploadType
    , plafvcPayload
    , plafvcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.create@ method which the
-- 'ProjectsLocationsAgentsFlowsVersionsCreate' request conforms to.
type ProjectsLocationsAgentsFlowsVersionsCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Version :>
                         Post '[JSON] GoogleLongrunningOperation

-- | Creates a Version in the specified Flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsVersionsCreate' smart constructor.
data ProjectsLocationsAgentsFlowsVersionsCreate =
  ProjectsLocationsAgentsFlowsVersionsCreate'
    { _plafvcParent :: !Text
    , _plafvcXgafv :: !(Maybe Xgafv)
    , _plafvcUploadProtocol :: !(Maybe Text)
    , _plafvcAccessToken :: !(Maybe Text)
    , _plafvcUploadType :: !(Maybe Text)
    , _plafvcPayload :: !GoogleCloudDialogflowCxV3Version
    , _plafvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafvcParent'
--
-- * 'plafvcXgafv'
--
-- * 'plafvcUploadProtocol'
--
-- * 'plafvcAccessToken'
--
-- * 'plafvcUploadType'
--
-- * 'plafvcPayload'
--
-- * 'plafvcCallback'
projectsLocationsAgentsFlowsVersionsCreate
    :: Text -- ^ 'plafvcParent'
    -> GoogleCloudDialogflowCxV3Version -- ^ 'plafvcPayload'
    -> ProjectsLocationsAgentsFlowsVersionsCreate
projectsLocationsAgentsFlowsVersionsCreate pPlafvcParent_ pPlafvcPayload_ =
  ProjectsLocationsAgentsFlowsVersionsCreate'
    { _plafvcParent = pPlafvcParent_
    , _plafvcXgafv = Nothing
    , _plafvcUploadProtocol = Nothing
    , _plafvcAccessToken = Nothing
    , _plafvcUploadType = Nothing
    , _plafvcPayload = pPlafvcPayload_
    , _plafvcCallback = Nothing
    }


-- | Required. The Flow to create an Version for. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafvcParent :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate Text
plafvcParent
  = lens _plafvcParent (\ s a -> s{_plafvcParent = a})

-- | V1 error format.
plafvcXgafv :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate (Maybe Xgafv)
plafvcXgafv
  = lens _plafvcXgafv (\ s a -> s{_plafvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafvcUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate (Maybe Text)
plafvcUploadProtocol
  = lens _plafvcUploadProtocol
      (\ s a -> s{_plafvcUploadProtocol = a})

-- | OAuth access token.
plafvcAccessToken :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate (Maybe Text)
plafvcAccessToken
  = lens _plafvcAccessToken
      (\ s a -> s{_plafvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafvcUploadType :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate (Maybe Text)
plafvcUploadType
  = lens _plafvcUploadType
      (\ s a -> s{_plafvcUploadType = a})

-- | Multipart request metadata.
plafvcPayload :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate GoogleCloudDialogflowCxV3Version
plafvcPayload
  = lens _plafvcPayload
      (\ s a -> s{_plafvcPayload = a})

-- | JSONP
plafvcCallback :: Lens' ProjectsLocationsAgentsFlowsVersionsCreate (Maybe Text)
plafvcCallback
  = lens _plafvcCallback
      (\ s a -> s{_plafvcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsVersionsCreate
         where
        type Rs ProjectsLocationsAgentsFlowsVersionsCreate =
             GoogleLongrunningOperation
        type Scopes
               ProjectsLocationsAgentsFlowsVersionsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsVersionsCreate'{..}
          = go _plafvcParent _plafvcXgafv _plafvcUploadProtocol
              _plafvcAccessToken
              _plafvcUploadType
              _plafvcCallback
              (Just AltJSON)
              _plafvcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsVersionsCreateResource)
                      mempty
