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
-- Module      : Network.Google.Resource.Reseller.Customers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a customer resource if one it exists and is owned by the
-- reseller.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerCustomersUpdate@.
module Network.Google.Resource.Reseller.Customers.Update
    (
    -- * REST Resource
      CustomersUpdateResource

    -- * Creating a Request
    , customersUpdate'
    , CustomersUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIP
    , cuPayload
    , cuCustomerId
    , cuKey
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerCustomersUpdate@ which the
-- 'CustomersUpdate'' request conforms to.
type CustomersUpdateResource =
     "customers" :>
       Capture "customerId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Customer :> Put '[JSON] Customer

-- | Update a customer resource if one it exists and is owned by the
-- reseller.
--
-- /See:/ 'customersUpdate'' smart constructor.
data CustomersUpdate' = CustomersUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuPayload     :: !Customer
    , _cuCustomerId  :: !Text
    , _cuKey         :: !(Maybe Key)
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuPayload'
--
-- * 'cuCustomerId'
--
-- * 'cuKey'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
customersUpdate'
    :: Customer -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> CustomersUpdate'
customersUpdate' pCuPayload_ pCuCustomerId_ =
    CustomersUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuPayload = pCuPayload_
    , _cuCustomerId = pCuCustomerId_
    , _cuKey = Nothing
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CustomersUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CustomersUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' CustomersUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | Multipart request metadata.
cuPayload :: Lens' CustomersUpdate' Customer
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | Id of the Customer
cuCustomerId :: Lens' CustomersUpdate' Text
cuCustomerId
  = lens _cuCustomerId (\ s a -> s{_cuCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CustomersUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CustomersUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CustomersUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CustomersUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest CustomersUpdate' where
        type Rs CustomersUpdate' = Customer
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u CustomersUpdate'{..}
          = go _cuCustomerId _cuQuotaUser (Just _cuPrettyPrint)
              _cuUserIP
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomersUpdateResource)
                      r
                      u
