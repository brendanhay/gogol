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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , tspsscProject
    , tspsscPayload
    , tspsscTargetSSLProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         TargetSSLProxiesSetSSLCertificatesRequest
                         :> Post '[JSON] Operation

-- | Changes SslCertificates for TargetSslProxy.
--
-- /See:/ 'targetSSLProxiesSetSSLCertificates' smart constructor.
data TargetSSLProxiesSetSSLCertificates = TargetSSLProxiesSetSSLCertificates'
    { _tspsscProject        :: !Text
    , _tspsscPayload        :: !TargetSSLProxiesSetSSLCertificatesRequest
    , _tspsscTargetSSLProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesSetSSLCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _tspsscProject = pTspsscProject_
    , _tspsscPayload = pTspsscPayload_
    , _tspsscTargetSSLProxy = pTspsscTargetSSLProxy_
    }

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
         TargetSSLProxiesSetSSLCertificates where
        type Rs TargetSSLProxiesSetSSLCertificates =
             Operation
        type Scopes TargetSSLProxiesSetSSLCertificates =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesSetSSLCertificates'{..}
          = go _tspsscProject _tspsscTargetSSLProxy
              (Just AltJSON)
              _tspsscPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetSSLProxiesSetSSLCertificatesResource)
                      mempty
