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
-- Module      : Network.Google.Resource.BigQuery.Tables.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.testIamPermissions@.
module Network.Google.Resource.BigQuery.Tables.TestIAMPermissions
    (
    -- * REST Resource
      TablesTestIAMPermissionsResource

    -- * Creating a Request
    , tablesTestIAMPermissions
    , TablesTestIAMPermissions

    -- * Request Lenses
    , ttipPayload
    , ttipResource
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.tables.testIamPermissions@ method which the
-- 'TablesTestIAMPermissions' request conforms to.
type TablesTestIAMPermissionsResource =
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
-- /See:/ 'tablesTestIAMPermissions' smart constructor.
data TablesTestIAMPermissions =
  TablesTestIAMPermissions'
    { _ttipPayload :: !TestIAMPermissionsRequest
    , _ttipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TablesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttipPayload'
--
-- * 'ttipResource'
tablesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'ttipPayload'
    -> Text -- ^ 'ttipResource'
    -> TablesTestIAMPermissions
tablesTestIAMPermissions pTtipPayload_ pTtipResource_ =
  TablesTestIAMPermissions'
    {_ttipPayload = pTtipPayload_, _ttipResource = pTtipResource_}


-- | Multipart request metadata.
ttipPayload :: Lens' TablesTestIAMPermissions TestIAMPermissionsRequest
ttipPayload
  = lens _ttipPayload (\ s a -> s{_ttipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
ttipResource :: Lens' TablesTestIAMPermissions Text
ttipResource
  = lens _ttipResource (\ s a -> s{_ttipResource = a})

instance GoogleRequest TablesTestIAMPermissions where
        type Rs TablesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes TablesTestIAMPermissions =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TablesTestIAMPermissions'{..}
          = go _ttipResource (Just AltJSON) _ttipPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesTestIAMPermissionsResource)
                      mempty
