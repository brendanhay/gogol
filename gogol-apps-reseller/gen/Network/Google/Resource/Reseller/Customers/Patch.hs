{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Customers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a customer resource if one it exists and is owned by the
-- reseller. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerCustomersPatch@.
module Reseller.Customers.Patch
    (
    -- * REST Resource
      CustomersPatchAPI

    -- * Creating a Request
    , customersPatch
    , CustomersPatch

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpCustomerId
    , cpKey
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerCustomersPatch@ which the
-- 'CustomersPatch' request conforms to.
type CustomersPatchAPI =
     "customers" :>
       Capture "customerId" Text :> Patch '[JSON] Customer

-- | Update a customer resource if one it exists and is owned by the
-- reseller. This method supports patch semantics.
--
-- /See:/ 'customersPatch' smart constructor.
data CustomersPatch = CustomersPatch
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpCustomerId  :: !Text
    , _cpKey         :: !(Maybe Text)
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpCustomerId'
--
-- * 'cpKey'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
customersPatch
    :: Text -- ^ 'customerId'
    -> CustomersPatch
customersPatch pCpCustomerId_ =
    CustomersPatch
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpCustomerId = pCpCustomerId_
    , _cpKey = Nothing
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CustomersPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CustomersPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' CustomersPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | Id of the Customer
cpCustomerId :: Lens' CustomersPatch' Text
cpCustomerId
  = lens _cpCustomerId (\ s a -> s{_cpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CustomersPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CustomersPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CustomersPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CustomersPatch' Text
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CustomersPatch' where
        type Rs CustomersPatch' = Customer
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u CustomersPatch{..}
          = go _cpQuotaUser _cpPrettyPrint _cpUserIp
              _cpCustomerId
              _cpKey
              _cpOauthToken
              _cpFields
              _cpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CustomersPatchAPI)
                      r
                      u
