{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Customers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a customer resource if one does not already exist.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerCustomersInsert@.
module Reseller.Customers.Insert
    (
    -- * REST Resource
      CustomersInsertAPI

    -- * Creating a Request
    , customersInsert
    , CustomersInsert

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIp
    , ciKey
    , ciCustomerAuthToken
    , ciOauthToken
    , ciFields
    , ciAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerCustomersInsert@ which the
-- 'CustomersInsert' request conforms to.
type CustomersInsertAPI =
     "customers" :>
       QueryParam "customerAuthToken" Text :>
         Post '[JSON] Customer

-- | Creates a customer resource if one does not already exist.
--
-- /See:/ 'customersInsert' smart constructor.
data CustomersInsert = CustomersInsert
    { _ciQuotaUser         :: !(Maybe Text)
    , _ciPrettyPrint       :: !Bool
    , _ciUserIp            :: !(Maybe Text)
    , _ciKey               :: !(Maybe Text)
    , _ciCustomerAuthToken :: !(Maybe Text)
    , _ciOauthToken        :: !(Maybe Text)
    , _ciFields            :: !(Maybe Text)
    , _ciAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciKey'
--
-- * 'ciCustomerAuthToken'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
customersInsert
    :: CustomersInsert
customersInsert =
    CustomersInsert
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciKey = Nothing
    , _ciCustomerAuthToken = Nothing
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CustomersInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CustomersInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' CustomersInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CustomersInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | An auth token needed for inserting a customer for which domain already
-- exists. Can be generated at
-- https:\/\/www.google.com\/a\/cpanel\/\/TransferToken. Optional.
ciCustomerAuthToken :: Lens' CustomersInsert' (Maybe Text)
ciCustomerAuthToken
  = lens _ciCustomerAuthToken
      (\ s a -> s{_ciCustomerAuthToken = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' CustomersInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CustomersInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' CustomersInsert' Text
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest CustomersInsert' where
        type Rs CustomersInsert' = Customer
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u CustomersInsert{..}
          = go _ciQuotaUser _ciPrettyPrint _ciUserIp _ciKey
              _ciCustomerAuthToken
              _ciOauthToken
              _ciFields
              _ciAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CustomersInsertAPI)
                      r
                      u
