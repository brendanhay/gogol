{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates\/Transfers a subscription for the customer.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsInsert@.
module Network.Google.Resource.Reseller.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert'
    , SubscriptionsInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIP
    , siPayload
    , siCustomerId
    , siKey
    , siCustomerAuthToken
    , siOAuthToken
    , siFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsInsert@ which the
-- 'SubscriptionsInsert'' request conforms to.
type SubscriptionsInsertResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           QueryParam "customerAuthToken" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Subscription :>
                             Post '[JSON] Subscription

-- | Creates\/Transfers a subscription for the customer.
--
-- /See:/ 'subscriptionsInsert'' smart constructor.
data SubscriptionsInsert' = SubscriptionsInsert'
    { _siQuotaUser         :: !(Maybe Text)
    , _siPrettyPrint       :: !Bool
    , _siUserIP            :: !(Maybe Text)
    , _siPayload           :: !Subscription
    , _siCustomerId        :: !Text
    , _siKey               :: !(Maybe Key)
    , _siCustomerAuthToken :: !(Maybe Text)
    , _siOAuthToken        :: !(Maybe OAuthToken)
    , _siFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIP'
--
-- * 'siPayload'
--
-- * 'siCustomerId'
--
-- * 'siKey'
--
-- * 'siCustomerAuthToken'
--
-- * 'siOAuthToken'
--
-- * 'siFields'
subscriptionsInsert'
    :: Subscription -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> SubscriptionsInsert'
subscriptionsInsert' pSiPayload_ pSiCustomerId_ =
    SubscriptionsInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siPayload = pSiPayload_
    , _siCustomerId = pSiCustomerId_
    , _siKey = Nothing
    , _siCustomerAuthToken = Nothing
    , _siOAuthToken = Nothing
    , _siFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SubscriptionsInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SubscriptionsInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIP :: Lens' SubscriptionsInsert' (Maybe Text)
siUserIP = lens _siUserIP (\ s a -> s{_siUserIP = a})

-- | Multipart request metadata.
siPayload :: Lens' SubscriptionsInsert' Subscription
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Id of the Customer
siCustomerId :: Lens' SubscriptionsInsert' Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SubscriptionsInsert' (Maybe Key)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | An auth token needed for transferring a subscription. Can be generated
-- at https:\/\/www.google.com\/a\/cpanel\/customer-domain\/TransferToken.
-- Optional.
siCustomerAuthToken :: Lens' SubscriptionsInsert' (Maybe Text)
siCustomerAuthToken
  = lens _siCustomerAuthToken
      (\ s a -> s{_siCustomerAuthToken = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' SubscriptionsInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SubscriptionsInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth SubscriptionsInsert' where
        authKey = siKey . _Just
        authToken = siOAuthToken . _Just

instance GoogleRequest SubscriptionsInsert' where
        type Rs SubscriptionsInsert' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsInsert'{..}
          = go _siCustomerId _siCustomerAuthToken _siQuotaUser
              (Just _siPrettyPrint)
              _siUserIP
              _siFields
              _siKey
              _siOAuthToken
              (Just AltJSON)
              _siPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      r
                      u
