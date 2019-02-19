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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Operations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.operations.cancel@.
module Network.Google.Resource.Container.Projects.Zones.Operations.Cancel
    (
    -- * REST Resource
      ProjectsZonesOperationsCancelResource

    -- * Creating a Request
    , projectsZonesOperationsCancel
    , ProjectsZonesOperationsCancel

    -- * Request Lenses
    , pzocXgafv
    , pzocUploadProtocol
    , pzocAccessToken
    , pzocUploadType
    , pzocZone
    , pzocPayload
    , pzocProjectId
    , pzocOperationId
    , pzocCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.operations.cancel@ method which the
-- 'ProjectsZonesOperationsCancel' request conforms to.
type ProjectsZonesOperationsCancelResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "operations" :>
                 CaptureMode "operationId" "cancel" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CancelOperationRequest :>
                                 Post '[JSON] Empty

-- | Cancels the specified operation.
--
-- /See:/ 'projectsZonesOperationsCancel' smart constructor.
data ProjectsZonesOperationsCancel =
  ProjectsZonesOperationsCancel'
    { _pzocXgafv          :: !(Maybe Xgafv)
    , _pzocUploadProtocol :: !(Maybe Text)
    , _pzocAccessToken    :: !(Maybe Text)
    , _pzocUploadType     :: !(Maybe Text)
    , _pzocZone           :: !Text
    , _pzocPayload        :: !CancelOperationRequest
    , _pzocProjectId      :: !Text
    , _pzocOperationId    :: !Text
    , _pzocCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzocXgafv'
--
-- * 'pzocUploadProtocol'
--
-- * 'pzocAccessToken'
--
-- * 'pzocUploadType'
--
-- * 'pzocZone'
--
-- * 'pzocPayload'
--
-- * 'pzocProjectId'
--
-- * 'pzocOperationId'
--
-- * 'pzocCallback'
projectsZonesOperationsCancel
    :: Text -- ^ 'pzocZone'
    -> CancelOperationRequest -- ^ 'pzocPayload'
    -> Text -- ^ 'pzocProjectId'
    -> Text -- ^ 'pzocOperationId'
    -> ProjectsZonesOperationsCancel
projectsZonesOperationsCancel pPzocZone_ pPzocPayload_ pPzocProjectId_ pPzocOperationId_ =
  ProjectsZonesOperationsCancel'
    { _pzocXgafv = Nothing
    , _pzocUploadProtocol = Nothing
    , _pzocAccessToken = Nothing
    , _pzocUploadType = Nothing
    , _pzocZone = pPzocZone_
    , _pzocPayload = pPzocPayload_
    , _pzocProjectId = pPzocProjectId_
    , _pzocOperationId = pPzocOperationId_
    , _pzocCallback = Nothing
    }


-- | V1 error format.
pzocXgafv :: Lens' ProjectsZonesOperationsCancel (Maybe Xgafv)
pzocXgafv
  = lens _pzocXgafv (\ s a -> s{_pzocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzocUploadProtocol :: Lens' ProjectsZonesOperationsCancel (Maybe Text)
pzocUploadProtocol
  = lens _pzocUploadProtocol
      (\ s a -> s{_pzocUploadProtocol = a})

-- | OAuth access token.
pzocAccessToken :: Lens' ProjectsZonesOperationsCancel (Maybe Text)
pzocAccessToken
  = lens _pzocAccessToken
      (\ s a -> s{_pzocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzocUploadType :: Lens' ProjectsZonesOperationsCancel (Maybe Text)
pzocUploadType
  = lens _pzocUploadType
      (\ s a -> s{_pzocUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the operation resides.
-- This field has been deprecated and replaced by the name field.
pzocZone :: Lens' ProjectsZonesOperationsCancel Text
pzocZone = lens _pzocZone (\ s a -> s{_pzocZone = a})

-- | Multipart request metadata.
pzocPayload :: Lens' ProjectsZonesOperationsCancel CancelOperationRequest
pzocPayload
  = lens _pzocPayload (\ s a -> s{_pzocPayload = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzocProjectId :: Lens' ProjectsZonesOperationsCancel Text
pzocProjectId
  = lens _pzocProjectId
      (\ s a -> s{_pzocProjectId = a})

-- | Deprecated. The server-assigned \`name\` of the operation. This field
-- has been deprecated and replaced by the name field.
pzocOperationId :: Lens' ProjectsZonesOperationsCancel Text
pzocOperationId
  = lens _pzocOperationId
      (\ s a -> s{_pzocOperationId = a})

-- | JSONP
pzocCallback :: Lens' ProjectsZonesOperationsCancel (Maybe Text)
pzocCallback
  = lens _pzocCallback (\ s a -> s{_pzocCallback = a})

instance GoogleRequest ProjectsZonesOperationsCancel
         where
        type Rs ProjectsZonesOperationsCancel = Empty
        type Scopes ProjectsZonesOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesOperationsCancel'{..}
          = go _pzocProjectId _pzocZone _pzocOperationId
              _pzocXgafv
              _pzocUploadProtocol
              _pzocAccessToken
              _pzocUploadType
              _pzocCallback
              (Just AltJSON)
              _pzocPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesOperationsCancelResource)
                      mempty
