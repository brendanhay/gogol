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
-- Module      : Network.Google.Resource.BigQuery.Tables.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.setIamPolicy@.
module Network.Google.Resource.BigQuery.Tables.SetIAMPolicy
    (
    -- * REST Resource
      TablesSetIAMPolicyResource

    -- * Creating a Request
    , tablesSetIAMPolicy
    , TablesSetIAMPolicy

    -- * Request Lenses
    , tsipPayload
    , tsipResource
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.tables.setIamPolicy@ method which the
-- 'TablesSetIAMPolicy' request conforms to.
type TablesSetIAMPolicyResource =
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
-- /See:/ 'tablesSetIAMPolicy' smart constructor.
data TablesSetIAMPolicy =
  TablesSetIAMPolicy'
    { _tsipPayload :: !SetIAMPolicyRequest
    , _tsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TablesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsipPayload'
--
-- * 'tsipResource'
tablesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'tsipPayload'
    -> Text -- ^ 'tsipResource'
    -> TablesSetIAMPolicy
tablesSetIAMPolicy pTsipPayload_ pTsipResource_ =
  TablesSetIAMPolicy'
    {_tsipPayload = pTsipPayload_, _tsipResource = pTsipResource_}


-- | Multipart request metadata.
tsipPayload :: Lens' TablesSetIAMPolicy SetIAMPolicyRequest
tsipPayload
  = lens _tsipPayload (\ s a -> s{_tsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
tsipResource :: Lens' TablesSetIAMPolicy Text
tsipResource
  = lens _tsipResource (\ s a -> s{_tsipResource = a})

instance GoogleRequest TablesSetIAMPolicy where
        type Rs TablesSetIAMPolicy = Policy
        type Scopes TablesSetIAMPolicy =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient TablesSetIAMPolicy'{..}
          = go _tsipResource (Just AltJSON) _tsipPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesSetIAMPolicyResource)
                      mempty
