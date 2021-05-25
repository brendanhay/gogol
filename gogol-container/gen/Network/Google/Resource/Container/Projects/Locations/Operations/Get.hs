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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.operations.get@.
module Network.Google.Resource.Container.Projects.Locations.Operations.Get
    (
    -- * REST Resource
      ProjectsLocationsOperationsGetResource

    -- * Creating a Request
    , projectsLocationsOperationsGet
    , ProjectsLocationsOperationsGet

    -- * Request Lenses
    , plogXgafv
    , plogUploadProtocol
    , plogAccessToken
    , plogUploadType
    , plogZone
    , plogName
    , plogProjectId
    , plogOperationId
    , plogCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.operations.get@ method which the
-- 'ProjectsLocationsOperationsGet' request conforms to.
type ProjectsLocationsOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "zone" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "operationId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the specified operation.
--
-- /See:/ 'projectsLocationsOperationsGet' smart constructor.
data ProjectsLocationsOperationsGet =
  ProjectsLocationsOperationsGet'
    { _plogXgafv :: !(Maybe Xgafv)
    , _plogUploadProtocol :: !(Maybe Text)
    , _plogAccessToken :: !(Maybe Text)
    , _plogUploadType :: !(Maybe Text)
    , _plogZone :: !(Maybe Text)
    , _plogName :: !Text
    , _plogProjectId :: !(Maybe Text)
    , _plogOperationId :: !(Maybe Text)
    , _plogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plogXgafv'
--
-- * 'plogUploadProtocol'
--
-- * 'plogAccessToken'
--
-- * 'plogUploadType'
--
-- * 'plogZone'
--
-- * 'plogName'
--
-- * 'plogProjectId'
--
-- * 'plogOperationId'
--
-- * 'plogCallback'
projectsLocationsOperationsGet
    :: Text -- ^ 'plogName'
    -> ProjectsLocationsOperationsGet
projectsLocationsOperationsGet pPlogName_ =
  ProjectsLocationsOperationsGet'
    { _plogXgafv = Nothing
    , _plogUploadProtocol = Nothing
    , _plogAccessToken = Nothing
    , _plogUploadType = Nothing
    , _plogZone = Nothing
    , _plogName = pPlogName_
    , _plogProjectId = Nothing
    , _plogOperationId = Nothing
    , _plogCallback = Nothing
    }


-- | V1 error format.
plogXgafv :: Lens' ProjectsLocationsOperationsGet (Maybe Xgafv)
plogXgafv
  = lens _plogXgafv (\ s a -> s{_plogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plogUploadProtocol :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogUploadProtocol
  = lens _plogUploadProtocol
      (\ s a -> s{_plogUploadProtocol = a})

-- | OAuth access token.
plogAccessToken :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogAccessToken
  = lens _plogAccessToken
      (\ s a -> s{_plogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plogUploadType :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogUploadType
  = lens _plogUploadType
      (\ s a -> s{_plogUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
plogZone :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogZone = lens _plogZone (\ s a -> s{_plogZone = a})

-- | The name (project, location, operation id) of the operation to get.
-- Specified in the format \`projects\/*\/locations\/*\/operations\/*\`.
plogName :: Lens' ProjectsLocationsOperationsGet Text
plogName = lens _plogName (\ s a -> s{_plogName = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
plogProjectId :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogProjectId
  = lens _plogProjectId
      (\ s a -> s{_plogProjectId = a})

-- | Deprecated. The server-assigned \`name\` of the operation. This field
-- has been deprecated and replaced by the name field.
plogOperationId :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogOperationId
  = lens _plogOperationId
      (\ s a -> s{_plogOperationId = a})

-- | JSONP
plogCallback :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogCallback
  = lens _plogCallback (\ s a -> s{_plogCallback = a})

instance GoogleRequest ProjectsLocationsOperationsGet
         where
        type Rs ProjectsLocationsOperationsGet = Operation
        type Scopes ProjectsLocationsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsOperationsGet'{..}
          = go _plogName _plogXgafv _plogUploadProtocol
              _plogAccessToken
              _plogUploadType
              _plogZone
              _plogProjectId
              _plogOperationId
              _plogCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsGetResource)
                      mempty
