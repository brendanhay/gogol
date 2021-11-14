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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified page. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsPagesDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsPagesDelete
    , ProjectsLocationsAgentsFlowsPagesDelete

    -- * Request Lenses
    , plafpdXgafv
    , plafpdUploadProtocol
    , plafpdForce
    , plafpdAccessToken
    , plafpdUploadType
    , plafpdName
    , plafpdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.delete@ method which the
-- 'ProjectsLocationsAgentsFlowsPagesDelete' request conforms to.
type ProjectsLocationsAgentsFlowsPagesDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified page. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsPagesDelete' smart constructor.
data ProjectsLocationsAgentsFlowsPagesDelete =
  ProjectsLocationsAgentsFlowsPagesDelete'
    { _plafpdXgafv :: !(Maybe Xgafv)
    , _plafpdUploadProtocol :: !(Maybe Text)
    , _plafpdForce :: !(Maybe Bool)
    , _plafpdAccessToken :: !(Maybe Text)
    , _plafpdUploadType :: !(Maybe Text)
    , _plafpdName :: !Text
    , _plafpdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsPagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafpdXgafv'
--
-- * 'plafpdUploadProtocol'
--
-- * 'plafpdForce'
--
-- * 'plafpdAccessToken'
--
-- * 'plafpdUploadType'
--
-- * 'plafpdName'
--
-- * 'plafpdCallback'
projectsLocationsAgentsFlowsPagesDelete
    :: Text -- ^ 'plafpdName'
    -> ProjectsLocationsAgentsFlowsPagesDelete
projectsLocationsAgentsFlowsPagesDelete pPlafpdName_ =
  ProjectsLocationsAgentsFlowsPagesDelete'
    { _plafpdXgafv = Nothing
    , _plafpdUploadProtocol = Nothing
    , _plafpdForce = Nothing
    , _plafpdAccessToken = Nothing
    , _plafpdUploadType = Nothing
    , _plafpdName = pPlafpdName_
    , _plafpdCallback = Nothing
    }


-- | V1 error format.
plafpdXgafv :: Lens' ProjectsLocationsAgentsFlowsPagesDelete (Maybe Xgafv)
plafpdXgafv
  = lens _plafpdXgafv (\ s a -> s{_plafpdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafpdUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsPagesDelete (Maybe Text)
plafpdUploadProtocol
  = lens _plafpdUploadProtocol
      (\ s a -> s{_plafpdUploadProtocol = a})

-- | This field has no effect for pages with no incoming transitions. For
-- pages with incoming transitions: * If \`force\` is set to false, an
-- error will be returned with message indicating the incoming transitions.
-- * If \`force\` is set to true, Dialogflow will remove the page, as well
-- as any transitions to the page (i.e. Target page in event handlers or
-- Target page in transition routes that point to this page will be
-- cleared).
plafpdForce :: Lens' ProjectsLocationsAgentsFlowsPagesDelete (Maybe Bool)
plafpdForce
  = lens _plafpdForce (\ s a -> s{_plafpdForce = a})

-- | OAuth access token.
plafpdAccessToken :: Lens' ProjectsLocationsAgentsFlowsPagesDelete (Maybe Text)
plafpdAccessToken
  = lens _plafpdAccessToken
      (\ s a -> s{_plafpdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafpdUploadType :: Lens' ProjectsLocationsAgentsFlowsPagesDelete (Maybe Text)
plafpdUploadType
  = lens _plafpdUploadType
      (\ s a -> s{_plafpdUploadType = a})

-- | Required. The name of the page to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/Flows\/\/pages\/\`.
plafpdName :: Lens' ProjectsLocationsAgentsFlowsPagesDelete Text
plafpdName
  = lens _plafpdName (\ s a -> s{_plafpdName = a})

-- | JSONP
plafpdCallback :: Lens' ProjectsLocationsAgentsFlowsPagesDelete (Maybe Text)
plafpdCallback
  = lens _plafpdCallback
      (\ s a -> s{_plafpdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsPagesDelete
         where
        type Rs ProjectsLocationsAgentsFlowsPagesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsFlowsPagesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsPagesDelete'{..}
          = go _plafpdName _plafpdXgafv _plafpdUploadProtocol
              _plafpdForce
              _plafpdAccessToken
              _plafpdUploadType
              _plafpdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsPagesDeleteResource)
                      mempty
