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
-- Module      : Network.Google.Resource.BigQuery.RowAccessPolicies.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.testIamPermissions@.
module Network.Google.Resource.BigQuery.RowAccessPolicies.TestIAMPermissions
    (
    -- * REST Resource
      RowAccessPoliciesTestIAMPermissionsResource

    -- * Creating a Request
    , rowAccessPoliciesTestIAMPermissions
    , RowAccessPoliciesTestIAMPermissions

    -- * Request Lenses
    , raptipPayload
    , raptipResource
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.rowAccessPolicies.testIamPermissions@ method which the
-- 'RowAccessPoliciesTestIAMPermissions' request conforms to.
type RowAccessPoliciesTestIAMPermissionsResource =
     "bigquery" :>
       "v2" :>
         CaptureMode "resource" "testIamPermissions" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] TestIAMPermissionsRequest :>
               Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'rowAccessPoliciesTestIAMPermissions' smart constructor.
data RowAccessPoliciesTestIAMPermissions =
  RowAccessPoliciesTestIAMPermissions'
    { _raptipPayload :: !TestIAMPermissionsRequest
    , _raptipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowAccessPoliciesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raptipPayload'
--
-- * 'raptipResource'
rowAccessPoliciesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'raptipPayload'
    -> Text -- ^ 'raptipResource'
    -> RowAccessPoliciesTestIAMPermissions
rowAccessPoliciesTestIAMPermissions pRaptipPayload_ pRaptipResource_ =
  RowAccessPoliciesTestIAMPermissions'
    {_raptipPayload = pRaptipPayload_, _raptipResource = pRaptipResource_}


-- | Multipart request metadata.
raptipPayload :: Lens' RowAccessPoliciesTestIAMPermissions TestIAMPermissionsRequest
raptipPayload
  = lens _raptipPayload
      (\ s a -> s{_raptipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
raptipResource :: Lens' RowAccessPoliciesTestIAMPermissions Text
raptipResource
  = lens _raptipResource
      (\ s a -> s{_raptipResource = a})

instance GoogleRequest
           RowAccessPoliciesTestIAMPermissions
         where
        type Rs RowAccessPoliciesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes RowAccessPoliciesTestIAMPermissions =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          RowAccessPoliciesTestIAMPermissions'{..}
          = go _raptipResource (Just AltJSON) _raptipPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RowAccessPoliciesTestIAMPermissionsResource)
                      mempty
