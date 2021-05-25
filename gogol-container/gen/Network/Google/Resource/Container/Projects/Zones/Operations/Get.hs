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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.operations.get@.
module Network.Google.Resource.Container.Projects.Zones.Operations.Get
    (
    -- * REST Resource
      ProjectsZonesOperationsGetResource

    -- * Creating a Request
    , projectsZonesOperationsGet
    , ProjectsZonesOperationsGet

    -- * Request Lenses
    , pzogXgafv
    , pzogUploadProtocol
    , pzogAccessToken
    , pzogUploadType
    , pzogZone
    , pzogName
    , pzogProjectId
    , pzogOperationId
    , pzogCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.zones.operations.get@ method which the
-- 'ProjectsZonesOperationsGet' request conforms to.
type ProjectsZonesOperationsGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "operations" :>
                 Capture "operationId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "name" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the specified operation.
--
-- /See:/ 'projectsZonesOperationsGet' smart constructor.
data ProjectsZonesOperationsGet =
  ProjectsZonesOperationsGet'
    { _pzogXgafv :: !(Maybe Xgafv)
    , _pzogUploadProtocol :: !(Maybe Text)
    , _pzogAccessToken :: !(Maybe Text)
    , _pzogUploadType :: !(Maybe Text)
    , _pzogZone :: !Text
    , _pzogName :: !(Maybe Text)
    , _pzogProjectId :: !Text
    , _pzogOperationId :: !Text
    , _pzogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzogXgafv'
--
-- * 'pzogUploadProtocol'
--
-- * 'pzogAccessToken'
--
-- * 'pzogUploadType'
--
-- * 'pzogZone'
--
-- * 'pzogName'
--
-- * 'pzogProjectId'
--
-- * 'pzogOperationId'
--
-- * 'pzogCallback'
projectsZonesOperationsGet
    :: Text -- ^ 'pzogZone'
    -> Text -- ^ 'pzogProjectId'
    -> Text -- ^ 'pzogOperationId'
    -> ProjectsZonesOperationsGet
projectsZonesOperationsGet pPzogZone_ pPzogProjectId_ pPzogOperationId_ =
  ProjectsZonesOperationsGet'
    { _pzogXgafv = Nothing
    , _pzogUploadProtocol = Nothing
    , _pzogAccessToken = Nothing
    , _pzogUploadType = Nothing
    , _pzogZone = pPzogZone_
    , _pzogName = Nothing
    , _pzogProjectId = pPzogProjectId_
    , _pzogOperationId = pPzogOperationId_
    , _pzogCallback = Nothing
    }


-- | V1 error format.
pzogXgafv :: Lens' ProjectsZonesOperationsGet (Maybe Xgafv)
pzogXgafv
  = lens _pzogXgafv (\ s a -> s{_pzogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzogUploadProtocol :: Lens' ProjectsZonesOperationsGet (Maybe Text)
pzogUploadProtocol
  = lens _pzogUploadProtocol
      (\ s a -> s{_pzogUploadProtocol = a})

-- | OAuth access token.
pzogAccessToken :: Lens' ProjectsZonesOperationsGet (Maybe Text)
pzogAccessToken
  = lens _pzogAccessToken
      (\ s a -> s{_pzogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzogUploadType :: Lens' ProjectsZonesOperationsGet (Maybe Text)
pzogUploadType
  = lens _pzogUploadType
      (\ s a -> s{_pzogUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
pzogZone :: Lens' ProjectsZonesOperationsGet Text
pzogZone = lens _pzogZone (\ s a -> s{_pzogZone = a})

-- | The name (project, location, operation id) of the operation to get.
-- Specified in the format \`projects\/*\/locations\/*\/operations\/*\`.
pzogName :: Lens' ProjectsZonesOperationsGet (Maybe Text)
pzogName = lens _pzogName (\ s a -> s{_pzogName = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzogProjectId :: Lens' ProjectsZonesOperationsGet Text
pzogProjectId
  = lens _pzogProjectId
      (\ s a -> s{_pzogProjectId = a})

-- | Deprecated. The server-assigned \`name\` of the operation. This field
-- has been deprecated and replaced by the name field.
pzogOperationId :: Lens' ProjectsZonesOperationsGet Text
pzogOperationId
  = lens _pzogOperationId
      (\ s a -> s{_pzogOperationId = a})

-- | JSONP
pzogCallback :: Lens' ProjectsZonesOperationsGet (Maybe Text)
pzogCallback
  = lens _pzogCallback (\ s a -> s{_pzogCallback = a})

instance GoogleRequest ProjectsZonesOperationsGet
         where
        type Rs ProjectsZonesOperationsGet = Operation
        type Scopes ProjectsZonesOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesOperationsGet'{..}
          = go _pzogProjectId _pzogZone _pzogOperationId
              _pzogXgafv
              _pzogUploadProtocol
              _pzogAccessToken
              _pzogUploadType
              _pzogName
              _pzogCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesOperationsGetResource)
                      mempty
