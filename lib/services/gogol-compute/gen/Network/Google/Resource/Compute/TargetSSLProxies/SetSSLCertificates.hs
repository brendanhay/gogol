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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.SetSSLCertificates
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes SslCertificates for TargetSslProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.setSslCertificates@.
module Network.Google.Resource.Compute.TargetSSLProxies.SetSSLCertificates
    (
    -- * REST Resource
      TargetSSLProxiesSetSSLCertificatesResource

    -- * Creating a Request
    , targetSSLProxiesSetSSLCertificates
    , TargetSSLProxiesSetSSLCertificates

    -- * Request Lenses
    , tspsscRequestId
    , tspsscProject
    , tspsscPayload
    , tspsscTargetSSLProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.setSslCertificates@ method which the
-- 'TargetSSLProxiesSetSSLCertificates' request conforms to.
type TargetSSLProxiesSetSSLCertificatesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 Capture "targetSslProxy" Text :>
                   "setSslCertificates" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           TargetSSLProxiesSetSSLCertificatesRequest
                           :> Post '[JSON] Operation

-- | Changes SslCertificates for TargetSslProxy.
--
-- /See:/ 'targetSSLProxiesSetSSLCertificates' smart constructor.
data TargetSSLProxiesSetSSLCertificates =
  TargetSSLProxiesSetSSLCertificates'
    { _tspsscRequestId :: !(Maybe Text)
    , _tspsscProject :: !Text
    , _tspsscPayload :: !TargetSSLProxiesSetSSLCertificatesRequest
    , _tspsscTargetSSLProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetSSLProxiesSetSSLCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsscRequestId'
--
-- * 'tspsscProject'
--
-- * 'tspsscPayload'
--
-- * 'tspsscTargetSSLProxy'
targetSSLProxiesSetSSLCertificates
    :: Text -- ^ 'tspsscProject'
    -> TargetSSLProxiesSetSSLCertificatesRequest -- ^ 'tspsscPayload'
    -> Text -- ^ 'tspsscTargetSSLProxy'
    -> TargetSSLProxiesSetSSLCertificates
targetSSLProxiesSetSSLCertificates pTspsscProject_ pTspsscPayload_ pTspsscTargetSSLProxy_ =
  TargetSSLProxiesSetSSLCertificates'
    { _tspsscRequestId = Nothing
    , _tspsscProject = pTspsscProject_
    , _tspsscPayload = pTspsscPayload_
    , _tspsscTargetSSLProxy = pTspsscTargetSSLProxy_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
tspsscRequestId :: Lens' TargetSSLProxiesSetSSLCertificates (Maybe Text)
tspsscRequestId
  = lens _tspsscRequestId
      (\ s a -> s{_tspsscRequestId = a})

-- | Project ID for this request.
tspsscProject :: Lens' TargetSSLProxiesSetSSLCertificates Text
tspsscProject
  = lens _tspsscProject
      (\ s a -> s{_tspsscProject = a})

-- | Multipart request metadata.
tspsscPayload :: Lens' TargetSSLProxiesSetSSLCertificates TargetSSLProxiesSetSSLCertificatesRequest
tspsscPayload
  = lens _tspsscPayload
      (\ s a -> s{_tspsscPayload = a})

-- | Name of the TargetSslProxy resource whose SslCertificate resource is to
-- be set.
tspsscTargetSSLProxy :: Lens' TargetSSLProxiesSetSSLCertificates Text
tspsscTargetSSLProxy
  = lens _tspsscTargetSSLProxy
      (\ s a -> s{_tspsscTargetSSLProxy = a})

instance GoogleRequest
           TargetSSLProxiesSetSSLCertificates
         where
        type Rs TargetSSLProxiesSetSSLCertificates =
             Operation
        type Scopes TargetSSLProxiesSetSSLCertificates =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesSetSSLCertificates'{..}
          = go _tspsscProject _tspsscTargetSSLProxy
              _tspsscRequestId
              (Just AltJSON)
              _tspsscPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetSSLProxiesSetSSLCertificatesResource)
                      mempty
