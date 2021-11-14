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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Roles.Add
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to add roles in the shared VPC
-- host project. Each role is bound to the provided member. Each role must
-- be selected from within an allowlisted set of roles. Each role is
-- applied at only the granularity specified in the allowlist.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.roles.add@.
module Network.Google.Resource.ServiceNetworking.Services.Roles.Add
    (
    -- * REST Resource
      ServicesRolesAddResource

    -- * Creating a Request
    , servicesRolesAdd
    , ServicesRolesAdd

    -- * Request Lenses
    , sraParent
    , sraXgafv
    , sraUploadProtocol
    , sraAccessToken
    , sraUploadType
    , sraPayload
    , sraCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.roles.add@ method which the
-- 'ServicesRolesAdd' request conforms to.
type ServicesRolesAddResource =
     "v1" :>
       Capture "parent" Text :>
         "roles:add" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AddRolesRequest :>
                         Post '[JSON] Operation

-- | Service producers can use this method to add roles in the shared VPC
-- host project. Each role is bound to the provided member. Each role must
-- be selected from within an allowlisted set of roles. Each role is
-- applied at only the granularity specified in the allowlist.
--
-- /See:/ 'servicesRolesAdd' smart constructor.
data ServicesRolesAdd =
  ServicesRolesAdd'
    { _sraParent :: !Text
    , _sraXgafv :: !(Maybe Xgafv)
    , _sraUploadProtocol :: !(Maybe Text)
    , _sraAccessToken :: !(Maybe Text)
    , _sraUploadType :: !(Maybe Text)
    , _sraPayload :: !AddRolesRequest
    , _sraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesRolesAdd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sraParent'
--
-- * 'sraXgafv'
--
-- * 'sraUploadProtocol'
--
-- * 'sraAccessToken'
--
-- * 'sraUploadType'
--
-- * 'sraPayload'
--
-- * 'sraCallback'
servicesRolesAdd
    :: Text -- ^ 'sraParent'
    -> AddRolesRequest -- ^ 'sraPayload'
    -> ServicesRolesAdd
servicesRolesAdd pSraParent_ pSraPayload_ =
  ServicesRolesAdd'
    { _sraParent = pSraParent_
    , _sraXgafv = Nothing
    , _sraUploadProtocol = Nothing
    , _sraAccessToken = Nothing
    , _sraUploadType = Nothing
    , _sraPayload = pSraPayload_
    , _sraCallback = Nothing
    }


-- | Required. This is in a form services\/{service} where {service} is the
-- name of the private access management service. For example
-- \'service-peering.example.com\'.
sraParent :: Lens' ServicesRolesAdd Text
sraParent
  = lens _sraParent (\ s a -> s{_sraParent = a})

-- | V1 error format.
sraXgafv :: Lens' ServicesRolesAdd (Maybe Xgafv)
sraXgafv = lens _sraXgafv (\ s a -> s{_sraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sraUploadProtocol :: Lens' ServicesRolesAdd (Maybe Text)
sraUploadProtocol
  = lens _sraUploadProtocol
      (\ s a -> s{_sraUploadProtocol = a})

-- | OAuth access token.
sraAccessToken :: Lens' ServicesRolesAdd (Maybe Text)
sraAccessToken
  = lens _sraAccessToken
      (\ s a -> s{_sraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sraUploadType :: Lens' ServicesRolesAdd (Maybe Text)
sraUploadType
  = lens _sraUploadType
      (\ s a -> s{_sraUploadType = a})

-- | Multipart request metadata.
sraPayload :: Lens' ServicesRolesAdd AddRolesRequest
sraPayload
  = lens _sraPayload (\ s a -> s{_sraPayload = a})

-- | JSONP
sraCallback :: Lens' ServicesRolesAdd (Maybe Text)
sraCallback
  = lens _sraCallback (\ s a -> s{_sraCallback = a})

instance GoogleRequest ServicesRolesAdd where
        type Rs ServicesRolesAdd = Operation
        type Scopes ServicesRolesAdd =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesRolesAdd'{..}
          = go _sraParent _sraXgafv _sraUploadProtocol
              _sraAccessToken
              _sraUploadType
              _sraCallback
              (Just AltJSON)
              _sraPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesRolesAddResource)
                      mempty
