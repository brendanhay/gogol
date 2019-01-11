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
-- Module      : Network.Google.Resource.Compute.SSLPolicies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified SSL policy with the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslPolicies.patch@.
module Network.Google.Resource.Compute.SSLPolicies.Patch
    (
    -- * REST Resource
      SSLPoliciesPatchResource

    -- * Creating a Request
    , sslPoliciesPatch
    , SSLPoliciesPatch

    -- * Request Lenses
    , sppSSLPolicy
    , sppRequestId
    , sppProject
    , sppPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.sslPolicies.patch@ method which the
-- 'SSLPoliciesPatch' request conforms to.
type SSLPoliciesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslPolicies" :>
                 Capture "sslPolicy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SSLPolicy :> Patch '[JSON] Operation

-- | Patches the specified SSL policy with the data included in the request.
--
-- /See:/ 'sslPoliciesPatch' smart constructor.
data SSLPoliciesPatch = SSLPoliciesPatch'
    { _sppSSLPolicy :: !Text
    , _sppRequestId :: !(Maybe Text)
    , _sppProject   :: !Text
    , _sppPayload   :: !SSLPolicy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLPoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sppSSLPolicy'
--
-- * 'sppRequestId'
--
-- * 'sppProject'
--
-- * 'sppPayload'
sslPoliciesPatch
    :: Text -- ^ 'sppSSLPolicy'
    -> Text -- ^ 'sppProject'
    -> SSLPolicy -- ^ 'sppPayload'
    -> SSLPoliciesPatch
sslPoliciesPatch pSppSSLPolicy_ pSppProject_ pSppPayload_ =
    SSLPoliciesPatch'
    { _sppSSLPolicy = pSppSSLPolicy_
    , _sppRequestId = Nothing
    , _sppProject = pSppProject_
    , _sppPayload = pSppPayload_
    }

-- | Name of the SSL policy to update. The name must be 1-63 characters long,
-- and comply with RFC1035.
sppSSLPolicy :: Lens' SSLPoliciesPatch Text
sppSSLPolicy
  = lens _sppSSLPolicy (\ s a -> s{_sppSSLPolicy = a})

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
sppRequestId :: Lens' SSLPoliciesPatch (Maybe Text)
sppRequestId
  = lens _sppRequestId (\ s a -> s{_sppRequestId = a})

-- | Project ID for this request.
sppProject :: Lens' SSLPoliciesPatch Text
sppProject
  = lens _sppProject (\ s a -> s{_sppProject = a})

-- | Multipart request metadata.
sppPayload :: Lens' SSLPoliciesPatch SSLPolicy
sppPayload
  = lens _sppPayload (\ s a -> s{_sppPayload = a})

instance GoogleRequest SSLPoliciesPatch where
        type Rs SSLPoliciesPatch = Operation
        type Scopes SSLPoliciesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SSLPoliciesPatch'{..}
          = go _sppProject _sppSSLPolicy _sppRequestId
              (Just AltJSON)
              _sppPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLPoliciesPatchResource)
                      mempty
