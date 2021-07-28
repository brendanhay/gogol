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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new managed service. A managed service is immutable, and is
-- subject to mandatory 30-day data retention. You cannot move a service or
-- recreate it within 30 days after deletion. One producer project can own
-- no more than 500 services. For security and reliability purposes, a
-- production service should be hosted in a dedicated producer project.
-- Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.create@.
module Network.Google.Resource.ServiceManagement.Services.Create
    (
    -- * REST Resource
      ServicesCreateResource

    -- * Creating a Request
    , servicesCreate
    , ServicesCreate

    -- * Request Lenses
    , scXgafv
    , scUploadProtocol
    , scAccessToken
    , scUploadType
    , scPayload
    , scCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.create@ method which the
-- 'ServicesCreate' request conforms to.
type ServicesCreateResource =
     "v1" :>
       "services" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ManagedService :>
                       Post '[JSON] Operation

-- | Creates a new managed service. A managed service is immutable, and is
-- subject to mandatory 30-day data retention. You cannot move a service or
-- recreate it within 30 days after deletion. One producer project can own
-- no more than 500 services. For security and reliability purposes, a
-- production service should be hosted in a dedicated producer project.
-- Operation
--
-- /See:/ 'servicesCreate' smart constructor.
data ServicesCreate =
  ServicesCreate'
    { _scXgafv :: !(Maybe Xgafv)
    , _scUploadProtocol :: !(Maybe Text)
    , _scAccessToken :: !(Maybe Text)
    , _scUploadType :: !(Maybe Text)
    , _scPayload :: !ManagedService
    , _scCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scXgafv'
--
-- * 'scUploadProtocol'
--
-- * 'scAccessToken'
--
-- * 'scUploadType'
--
-- * 'scPayload'
--
-- * 'scCallback'
servicesCreate
    :: ManagedService -- ^ 'scPayload'
    -> ServicesCreate
servicesCreate pScPayload_ =
  ServicesCreate'
    { _scXgafv = Nothing
    , _scUploadProtocol = Nothing
    , _scAccessToken = Nothing
    , _scUploadType = Nothing
    , _scPayload = pScPayload_
    , _scCallback = Nothing
    }


-- | V1 error format.
scXgafv :: Lens' ServicesCreate (Maybe Xgafv)
scXgafv = lens _scXgafv (\ s a -> s{_scXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scUploadProtocol :: Lens' ServicesCreate (Maybe Text)
scUploadProtocol
  = lens _scUploadProtocol
      (\ s a -> s{_scUploadProtocol = a})

-- | OAuth access token.
scAccessToken :: Lens' ServicesCreate (Maybe Text)
scAccessToken
  = lens _scAccessToken
      (\ s a -> s{_scAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scUploadType :: Lens' ServicesCreate (Maybe Text)
scUploadType
  = lens _scUploadType (\ s a -> s{_scUploadType = a})

-- | Multipart request metadata.
scPayload :: Lens' ServicesCreate ManagedService
scPayload
  = lens _scPayload (\ s a -> s{_scPayload = a})

-- | JSONP
scCallback :: Lens' ServicesCreate (Maybe Text)
scCallback
  = lens _scCallback (\ s a -> s{_scCallback = a})

instance GoogleRequest ServicesCreate where
        type Rs ServicesCreate = Operation
        type Scopes ServicesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesCreate'{..}
          = go _scXgafv _scUploadProtocol _scAccessToken
              _scUploadType
              _scCallback
              (Just AltJSON)
              _scPayload
              serviceManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesCreateResource)
                      mempty
