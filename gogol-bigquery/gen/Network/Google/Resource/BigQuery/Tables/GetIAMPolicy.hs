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
-- Module      : Network.Google.Resource.BigQuery.Tables.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.getIamPolicy@.
module Network.Google.Resource.BigQuery.Tables.GetIAMPolicy
    (
    -- * REST Resource
      TablesGetIAMPolicyResource

    -- * Creating a Request
    , tablesGetIAMPolicy
    , TablesGetIAMPolicy

    -- * Request Lenses
    , tgipPayload
    , tgipResource
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.tables.getIamPolicy@ method which the
-- 'TablesGetIAMPolicy' request conforms to.
type TablesGetIAMPolicyResource =
     "bigquery" :>
       "v2" :>
         CaptureMode "resource" "getIamPolicy" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] GetIAMPolicyRequest :>
               Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'tablesGetIAMPolicy' smart constructor.
data TablesGetIAMPolicy =
  TablesGetIAMPolicy'
    { _tgipPayload :: !GetIAMPolicyRequest
    , _tgipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TablesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgipPayload'
--
-- * 'tgipResource'
tablesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'tgipPayload'
    -> Text -- ^ 'tgipResource'
    -> TablesGetIAMPolicy
tablesGetIAMPolicy pTgipPayload_ pTgipResource_ =
  TablesGetIAMPolicy'
    {_tgipPayload = pTgipPayload_, _tgipResource = pTgipResource_}


-- | Multipart request metadata.
tgipPayload :: Lens' TablesGetIAMPolicy GetIAMPolicyRequest
tgipPayload
  = lens _tgipPayload (\ s a -> s{_tgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
tgipResource :: Lens' TablesGetIAMPolicy Text
tgipResource
  = lens _tgipResource (\ s a -> s{_tgipResource = a})

instance GoogleRequest TablesGetIAMPolicy where
        type Rs TablesGetIAMPolicy = Policy
        type Scopes TablesGetIAMPolicy =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TablesGetIAMPolicy'{..}
          = go _tgipResource (Just AltJSON) _tgipPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesGetIAMPolicyResource)
                      mempty
