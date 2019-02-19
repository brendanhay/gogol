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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.delete@.
module Network.Google.Resource.Compute.SecurityPolicies.Delete
    (
    -- * REST Resource
      SecurityPoliciesDeleteResource

    -- * Creating a Request
    , securityPoliciesDelete
    , SecurityPoliciesDelete

    -- * Request Lenses
    , spdpRequestId
    , spdpProject
    , spdpSecurityPolicy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.delete@ method which the
-- 'SecurityPoliciesDelete' request conforms to.
type SecurityPoliciesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified policy.
--
-- /See:/ 'securityPoliciesDelete' smart constructor.
data SecurityPoliciesDelete =
  SecurityPoliciesDelete'
    { _spdpRequestId      :: !(Maybe Text)
    , _spdpProject        :: !Text
    , _spdpSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdpRequestId'
--
-- * 'spdpProject'
--
-- * 'spdpSecurityPolicy'
securityPoliciesDelete
    :: Text -- ^ 'spdpProject'
    -> Text -- ^ 'spdpSecurityPolicy'
    -> SecurityPoliciesDelete
securityPoliciesDelete pSpdpProject_ pSpdpSecurityPolicy_ =
  SecurityPoliciesDelete'
    { _spdpRequestId = Nothing
    , _spdpProject = pSpdpProject_
    , _spdpSecurityPolicy = pSpdpSecurityPolicy_
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
spdpRequestId :: Lens' SecurityPoliciesDelete (Maybe Text)
spdpRequestId
  = lens _spdpRequestId
      (\ s a -> s{_spdpRequestId = a})

-- | Project ID for this request.
spdpProject :: Lens' SecurityPoliciesDelete Text
spdpProject
  = lens _spdpProject (\ s a -> s{_spdpProject = a})

-- | Name of the security policy to delete.
spdpSecurityPolicy :: Lens' SecurityPoliciesDelete Text
spdpSecurityPolicy
  = lens _spdpSecurityPolicy
      (\ s a -> s{_spdpSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesDelete where
        type Rs SecurityPoliciesDelete = Operation
        type Scopes SecurityPoliciesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SecurityPoliciesDelete'{..}
          = go _spdpProject _spdpSecurityPolicy _spdpRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesDeleteResource)
                      mempty
