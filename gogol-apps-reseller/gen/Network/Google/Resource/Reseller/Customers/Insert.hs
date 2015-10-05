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
module Network.Google.Resource.Reseller.Customers.Insert
    (
    -- * REST Resource
      CustomersInsertResource

    -- * Creating a Request
    , customersInsert'
    , CustomersInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciPayload
    , ciKey
    , ciCustomerAuthToken
    , ciOAuthToken
    , ciFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerCustomersInsert@ which the
-- 'CustomersInsert'' request conforms to.
type CustomersInsertResource =
     "customers" :>
       QueryParam "customerAuthToken" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Customer :> Post '[JSON] Customer

-- | Creates a customer resource if one does not already exist.
--
-- /See:/ 'customersInsert'' smart constructor.
data CustomersInsert' = CustomersInsert'
    { _ciQuotaUser         :: !(Maybe Text)
    , _ciPrettyPrint       :: !Bool
    , _ciUserIP            :: !(Maybe Text)
    , _ciPayload           :: !Customer
    , _ciKey               :: !(Maybe AuthKey)
    , _ciCustomerAuthToken :: !(Maybe Text)
    , _ciOAuthToken        :: !(Maybe OAuthToken)
    , _ciFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciPayload'
--
-- * 'ciKey'
--
-- * 'ciCustomerAuthToken'
--
-- * 'ciOAuthToken'
--
-- * 'ciFields'
customersInsert'
    :: Customer -- ^ 'payload'
    -> CustomersInsert'
customersInsert' pCiPayload_ =
    CustomersInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciPayload = pCiPayload_
    , _ciKey = Nothing
    , _ciCustomerAuthToken = Nothing
    , _ciOAuthToken = Nothing
    , _ciFields = Nothing
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
ciUserIP :: Lens' CustomersInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | Multipart request metadata.
ciPayload :: Lens' CustomersInsert' Customer
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CustomersInsert' (Maybe AuthKey)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | An auth token needed for inserting a customer for which domain already
-- exists. Can be generated at
-- https:\/\/www.google.com\/a\/cpanel\/\/TransferToken. Optional.
ciCustomerAuthToken :: Lens' CustomersInsert' (Maybe Text)
ciCustomerAuthToken
  = lens _ciCustomerAuthToken
      (\ s a -> s{_ciCustomerAuthToken = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CustomersInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CustomersInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CustomersInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CustomersInsert' where
        type Rs CustomersInsert' = Customer
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u CustomersInsert'{..}
          = go _ciCustomerAuthToken _ciQuotaUser
              (Just _ciPrettyPrint)
              _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomersInsertResource)
                      r
                      u
