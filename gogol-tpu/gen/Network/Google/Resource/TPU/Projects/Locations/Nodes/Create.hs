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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.create@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.Create
    (
    -- * REST Resource
      ProjectsLocationsNodesCreateResource

    -- * Creating a Request
    , projectsLocationsNodesCreate
    , ProjectsLocationsNodesCreate

    -- * Request Lenses
    , plncParent
    , plncXgafv
    , plncUploadProtocol
    , plncAccessToken
    , plncUploadType
    , plncPayload
    , plncNodeId
    , plncCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.create@ method which the
-- 'ProjectsLocationsNodesCreate' request conforms to.
type ProjectsLocationsNodesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "nodes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "nodeId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Node :> Post '[JSON] Operation

-- | Creates a node.
--
-- /See:/ 'projectsLocationsNodesCreate' smart constructor.
data ProjectsLocationsNodesCreate =
  ProjectsLocationsNodesCreate'
    { _plncParent         :: !Text
    , _plncXgafv          :: !(Maybe Xgafv)
    , _plncUploadProtocol :: !(Maybe Text)
    , _plncAccessToken    :: !(Maybe Text)
    , _plncUploadType     :: !(Maybe Text)
    , _plncPayload        :: !Node
    , _plncNodeId         :: !(Maybe Text)
    , _plncCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsNodesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plncParent'
--
-- * 'plncXgafv'
--
-- * 'plncUploadProtocol'
--
-- * 'plncAccessToken'
--
-- * 'plncUploadType'
--
-- * 'plncPayload'
--
-- * 'plncNodeId'
--
-- * 'plncCallback'
projectsLocationsNodesCreate
    :: Text -- ^ 'plncParent'
    -> Node -- ^ 'plncPayload'
    -> ProjectsLocationsNodesCreate
projectsLocationsNodesCreate pPlncParent_ pPlncPayload_ =
  ProjectsLocationsNodesCreate'
    { _plncParent = pPlncParent_
    , _plncXgafv = Nothing
    , _plncUploadProtocol = Nothing
    , _plncAccessToken = Nothing
    , _plncUploadType = Nothing
    , _plncPayload = pPlncPayload_
    , _plncNodeId = Nothing
    , _plncCallback = Nothing
    }


-- | The parent resource name.
plncParent :: Lens' ProjectsLocationsNodesCreate Text
plncParent
  = lens _plncParent (\ s a -> s{_plncParent = a})

-- | V1 error format.
plncXgafv :: Lens' ProjectsLocationsNodesCreate (Maybe Xgafv)
plncXgafv
  = lens _plncXgafv (\ s a -> s{_plncXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plncUploadProtocol :: Lens' ProjectsLocationsNodesCreate (Maybe Text)
plncUploadProtocol
  = lens _plncUploadProtocol
      (\ s a -> s{_plncUploadProtocol = a})

-- | OAuth access token.
plncAccessToken :: Lens' ProjectsLocationsNodesCreate (Maybe Text)
plncAccessToken
  = lens _plncAccessToken
      (\ s a -> s{_plncAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plncUploadType :: Lens' ProjectsLocationsNodesCreate (Maybe Text)
plncUploadType
  = lens _plncUploadType
      (\ s a -> s{_plncUploadType = a})

-- | Multipart request metadata.
plncPayload :: Lens' ProjectsLocationsNodesCreate Node
plncPayload
  = lens _plncPayload (\ s a -> s{_plncPayload = a})

-- | The unqualified resource name.
plncNodeId :: Lens' ProjectsLocationsNodesCreate (Maybe Text)
plncNodeId
  = lens _plncNodeId (\ s a -> s{_plncNodeId = a})

-- | JSONP
plncCallback :: Lens' ProjectsLocationsNodesCreate (Maybe Text)
plncCallback
  = lens _plncCallback (\ s a -> s{_plncCallback = a})

instance GoogleRequest ProjectsLocationsNodesCreate
         where
        type Rs ProjectsLocationsNodesCreate = Operation
        type Scopes ProjectsLocationsNodesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesCreate'{..}
          = go _plncParent _plncXgafv _plncUploadProtocol
              _plncAccessToken
              _plncUploadType
              _plncNodeId
              _plncCallback
              (Just AltJSON)
              _plncPayload
              tPUService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsNodesCreateResource)
                      mempty
