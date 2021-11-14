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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Rollouts.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service configuration rollout.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.rollouts.get@.
module Network.Google.Resource.ServiceManagement.Services.Rollouts.Get
    (
    -- * REST Resource
      ServicesRolloutsGetResource

    -- * Creating a Request
    , servicesRolloutsGet
    , ServicesRolloutsGet

    -- * Request Lenses
    , srgXgafv
    , srgUploadProtocol
    , srgAccessToken
    , srgUploadType
    , srgServiceName
    , srgRolloutId
    , srgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.rollouts.get@ method which the
-- 'ServicesRolloutsGet' request conforms to.
type ServicesRolloutsGetResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "rollouts" :>
             Capture "rolloutId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Rollout

-- | Gets a service configuration rollout.
--
-- /See:/ 'servicesRolloutsGet' smart constructor.
data ServicesRolloutsGet =
  ServicesRolloutsGet'
    { _srgXgafv :: !(Maybe Xgafv)
    , _srgUploadProtocol :: !(Maybe Text)
    , _srgAccessToken :: !(Maybe Text)
    , _srgUploadType :: !(Maybe Text)
    , _srgServiceName :: !Text
    , _srgRolloutId :: !Text
    , _srgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesRolloutsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srgXgafv'
--
-- * 'srgUploadProtocol'
--
-- * 'srgAccessToken'
--
-- * 'srgUploadType'
--
-- * 'srgServiceName'
--
-- * 'srgRolloutId'
--
-- * 'srgCallback'
servicesRolloutsGet
    :: Text -- ^ 'srgServiceName'
    -> Text -- ^ 'srgRolloutId'
    -> ServicesRolloutsGet
servicesRolloutsGet pSrgServiceName_ pSrgRolloutId_ =
  ServicesRolloutsGet'
    { _srgXgafv = Nothing
    , _srgUploadProtocol = Nothing
    , _srgAccessToken = Nothing
    , _srgUploadType = Nothing
    , _srgServiceName = pSrgServiceName_
    , _srgRolloutId = pSrgRolloutId_
    , _srgCallback = Nothing
    }


-- | V1 error format.
srgXgafv :: Lens' ServicesRolloutsGet (Maybe Xgafv)
srgXgafv = lens _srgXgafv (\ s a -> s{_srgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srgUploadProtocol :: Lens' ServicesRolloutsGet (Maybe Text)
srgUploadProtocol
  = lens _srgUploadProtocol
      (\ s a -> s{_srgUploadProtocol = a})

-- | OAuth access token.
srgAccessToken :: Lens' ServicesRolloutsGet (Maybe Text)
srgAccessToken
  = lens _srgAccessToken
      (\ s a -> s{_srgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srgUploadType :: Lens' ServicesRolloutsGet (Maybe Text)
srgUploadType
  = lens _srgUploadType
      (\ s a -> s{_srgUploadType = a})

-- | Required. The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
srgServiceName :: Lens' ServicesRolloutsGet Text
srgServiceName
  = lens _srgServiceName
      (\ s a -> s{_srgServiceName = a})

-- | Required. The id of the rollout resource.
srgRolloutId :: Lens' ServicesRolloutsGet Text
srgRolloutId
  = lens _srgRolloutId (\ s a -> s{_srgRolloutId = a})

-- | JSONP
srgCallback :: Lens' ServicesRolloutsGet (Maybe Text)
srgCallback
  = lens _srgCallback (\ s a -> s{_srgCallback = a})

instance GoogleRequest ServicesRolloutsGet where
        type Rs ServicesRolloutsGet = Rollout
        type Scopes ServicesRolloutsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesRolloutsGet'{..}
          = go _srgServiceName _srgRolloutId _srgXgafv
              _srgUploadProtocol
              _srgAccessToken
              _srgUploadType
              _srgCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesRolloutsGetResource)
                      mempty
