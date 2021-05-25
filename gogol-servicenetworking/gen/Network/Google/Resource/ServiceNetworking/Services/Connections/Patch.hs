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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Connections.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the allocated ranges that are assigned to a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.patch@.
module Network.Google.Resource.ServiceNetworking.Services.Connections.Patch
    (
    -- * REST Resource
      ServicesConnectionsPatchResource

    -- * Creating a Request
    , servicesConnectionsPatch
    , ServicesConnectionsPatch

    -- * Request Lenses
    , scpXgafv
    , scpUploadProtocol
    , scpForce
    , scpUpdateMask
    , scpAccessToken
    , scpUploadType
    , scpPayload
    , scpName
    , scpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.patch@ method which the
-- 'ServicesConnectionsPatch' request conforms to.
type ServicesConnectionsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Connection :> Patch '[JSON] Operation

-- | Updates the allocated ranges that are assigned to a connection.
--
-- /See:/ 'servicesConnectionsPatch' smart constructor.
data ServicesConnectionsPatch =
  ServicesConnectionsPatch'
    { _scpXgafv :: !(Maybe Xgafv)
    , _scpUploadProtocol :: !(Maybe Text)
    , _scpForce :: !(Maybe Bool)
    , _scpUpdateMask :: !(Maybe GFieldMask)
    , _scpAccessToken :: !(Maybe Text)
    , _scpUploadType :: !(Maybe Text)
    , _scpPayload :: !Connection
    , _scpName :: !Text
    , _scpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesConnectionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpXgafv'
--
-- * 'scpUploadProtocol'
--
-- * 'scpForce'
--
-- * 'scpUpdateMask'
--
-- * 'scpAccessToken'
--
-- * 'scpUploadType'
--
-- * 'scpPayload'
--
-- * 'scpName'
--
-- * 'scpCallback'
servicesConnectionsPatch
    :: Connection -- ^ 'scpPayload'
    -> Text -- ^ 'scpName'
    -> ServicesConnectionsPatch
servicesConnectionsPatch pScpPayload_ pScpName_ =
  ServicesConnectionsPatch'
    { _scpXgafv = Nothing
    , _scpUploadProtocol = Nothing
    , _scpForce = Nothing
    , _scpUpdateMask = Nothing
    , _scpAccessToken = Nothing
    , _scpUploadType = Nothing
    , _scpPayload = pScpPayload_
    , _scpName = pScpName_
    , _scpCallback = Nothing
    }


-- | V1 error format.
scpXgafv :: Lens' ServicesConnectionsPatch (Maybe Xgafv)
scpXgafv = lens _scpXgafv (\ s a -> s{_scpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scpUploadProtocol :: Lens' ServicesConnectionsPatch (Maybe Text)
scpUploadProtocol
  = lens _scpUploadProtocol
      (\ s a -> s{_scpUploadProtocol = a})

-- | If a previously defined allocated range is removed, force flag must be
-- set to true.
scpForce :: Lens' ServicesConnectionsPatch (Maybe Bool)
scpForce = lens _scpForce (\ s a -> s{_scpForce = a})

-- | The update mask. If this is omitted, it defaults to \"*\". You can only
-- update the listed peering ranges.
scpUpdateMask :: Lens' ServicesConnectionsPatch (Maybe GFieldMask)
scpUpdateMask
  = lens _scpUpdateMask
      (\ s a -> s{_scpUpdateMask = a})

-- | OAuth access token.
scpAccessToken :: Lens' ServicesConnectionsPatch (Maybe Text)
scpAccessToken
  = lens _scpAccessToken
      (\ s a -> s{_scpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scpUploadType :: Lens' ServicesConnectionsPatch (Maybe Text)
scpUploadType
  = lens _scpUploadType
      (\ s a -> s{_scpUploadType = a})

-- | Multipart request metadata.
scpPayload :: Lens' ServicesConnectionsPatch Connection
scpPayload
  = lens _scpPayload (\ s a -> s{_scpPayload = a})

-- | The private service connection that connects to a service producer
-- organization. The name includes both the private service name and the
-- VPC network peering name in the format of
-- \`services\/{peering_service_name}\/connections\/{vpc_peering_name}\`.
-- For Google services that support this functionality, this is
-- \`services\/servicenetworking.googleapis.com\/connections\/servicenetworking-googleapis-com\`.
scpName :: Lens' ServicesConnectionsPatch Text
scpName = lens _scpName (\ s a -> s{_scpName = a})

-- | JSONP
scpCallback :: Lens' ServicesConnectionsPatch (Maybe Text)
scpCallback
  = lens _scpCallback (\ s a -> s{_scpCallback = a})

instance GoogleRequest ServicesConnectionsPatch where
        type Rs ServicesConnectionsPatch = Operation
        type Scopes ServicesConnectionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesConnectionsPatch'{..}
          = go _scpName _scpXgafv _scpUploadProtocol _scpForce
              _scpUpdateMask
              _scpAccessToken
              _scpUploadType
              _scpCallback
              (Just AltJSON)
              _scpPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConnectionsPatchResource)
                      mempty
