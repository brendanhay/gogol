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
-- Module      : Network.Google.Resource.Compute.SSLPolicies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SSL policy. The SSL policy resource can be deleted
-- only if it is not in use by any TargetHttpsProxy or TargetSslProxy
-- resources.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslPolicies.delete@.
module Network.Google.Resource.Compute.SSLPolicies.Delete
    (
    -- * REST Resource
      SSLPoliciesDeleteResource

    -- * Creating a Request
    , sslPoliciesDelete
    , SSLPoliciesDelete

    -- * Request Lenses
    , spdSSLPolicy
    , spdRequestId
    , spdProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.sslPolicies.delete@ method which the
-- 'SSLPoliciesDelete' request conforms to.
type SSLPoliciesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslPolicies" :>
                 Capture "sslPolicy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified SSL policy. The SSL policy resource can be deleted
-- only if it is not in use by any TargetHttpsProxy or TargetSslProxy
-- resources.
--
-- /See:/ 'sslPoliciesDelete' smart constructor.
data SSLPoliciesDelete =
  SSLPoliciesDelete'
    { _spdSSLPolicy :: !Text
    , _spdRequestId :: !(Maybe Text)
    , _spdProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdSSLPolicy'
--
-- * 'spdRequestId'
--
-- * 'spdProject'
sslPoliciesDelete
    :: Text -- ^ 'spdSSLPolicy'
    -> Text -- ^ 'spdProject'
    -> SSLPoliciesDelete
sslPoliciesDelete pSpdSSLPolicy_ pSpdProject_ =
  SSLPoliciesDelete'
    { _spdSSLPolicy = pSpdSSLPolicy_
    , _spdRequestId = Nothing
    , _spdProject = pSpdProject_
    }


-- | Name of the SSL policy to delete. The name must be 1-63 characters long,
-- and comply with RFC1035.
spdSSLPolicy :: Lens' SSLPoliciesDelete Text
spdSSLPolicy
  = lens _spdSSLPolicy (\ s a -> s{_spdSSLPolicy = a})

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
spdRequestId :: Lens' SSLPoliciesDelete (Maybe Text)
spdRequestId
  = lens _spdRequestId (\ s a -> s{_spdRequestId = a})

-- | Project ID for this request.
spdProject :: Lens' SSLPoliciesDelete Text
spdProject
  = lens _spdProject (\ s a -> s{_spdProject = a})

instance GoogleRequest SSLPoliciesDelete where
        type Rs SSLPoliciesDelete = Operation
        type Scopes SSLPoliciesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SSLPoliciesDelete'{..}
          = go _spdProject _spdSSLPolicy _spdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLPoliciesDeleteResource)
                      mempty
