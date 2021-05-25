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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsDelete
    , ProjectsLocationsAgentsDelete

    -- * Request Lenses
    , pladXgafv
    , pladUploadProtocol
    , pladAccessToken
    , pladUploadType
    , pladName
    , pladCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.delete@ method which the
-- 'ProjectsLocationsAgentsDelete' request conforms to.
type ProjectsLocationsAgentsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified agent.
--
-- /See:/ 'projectsLocationsAgentsDelete' smart constructor.
data ProjectsLocationsAgentsDelete =
  ProjectsLocationsAgentsDelete'
    { _pladXgafv :: !(Maybe Xgafv)
    , _pladUploadProtocol :: !(Maybe Text)
    , _pladAccessToken :: !(Maybe Text)
    , _pladUploadType :: !(Maybe Text)
    , _pladName :: !Text
    , _pladCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pladXgafv'
--
-- * 'pladUploadProtocol'
--
-- * 'pladAccessToken'
--
-- * 'pladUploadType'
--
-- * 'pladName'
--
-- * 'pladCallback'
projectsLocationsAgentsDelete
    :: Text -- ^ 'pladName'
    -> ProjectsLocationsAgentsDelete
projectsLocationsAgentsDelete pPladName_ =
  ProjectsLocationsAgentsDelete'
    { _pladXgafv = Nothing
    , _pladUploadProtocol = Nothing
    , _pladAccessToken = Nothing
    , _pladUploadType = Nothing
    , _pladName = pPladName_
    , _pladCallback = Nothing
    }


-- | V1 error format.
pladXgafv :: Lens' ProjectsLocationsAgentsDelete (Maybe Xgafv)
pladXgafv
  = lens _pladXgafv (\ s a -> s{_pladXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pladUploadProtocol :: Lens' ProjectsLocationsAgentsDelete (Maybe Text)
pladUploadProtocol
  = lens _pladUploadProtocol
      (\ s a -> s{_pladUploadProtocol = a})

-- | OAuth access token.
pladAccessToken :: Lens' ProjectsLocationsAgentsDelete (Maybe Text)
pladAccessToken
  = lens _pladAccessToken
      (\ s a -> s{_pladAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pladUploadType :: Lens' ProjectsLocationsAgentsDelete (Maybe Text)
pladUploadType
  = lens _pladUploadType
      (\ s a -> s{_pladUploadType = a})

-- | Required. The name of the agent to delete. Format:
-- \`projects\/\/locations\/\/agents\/\`.
pladName :: Lens' ProjectsLocationsAgentsDelete Text
pladName = lens _pladName (\ s a -> s{_pladName = a})

-- | JSONP
pladCallback :: Lens' ProjectsLocationsAgentsDelete (Maybe Text)
pladCallback
  = lens _pladCallback (\ s a -> s{_pladCallback = a})

instance GoogleRequest ProjectsLocationsAgentsDelete
         where
        type Rs ProjectsLocationsAgentsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsDelete'{..}
          = go _pladName _pladXgafv _pladUploadProtocol
              _pladAccessToken
              _pladUploadType
              _pladCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsDeleteResource)
                      mempty
