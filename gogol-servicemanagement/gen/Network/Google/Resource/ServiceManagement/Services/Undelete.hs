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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revives a previously deleted managed service. The method restores the
-- service using the configuration at the time the service was deleted. The
-- target service must exist and must have been deleted within the last 30
-- days. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.undelete@.
module Network.Google.Resource.ServiceManagement.Services.Undelete
    (
    -- * REST Resource
      ServicesUndeleteResource

    -- * Creating a Request
    , servicesUndelete
    , ServicesUndelete

    -- * Request Lenses
    , suXgafv
    , suUploadProtocol
    , suPp
    , suAccessToken
    , suUploadType
    , suBearerToken
    , suServiceName
    , suCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.undelete@ method which the
-- 'ServicesUndelete' request conforms to.
type ServicesUndeleteResource =
     "v1" :>
       "services" :>
         CaptureMode "serviceName" "undelete" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Revives a previously deleted managed service. The method restores the
-- service using the configuration at the time the service was deleted. The
-- target service must exist and must have been deleted within the last 30
-- days. Operation
--
-- /See:/ 'servicesUndelete' smart constructor.
data ServicesUndelete = ServicesUndelete'
    { _suXgafv          :: !(Maybe Xgafv)
    , _suUploadProtocol :: !(Maybe Text)
    , _suPp             :: !Bool
    , _suAccessToken    :: !(Maybe Text)
    , _suUploadType     :: !(Maybe Text)
    , _suBearerToken    :: !(Maybe Text)
    , _suServiceName    :: !Text
    , _suCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suXgafv'
--
-- * 'suUploadProtocol'
--
-- * 'suPp'
--
-- * 'suAccessToken'
--
-- * 'suUploadType'
--
-- * 'suBearerToken'
--
-- * 'suServiceName'
--
-- * 'suCallback'
servicesUndelete
    :: Text -- ^ 'suServiceName'
    -> ServicesUndelete
servicesUndelete pSuServiceName_ =
    ServicesUndelete'
    { _suXgafv = Nothing
    , _suUploadProtocol = Nothing
    , _suPp = True
    , _suAccessToken = Nothing
    , _suUploadType = Nothing
    , _suBearerToken = Nothing
    , _suServiceName = pSuServiceName_
    , _suCallback = Nothing
    }

-- | V1 error format.
suXgafv :: Lens' ServicesUndelete (Maybe Xgafv)
suXgafv = lens _suXgafv (\ s a -> s{_suXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
suUploadProtocol :: Lens' ServicesUndelete (Maybe Text)
suUploadProtocol
  = lens _suUploadProtocol
      (\ s a -> s{_suUploadProtocol = a})

-- | Pretty-print response.
suPp :: Lens' ServicesUndelete Bool
suPp = lens _suPp (\ s a -> s{_suPp = a})

-- | OAuth access token.
suAccessToken :: Lens' ServicesUndelete (Maybe Text)
suAccessToken
  = lens _suAccessToken
      (\ s a -> s{_suAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
suUploadType :: Lens' ServicesUndelete (Maybe Text)
suUploadType
  = lens _suUploadType (\ s a -> s{_suUploadType = a})

-- | OAuth bearer token.
suBearerToken :: Lens' ServicesUndelete (Maybe Text)
suBearerToken
  = lens _suBearerToken
      (\ s a -> s{_suBearerToken = a})

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
suServiceName :: Lens' ServicesUndelete Text
suServiceName
  = lens _suServiceName
      (\ s a -> s{_suServiceName = a})

-- | JSONP
suCallback :: Lens' ServicesUndelete (Maybe Text)
suCallback
  = lens _suCallback (\ s a -> s{_suCallback = a})

instance GoogleRequest ServicesUndelete where
        type Rs ServicesUndelete = Operation
        type Scopes ServicesUndelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesUndelete'{..}
          = go _suServiceName _suXgafv _suUploadProtocol
              (Just _suPp)
              _suAccessToken
              _suUploadType
              _suBearerToken
              _suCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesUndeleteResource)
                      mempty
