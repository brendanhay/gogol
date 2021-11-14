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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Rollouts.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new service configuration rollout. Based on rollout, the
-- Google Service Management will roll out the service configurations to
-- different backend services. For example, the logging configuration will
-- be pushed to Google Cloud Logging. Please note that any previous pending
-- and running Rollouts and associated Operations will be automatically
-- cancelled so that the latest Rollout will not be blocked by previous
-- Rollouts. Only the 100 most recent (in any state) and the last 10
-- successful (if not already part of the set of 100 most recent) rollouts
-- are kept for each service. The rest will be deleted eventually.
-- Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.rollouts.create@.
module Network.Google.Resource.ServiceManagement.Services.Rollouts.Create
    (
    -- * REST Resource
      ServicesRolloutsCreateResource

    -- * Creating a Request
    , servicesRolloutsCreate
    , ServicesRolloutsCreate

    -- * Request Lenses
    , srcXgafv
    , srcUploadProtocol
    , srcAccessToken
    , srcUploadType
    , srcPayload
    , srcServiceName
    , srcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.rollouts.create@ method which the
-- 'ServicesRolloutsCreate' request conforms to.
type ServicesRolloutsCreateResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "rollouts" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Rollout :> Post '[JSON] Operation

-- | Creates a new service configuration rollout. Based on rollout, the
-- Google Service Management will roll out the service configurations to
-- different backend services. For example, the logging configuration will
-- be pushed to Google Cloud Logging. Please note that any previous pending
-- and running Rollouts and associated Operations will be automatically
-- cancelled so that the latest Rollout will not be blocked by previous
-- Rollouts. Only the 100 most recent (in any state) and the last 10
-- successful (if not already part of the set of 100 most recent) rollouts
-- are kept for each service. The rest will be deleted eventually.
-- Operation
--
-- /See:/ 'servicesRolloutsCreate' smart constructor.
data ServicesRolloutsCreate =
  ServicesRolloutsCreate'
    { _srcXgafv :: !(Maybe Xgafv)
    , _srcUploadProtocol :: !(Maybe Text)
    , _srcAccessToken :: !(Maybe Text)
    , _srcUploadType :: !(Maybe Text)
    , _srcPayload :: !Rollout
    , _srcServiceName :: !Text
    , _srcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesRolloutsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcXgafv'
--
-- * 'srcUploadProtocol'
--
-- * 'srcAccessToken'
--
-- * 'srcUploadType'
--
-- * 'srcPayload'
--
-- * 'srcServiceName'
--
-- * 'srcCallback'
servicesRolloutsCreate
    :: Rollout -- ^ 'srcPayload'
    -> Text -- ^ 'srcServiceName'
    -> ServicesRolloutsCreate
servicesRolloutsCreate pSrcPayload_ pSrcServiceName_ =
  ServicesRolloutsCreate'
    { _srcXgafv = Nothing
    , _srcUploadProtocol = Nothing
    , _srcAccessToken = Nothing
    , _srcUploadType = Nothing
    , _srcPayload = pSrcPayload_
    , _srcServiceName = pSrcServiceName_
    , _srcCallback = Nothing
    }


-- | V1 error format.
srcXgafv :: Lens' ServicesRolloutsCreate (Maybe Xgafv)
srcXgafv = lens _srcXgafv (\ s a -> s{_srcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srcUploadProtocol :: Lens' ServicesRolloutsCreate (Maybe Text)
srcUploadProtocol
  = lens _srcUploadProtocol
      (\ s a -> s{_srcUploadProtocol = a})

-- | OAuth access token.
srcAccessToken :: Lens' ServicesRolloutsCreate (Maybe Text)
srcAccessToken
  = lens _srcAccessToken
      (\ s a -> s{_srcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srcUploadType :: Lens' ServicesRolloutsCreate (Maybe Text)
srcUploadType
  = lens _srcUploadType
      (\ s a -> s{_srcUploadType = a})

-- | Multipart request metadata.
srcPayload :: Lens' ServicesRolloutsCreate Rollout
srcPayload
  = lens _srcPayload (\ s a -> s{_srcPayload = a})

-- | Required. The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
srcServiceName :: Lens' ServicesRolloutsCreate Text
srcServiceName
  = lens _srcServiceName
      (\ s a -> s{_srcServiceName = a})

-- | JSONP
srcCallback :: Lens' ServicesRolloutsCreate (Maybe Text)
srcCallback
  = lens _srcCallback (\ s a -> s{_srcCallback = a})

instance GoogleRequest ServicesRolloutsCreate where
        type Rs ServicesRolloutsCreate = Operation
        type Scopes ServicesRolloutsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesRolloutsCreate'{..}
          = go _srcServiceName _srcXgafv _srcUploadProtocol
              _srcAccessToken
              _srcUploadType
              _srcCallback
              (Just AltJSON)
              _srcPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesRolloutsCreateResource)
                      mempty
