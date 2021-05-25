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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new policy in the specified project using the data included in
-- the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.insert@.
module Network.Google.Resource.Compute.FirewallPolicies.Insert
    (
    -- * REST Resource
      FirewallPoliciesInsertResource

    -- * Creating a Request
    , firewallPoliciesInsert
    , FirewallPoliciesInsert

    -- * Request Lenses
    , fpiRequestId
    , fpiPayload
    , fpiParentId
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.insert@ method which the
-- 'FirewallPoliciesInsert' request conforms to.
type FirewallPoliciesInsertResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               QueryParam "requestId" Text :>
                 QueryParam "parentId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] FirewallPolicy :>
                       Post '[JSON] Operation

-- | Creates a new policy in the specified project using the data included in
-- the request.
--
-- /See:/ 'firewallPoliciesInsert' smart constructor.
data FirewallPoliciesInsert =
  FirewallPoliciesInsert'
    { _fpiRequestId :: !(Maybe Text)
    , _fpiPayload :: !FirewallPolicy
    , _fpiParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpiRequestId'
--
-- * 'fpiPayload'
--
-- * 'fpiParentId'
firewallPoliciesInsert
    :: FirewallPolicy -- ^ 'fpiPayload'
    -> FirewallPoliciesInsert
firewallPoliciesInsert pFpiPayload_ =
  FirewallPoliciesInsert'
    { _fpiRequestId = Nothing
    , _fpiPayload = pFpiPayload_
    , _fpiParentId = Nothing
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
fpiRequestId :: Lens' FirewallPoliciesInsert (Maybe Text)
fpiRequestId
  = lens _fpiRequestId (\ s a -> s{_fpiRequestId = a})

-- | Multipart request metadata.
fpiPayload :: Lens' FirewallPoliciesInsert FirewallPolicy
fpiPayload
  = lens _fpiPayload (\ s a -> s{_fpiPayload = a})

-- | Parent ID for this request. The ID can be either be
-- \"folders\/[FOLDER_ID]\" if the parent is a folder or
-- \"organizations\/[ORGANIZATION_ID]\" if the parent is an organization.
fpiParentId :: Lens' FirewallPoliciesInsert (Maybe Text)
fpiParentId
  = lens _fpiParentId (\ s a -> s{_fpiParentId = a})

instance GoogleRequest FirewallPoliciesInsert where
        type Rs FirewallPoliciesInsert = Operation
        type Scopes FirewallPoliciesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesInsert'{..}
          = go _fpiRequestId _fpiParentId (Just AltJSON)
              _fpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesInsertResource)
                      mempty
