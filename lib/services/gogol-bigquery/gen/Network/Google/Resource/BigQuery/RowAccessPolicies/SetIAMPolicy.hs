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
-- Module      : Network.Google.Resource.BigQuery.RowAccessPolicies.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.setIamPolicy@.
module Network.Google.Resource.BigQuery.RowAccessPolicies.SetIAMPolicy
    (
    -- * REST Resource
      RowAccessPoliciesSetIAMPolicyResource

    -- * Creating a Request
    , rowAccessPoliciesSetIAMPolicy
    , RowAccessPoliciesSetIAMPolicy

    -- * Request Lenses
    , rapsipPayload
    , rapsipResource
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.rowAccessPolicies.setIamPolicy@ method which the
-- 'RowAccessPoliciesSetIAMPolicy' request conforms to.
type RowAccessPoliciesSetIAMPolicyResource =
     "bigquery" :>
       "v2" :>
         CaptureMode "resource" "setIamPolicy" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] SetIAMPolicyRequest :>
               Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'rowAccessPoliciesSetIAMPolicy' smart constructor.
data RowAccessPoliciesSetIAMPolicy =
  RowAccessPoliciesSetIAMPolicy'
    { _rapsipPayload :: !SetIAMPolicyRequest
    , _rapsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowAccessPoliciesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rapsipPayload'
--
-- * 'rapsipResource'
rowAccessPoliciesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'rapsipPayload'
    -> Text -- ^ 'rapsipResource'
    -> RowAccessPoliciesSetIAMPolicy
rowAccessPoliciesSetIAMPolicy pRapsipPayload_ pRapsipResource_ =
  RowAccessPoliciesSetIAMPolicy'
    {_rapsipPayload = pRapsipPayload_, _rapsipResource = pRapsipResource_}


-- | Multipart request metadata.
rapsipPayload :: Lens' RowAccessPoliciesSetIAMPolicy SetIAMPolicyRequest
rapsipPayload
  = lens _rapsipPayload
      (\ s a -> s{_rapsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
rapsipResource :: Lens' RowAccessPoliciesSetIAMPolicy Text
rapsipResource
  = lens _rapsipResource
      (\ s a -> s{_rapsipResource = a})

instance GoogleRequest RowAccessPoliciesSetIAMPolicy
         where
        type Rs RowAccessPoliciesSetIAMPolicy = Policy
        type Scopes RowAccessPoliciesSetIAMPolicy =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient RowAccessPoliciesSetIAMPolicy'{..}
          = go _rapsipResource (Just AltJSON) _rapsipPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RowAccessPoliciesSetIAMPolicyResource)
                      mempty
