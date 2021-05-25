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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified policy with the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.patch@.
module Network.Google.Resource.Compute.FirewallPolicies.Patch
    (
    -- * REST Resource
      FirewallPoliciesPatchResource

    -- * Creating a Request
    , firewallPoliciesPatch
    , FirewallPoliciesPatch

    -- * Request Lenses
    , fppRequestId
    , fppFirewallPolicy
    , fppPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.patch@ method which the
-- 'FirewallPoliciesPatch' request conforms to.
type FirewallPoliciesPatchResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] FirewallPolicy :>
                       Patch '[JSON] Operation

-- | Patches the specified policy with the data included in the request.
--
-- /See:/ 'firewallPoliciesPatch' smart constructor.
data FirewallPoliciesPatch =
  FirewallPoliciesPatch'
    { _fppRequestId :: !(Maybe Text)
    , _fppFirewallPolicy :: !Text
    , _fppPayload :: !FirewallPolicy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fppRequestId'
--
-- * 'fppFirewallPolicy'
--
-- * 'fppPayload'
firewallPoliciesPatch
    :: Text -- ^ 'fppFirewallPolicy'
    -> FirewallPolicy -- ^ 'fppPayload'
    -> FirewallPoliciesPatch
firewallPoliciesPatch pFppFirewallPolicy_ pFppPayload_ =
  FirewallPoliciesPatch'
    { _fppRequestId = Nothing
    , _fppFirewallPolicy = pFppFirewallPolicy_
    , _fppPayload = pFppPayload_
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
fppRequestId :: Lens' FirewallPoliciesPatch (Maybe Text)
fppRequestId
  = lens _fppRequestId (\ s a -> s{_fppRequestId = a})

-- | Name of the firewall policy to update.
fppFirewallPolicy :: Lens' FirewallPoliciesPatch Text
fppFirewallPolicy
  = lens _fppFirewallPolicy
      (\ s a -> s{_fppFirewallPolicy = a})

-- | Multipart request metadata.
fppPayload :: Lens' FirewallPoliciesPatch FirewallPolicy
fppPayload
  = lens _fppPayload (\ s a -> s{_fppPayload = a})

instance GoogleRequest FirewallPoliciesPatch where
        type Rs FirewallPoliciesPatch = Operation
        type Scopes FirewallPoliciesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesPatch'{..}
          = go _fppFirewallPolicy _fppRequestId (Just AltJSON)
              _fppPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesPatchResource)
                      mempty
