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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified intent. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Intents.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsIntentsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsIntentsDelete
    , ProjectsLocationsAgentsIntentsDelete

    -- * Request Lenses
    , plaidXgafv
    , plaidUploadProtocol
    , plaidAccessToken
    , plaidUploadType
    , plaidName
    , plaidCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.intents.delete@ method which the
-- 'ProjectsLocationsAgentsIntentsDelete' request conforms to.
type ProjectsLocationsAgentsIntentsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified intent. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsIntentsDelete' smart constructor.
data ProjectsLocationsAgentsIntentsDelete =
  ProjectsLocationsAgentsIntentsDelete'
    { _plaidXgafv :: !(Maybe Xgafv)
    , _plaidUploadProtocol :: !(Maybe Text)
    , _plaidAccessToken :: !(Maybe Text)
    , _plaidUploadType :: !(Maybe Text)
    , _plaidName :: !Text
    , _plaidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsIntentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaidXgafv'
--
-- * 'plaidUploadProtocol'
--
-- * 'plaidAccessToken'
--
-- * 'plaidUploadType'
--
-- * 'plaidName'
--
-- * 'plaidCallback'
projectsLocationsAgentsIntentsDelete
    :: Text -- ^ 'plaidName'
    -> ProjectsLocationsAgentsIntentsDelete
projectsLocationsAgentsIntentsDelete pPlaidName_ =
  ProjectsLocationsAgentsIntentsDelete'
    { _plaidXgafv = Nothing
    , _plaidUploadProtocol = Nothing
    , _plaidAccessToken = Nothing
    , _plaidUploadType = Nothing
    , _plaidName = pPlaidName_
    , _plaidCallback = Nothing
    }


-- | V1 error format.
plaidXgafv :: Lens' ProjectsLocationsAgentsIntentsDelete (Maybe Xgafv)
plaidXgafv
  = lens _plaidXgafv (\ s a -> s{_plaidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaidUploadProtocol :: Lens' ProjectsLocationsAgentsIntentsDelete (Maybe Text)
plaidUploadProtocol
  = lens _plaidUploadProtocol
      (\ s a -> s{_plaidUploadProtocol = a})

-- | OAuth access token.
plaidAccessToken :: Lens' ProjectsLocationsAgentsIntentsDelete (Maybe Text)
plaidAccessToken
  = lens _plaidAccessToken
      (\ s a -> s{_plaidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaidUploadType :: Lens' ProjectsLocationsAgentsIntentsDelete (Maybe Text)
plaidUploadType
  = lens _plaidUploadType
      (\ s a -> s{_plaidUploadType = a})

-- | Required. The name of the intent to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/intents\/\`.
plaidName :: Lens' ProjectsLocationsAgentsIntentsDelete Text
plaidName
  = lens _plaidName (\ s a -> s{_plaidName = a})

-- | JSONP
plaidCallback :: Lens' ProjectsLocationsAgentsIntentsDelete (Maybe Text)
plaidCallback
  = lens _plaidCallback
      (\ s a -> s{_plaidCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsIntentsDelete
         where
        type Rs ProjectsLocationsAgentsIntentsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsIntentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsIntentsDelete'{..}
          = go _plaidName _plaidXgafv _plaidUploadProtocol
              _plaidAccessToken
              _plaidUploadType
              _plaidCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsIntentsDeleteResource)
                      mempty
