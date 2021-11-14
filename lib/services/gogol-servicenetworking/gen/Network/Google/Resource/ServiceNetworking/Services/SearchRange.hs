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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.SearchRange
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to find a currently unused range
-- within consumer allocated ranges. This returned range is not reserved,
-- and not guaranteed to remain unused. It will validate previously
-- provided allocated ranges, find non-conflicting sub-range of requested
-- size (expressed in number of leading bits of ipv4 network mask, as in
-- CIDR range notation).
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.searchRange@.
module Network.Google.Resource.ServiceNetworking.Services.SearchRange
    (
    -- * REST Resource
      ServicesSearchRangeResource

    -- * Creating a Request
    , servicesSearchRange
    , ServicesSearchRange

    -- * Request Lenses
    , ssrParent
    , ssrXgafv
    , ssrUploadProtocol
    , ssrAccessToken
    , ssrUploadType
    , ssrPayload
    , ssrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.searchRange@ method which the
-- 'ServicesSearchRange' request conforms to.
type ServicesSearchRangeResource =
     "v1" :>
       CaptureMode "parent" "searchRange" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SearchRangeRequest :>
                       Post '[JSON] Operation

-- | Service producers can use this method to find a currently unused range
-- within consumer allocated ranges. This returned range is not reserved,
-- and not guaranteed to remain unused. It will validate previously
-- provided allocated ranges, find non-conflicting sub-range of requested
-- size (expressed in number of leading bits of ipv4 network mask, as in
-- CIDR range notation).
--
-- /See:/ 'servicesSearchRange' smart constructor.
data ServicesSearchRange =
  ServicesSearchRange'
    { _ssrParent :: !Text
    , _ssrXgafv :: !(Maybe Xgafv)
    , _ssrUploadProtocol :: !(Maybe Text)
    , _ssrAccessToken :: !(Maybe Text)
    , _ssrUploadType :: !(Maybe Text)
    , _ssrPayload :: !SearchRangeRequest
    , _ssrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesSearchRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrParent'
--
-- * 'ssrXgafv'
--
-- * 'ssrUploadProtocol'
--
-- * 'ssrAccessToken'
--
-- * 'ssrUploadType'
--
-- * 'ssrPayload'
--
-- * 'ssrCallback'
servicesSearchRange
    :: Text -- ^ 'ssrParent'
    -> SearchRangeRequest -- ^ 'ssrPayload'
    -> ServicesSearchRange
servicesSearchRange pSsrParent_ pSsrPayload_ =
  ServicesSearchRange'
    { _ssrParent = pSsrParent_
    , _ssrXgafv = Nothing
    , _ssrUploadProtocol = Nothing
    , _ssrAccessToken = Nothing
    , _ssrUploadType = Nothing
    , _ssrPayload = pSsrPayload_
    , _ssrCallback = Nothing
    }


-- | Required. This is in a form services\/{service}. {service} the name of
-- the private access management service, for example
-- \'service-peering.example.com\'.
ssrParent :: Lens' ServicesSearchRange Text
ssrParent
  = lens _ssrParent (\ s a -> s{_ssrParent = a})

-- | V1 error format.
ssrXgafv :: Lens' ServicesSearchRange (Maybe Xgafv)
ssrXgafv = lens _ssrXgafv (\ s a -> s{_ssrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssrUploadProtocol :: Lens' ServicesSearchRange (Maybe Text)
ssrUploadProtocol
  = lens _ssrUploadProtocol
      (\ s a -> s{_ssrUploadProtocol = a})

-- | OAuth access token.
ssrAccessToken :: Lens' ServicesSearchRange (Maybe Text)
ssrAccessToken
  = lens _ssrAccessToken
      (\ s a -> s{_ssrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssrUploadType :: Lens' ServicesSearchRange (Maybe Text)
ssrUploadType
  = lens _ssrUploadType
      (\ s a -> s{_ssrUploadType = a})

-- | Multipart request metadata.
ssrPayload :: Lens' ServicesSearchRange SearchRangeRequest
ssrPayload
  = lens _ssrPayload (\ s a -> s{_ssrPayload = a})

-- | JSONP
ssrCallback :: Lens' ServicesSearchRange (Maybe Text)
ssrCallback
  = lens _ssrCallback (\ s a -> s{_ssrCallback = a})

instance GoogleRequest ServicesSearchRange where
        type Rs ServicesSearchRange = Operation
        type Scopes ServicesSearchRange =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesSearchRange'{..}
          = go _ssrParent _ssrXgafv _ssrUploadProtocol
              _ssrAccessToken
              _ssrUploadType
              _ssrCallback
              (Just AltJSON)
              _ssrPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesSearchRangeResource)
                      mempty
