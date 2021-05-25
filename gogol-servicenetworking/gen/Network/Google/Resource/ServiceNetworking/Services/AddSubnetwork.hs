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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.AddSubnetwork
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For service producers, provisions a new subnet in a peered service\'s
-- shared VPC network in the requested region and with the requested size
-- that\'s expressed as a CIDR range (number of leading bits of ipV4
-- network mask). The method checks against the assigned allocated ranges
-- to find a non-conflicting IP address range. The method will reuse a
-- subnet if subsequent calls contain the same subnet name, region, and
-- prefix length. This method will make producer\'s tenant project to be a
-- shared VPC service project as needed.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.addSubnetwork@.
module Network.Google.Resource.ServiceNetworking.Services.AddSubnetwork
    (
    -- * REST Resource
      ServicesAddSubnetworkResource

    -- * Creating a Request
    , servicesAddSubnetwork
    , ServicesAddSubnetwork

    -- * Request Lenses
    , sasParent
    , sasXgafv
    , sasUploadProtocol
    , sasAccessToken
    , sasUploadType
    , sasPayload
    , sasCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.addSubnetwork@ method which the
-- 'ServicesAddSubnetwork' request conforms to.
type ServicesAddSubnetworkResource =
     "v1" :>
       CaptureMode "parent" "addSubnetwork" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AddSubnetworkRequest :>
                       Post '[JSON] Operation

-- | For service producers, provisions a new subnet in a peered service\'s
-- shared VPC network in the requested region and with the requested size
-- that\'s expressed as a CIDR range (number of leading bits of ipV4
-- network mask). The method checks against the assigned allocated ranges
-- to find a non-conflicting IP address range. The method will reuse a
-- subnet if subsequent calls contain the same subnet name, region, and
-- prefix length. This method will make producer\'s tenant project to be a
-- shared VPC service project as needed.
--
-- /See:/ 'servicesAddSubnetwork' smart constructor.
data ServicesAddSubnetwork =
  ServicesAddSubnetwork'
    { _sasParent :: !Text
    , _sasXgafv :: !(Maybe Xgafv)
    , _sasUploadProtocol :: !(Maybe Text)
    , _sasAccessToken :: !(Maybe Text)
    , _sasUploadType :: !(Maybe Text)
    , _sasPayload :: !AddSubnetworkRequest
    , _sasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesAddSubnetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasParent'
--
-- * 'sasXgafv'
--
-- * 'sasUploadProtocol'
--
-- * 'sasAccessToken'
--
-- * 'sasUploadType'
--
-- * 'sasPayload'
--
-- * 'sasCallback'
servicesAddSubnetwork
    :: Text -- ^ 'sasParent'
    -> AddSubnetworkRequest -- ^ 'sasPayload'
    -> ServicesAddSubnetwork
servicesAddSubnetwork pSasParent_ pSasPayload_ =
  ServicesAddSubnetwork'
    { _sasParent = pSasParent_
    , _sasXgafv = Nothing
    , _sasUploadProtocol = Nothing
    , _sasAccessToken = Nothing
    , _sasUploadType = Nothing
    , _sasPayload = pSasPayload_
    , _sasCallback = Nothing
    }


-- | Required. A tenant project in the service producer organization, in the
-- following format: services\/{service}\/{collection-id}\/{resource-id}.
-- {collection-id} is the cloud resource collection type that represents
-- the tenant project. Only \`projects\` are supported. {resource-id} is
-- the tenant project numeric id, such as \`123456\`. {service} the name of
-- the peering service, such as \`service-peering.example.com\`. This
-- service must already be enabled in the service consumer\'s project.
sasParent :: Lens' ServicesAddSubnetwork Text
sasParent
  = lens _sasParent (\ s a -> s{_sasParent = a})

-- | V1 error format.
sasXgafv :: Lens' ServicesAddSubnetwork (Maybe Xgafv)
sasXgafv = lens _sasXgafv (\ s a -> s{_sasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sasUploadProtocol :: Lens' ServicesAddSubnetwork (Maybe Text)
sasUploadProtocol
  = lens _sasUploadProtocol
      (\ s a -> s{_sasUploadProtocol = a})

-- | OAuth access token.
sasAccessToken :: Lens' ServicesAddSubnetwork (Maybe Text)
sasAccessToken
  = lens _sasAccessToken
      (\ s a -> s{_sasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sasUploadType :: Lens' ServicesAddSubnetwork (Maybe Text)
sasUploadType
  = lens _sasUploadType
      (\ s a -> s{_sasUploadType = a})

-- | Multipart request metadata.
sasPayload :: Lens' ServicesAddSubnetwork AddSubnetworkRequest
sasPayload
  = lens _sasPayload (\ s a -> s{_sasPayload = a})

-- | JSONP
sasCallback :: Lens' ServicesAddSubnetwork (Maybe Text)
sasCallback
  = lens _sasCallback (\ s a -> s{_sasCallback = a})

instance GoogleRequest ServicesAddSubnetwork where
        type Rs ServicesAddSubnetwork = Operation
        type Scopes ServicesAddSubnetwork =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesAddSubnetwork'{..}
          = go _sasParent _sasXgafv _sasUploadProtocol
              _sasAccessToken
              _sasUploadType
              _sasCallback
              (Just AltJSON)
              _sasPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesAddSubnetworkResource)
                      mempty
