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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces SslCertificates for TargetHttpsProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.setSslCertificates@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
    (
    -- * REST Resource
      TargetHTTPSProxiesSetSSLCertificatesResource

    -- * Creating a Request
    , targetHTTPSProxiesSetSSLCertificates
    , TargetHTTPSProxiesSetSSLCertificates

    -- * Request Lenses
    , thpsscProject
    , thpsscPayload
    , thpsscTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.setSslCertificates@ method which the
-- 'TargetHTTPSProxiesSetSSLCertificates' request conforms to.
type TargetHTTPSProxiesSetSSLCertificatesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "targetHttpsProxies" :>
               Capture "targetHttpsProxy" Text :>
                 "setSslCertificates" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       TargetHTTPSProxiesSetSSLCertificatesRequest
                       :> Post '[JSON] Operation

-- | Replaces SslCertificates for TargetHttpsProxy.
--
-- /See:/ 'targetHTTPSProxiesSetSSLCertificates' smart constructor.
data TargetHTTPSProxiesSetSSLCertificates = TargetHTTPSProxiesSetSSLCertificates
    { _thpsscProject          :: !Text
    , _thpsscPayload          :: !TargetHTTPSProxiesSetSSLCertificatesRequest
    , _thpsscTargetHTTPSProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxiesSetSSLCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpsscProject'
--
-- * 'thpsscPayload'
--
-- * 'thpsscTargetHTTPSProxy'
targetHTTPSProxiesSetSSLCertificates
    :: Text -- ^ 'thpsscProject'
    -> TargetHTTPSProxiesSetSSLCertificatesRequest -- ^ 'thpsscPayload'
    -> Text -- ^ 'thpsscTargetHTTPSProxy'
    -> TargetHTTPSProxiesSetSSLCertificates
targetHTTPSProxiesSetSSLCertificates pThpsscProject_ pThpsscPayload_ pThpsscTargetHTTPSProxy_ =
    TargetHTTPSProxiesSetSSLCertificates
    { _thpsscProject = pThpsscProject_
    , _thpsscPayload = pThpsscPayload_
    , _thpsscTargetHTTPSProxy = pThpsscTargetHTTPSProxy_
    }

-- | Project ID for this request.
thpsscProject :: Lens' TargetHTTPSProxiesSetSSLCertificates Text
thpsscProject
  = lens _thpsscProject
      (\ s a -> s{_thpsscProject = a})

-- | Multipart request metadata.
thpsscPayload :: Lens' TargetHTTPSProxiesSetSSLCertificates TargetHTTPSProxiesSetSSLCertificatesRequest
thpsscPayload
  = lens _thpsscPayload
      (\ s a -> s{_thpsscPayload = a})

-- | Name of the TargetHttpsProxy resource to set an SslCertificates resource
-- for.
thpsscTargetHTTPSProxy :: Lens' TargetHTTPSProxiesSetSSLCertificates Text
thpsscTargetHTTPSProxy
  = lens _thpsscTargetHTTPSProxy
      (\ s a -> s{_thpsscTargetHTTPSProxy = a})

instance GoogleRequest
         TargetHTTPSProxiesSetSSLCertificates where
        type Rs TargetHTTPSProxiesSetSSLCertificates =
             Operation
        requestClient
          TargetHTTPSProxiesSetSSLCertificates{..}
          = go _thpsscProject _thpsscTargetHTTPSProxy
              (Just AltJSON)
              _thpsscPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetHTTPSProxiesSetSSLCertificatesResource)
                      mempty
