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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a managed service. This method will change the serivce in the
-- \`Soft-Delete\` state for 30 days. Within this period, service producers
-- may call UndeleteService to restore the service. After 30 days, the
-- service will be permanently deleted. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.delete@.
module Network.Google.Resource.ServiceManagement.Services.Delete
    (
    -- * REST Resource
      ServicesDeleteResource

    -- * Creating a Request
    , servicesDelete
    , ServicesDelete

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdPp
    , sdAccessToken
    , sdUploadType
    , sdBearerToken
    , sdServiceName
    , sdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.delete@ method which the
-- 'ServicesDelete' request conforms to.
type ServicesDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a managed service. This method will change the serivce in the
-- \`Soft-Delete\` state for 30 days. Within this period, service producers
-- may call UndeleteService to restore the service. After 30 days, the
-- service will be permanently deleted. Operation
--
-- /See:/ 'servicesDelete' smart constructor.
data ServicesDelete = ServicesDelete'
    { _sdXgafv          :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdPp             :: !Bool
    , _sdAccessToken    :: !(Maybe Text)
    , _sdUploadType     :: !(Maybe Text)
    , _sdBearerToken    :: !(Maybe Text)
    , _sdServiceName    :: !Text
    , _sdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdPp'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdBearerToken'
--
-- * 'sdServiceName'
--
-- * 'sdCallback'
servicesDelete
    :: Text -- ^ 'sdServiceName'
    -> ServicesDelete
servicesDelete pSdServiceName_ =
    ServicesDelete'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdPp = True
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdBearerToken = Nothing
    , _sdServiceName = pSdServiceName_
    , _sdCallback = Nothing
    }

-- | V1 error format.
sdXgafv :: Lens' ServicesDelete (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' ServicesDelete (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | Pretty-print response.
sdPp :: Lens' ServicesDelete Bool
sdPp = lens _sdPp (\ s a -> s{_sdPp = a})

-- | OAuth access token.
sdAccessToken :: Lens' ServicesDelete (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' ServicesDelete (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | OAuth bearer token.
sdBearerToken :: Lens' ServicesDelete (Maybe Text)
sdBearerToken
  = lens _sdBearerToken
      (\ s a -> s{_sdBearerToken = a})

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
sdServiceName :: Lens' ServicesDelete Text
sdServiceName
  = lens _sdServiceName
      (\ s a -> s{_sdServiceName = a})

-- | JSONP
sdCallback :: Lens' ServicesDelete (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest ServicesDelete where
        type Rs ServicesDelete = Operation
        type Scopes ServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDelete'{..}
          = go _sdServiceName _sdXgafv _sdUploadProtocol
              (Just _sdPp)
              _sdAccessToken
              _sdUploadType
              _sdBearerToken
              _sdCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesDeleteResource)
                      mempty
