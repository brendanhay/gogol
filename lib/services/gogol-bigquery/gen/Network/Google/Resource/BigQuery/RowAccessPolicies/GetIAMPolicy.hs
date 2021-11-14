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
-- Module      : Network.Google.Resource.BigQuery.RowAccessPolicies.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.getIamPolicy@.
module Network.Google.Resource.BigQuery.RowAccessPolicies.GetIAMPolicy
    (
    -- * REST Resource
      RowAccessPoliciesGetIAMPolicyResource

    -- * Creating a Request
    , rowAccessPoliciesGetIAMPolicy
    , RowAccessPoliciesGetIAMPolicy

    -- * Request Lenses
    , rapgipPayload
    , rapgipResource
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.rowAccessPolicies.getIamPolicy@ method which the
-- 'RowAccessPoliciesGetIAMPolicy' request conforms to.
type RowAccessPoliciesGetIAMPolicyResource =
     "bigquery" :>
       "v2" :>
         CaptureMode "resource" "getIamPolicy" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] GetIAMPolicyRequest :>
               Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'rowAccessPoliciesGetIAMPolicy' smart constructor.
data RowAccessPoliciesGetIAMPolicy =
  RowAccessPoliciesGetIAMPolicy'
    { _rapgipPayload :: !GetIAMPolicyRequest
    , _rapgipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowAccessPoliciesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rapgipPayload'
--
-- * 'rapgipResource'
rowAccessPoliciesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'rapgipPayload'
    -> Text -- ^ 'rapgipResource'
    -> RowAccessPoliciesGetIAMPolicy
rowAccessPoliciesGetIAMPolicy pRapgipPayload_ pRapgipResource_ =
  RowAccessPoliciesGetIAMPolicy'
    {_rapgipPayload = pRapgipPayload_, _rapgipResource = pRapgipResource_}


-- | Multipart request metadata.
rapgipPayload :: Lens' RowAccessPoliciesGetIAMPolicy GetIAMPolicyRequest
rapgipPayload
  = lens _rapgipPayload
      (\ s a -> s{_rapgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
rapgipResource :: Lens' RowAccessPoliciesGetIAMPolicy Text
rapgipResource
  = lens _rapgipResource
      (\ s a -> s{_rapgipResource = a})

instance GoogleRequest RowAccessPoliciesGetIAMPolicy
         where
        type Rs RowAccessPoliciesGetIAMPolicy = Policy
        type Scopes RowAccessPoliciesGetIAMPolicy =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient RowAccessPoliciesGetIAMPolicy'{..}
          = go _rapgipResource (Just AltJSON) _rapgipPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RowAccessPoliciesGetIAMPolicyResource)
                      mempty
