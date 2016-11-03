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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a managed service.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.get@.
module Network.Google.Resource.ServiceManagement.Services.Get
    (
    -- * REST Resource
      ServicesGetResource

    -- * Creating a Request
    , servicesGet
    , ServicesGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgPp
    , sgAccessToken
    , sgUploadType
    , sgBearerToken
    , sgServiceName
    , sgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.get@ method which the
-- 'ServicesGet' request conforms to.
type ServicesGetResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ManagedService

-- | Gets a managed service.
--
-- /See:/ 'servicesGet' smart constructor.
data ServicesGet = ServicesGet'
    { _sgXgafv          :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgPp             :: !Bool
    , _sgAccessToken    :: !(Maybe Text)
    , _sgUploadType     :: !(Maybe Text)
    , _sgBearerToken    :: !(Maybe Text)
    , _sgServiceName    :: !Text
    , _sgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgPp'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgBearerToken'
--
-- * 'sgServiceName'
--
-- * 'sgCallback'
servicesGet
    :: Text -- ^ 'sgServiceName'
    -> ServicesGet
servicesGet pSgServiceName_ =
    ServicesGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgPp = True
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgBearerToken = Nothing
    , _sgServiceName = pSgServiceName_
    , _sgCallback = Nothing
    }

-- | V1 error format.
sgXgafv :: Lens' ServicesGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' ServicesGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | Pretty-print response.
sgPp :: Lens' ServicesGet Bool
sgPp = lens _sgPp (\ s a -> s{_sgPp = a})

-- | OAuth access token.
sgAccessToken :: Lens' ServicesGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' ServicesGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | OAuth bearer token.
sgBearerToken :: Lens' ServicesGet (Maybe Text)
sgBearerToken
  = lens _sgBearerToken
      (\ s a -> s{_sgBearerToken = a})

-- | The name of the service. See the \`ServiceManager\` overview for naming
-- requirements. For example: \`example.googleapis.com\`.
sgServiceName :: Lens' ServicesGet Text
sgServiceName
  = lens _sgServiceName
      (\ s a -> s{_sgServiceName = a})

-- | JSONP
sgCallback :: Lens' ServicesGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest ServicesGet where
        type Rs ServicesGet = ManagedService
        type Scopes ServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesGet'{..}
          = go _sgServiceName _sgXgafv _sgUploadProtocol
              (Just _sgPp)
              _sgAccessToken
              _sgUploadType
              _sgBearerToken
              _sgCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesGetResource)
                      mempty
