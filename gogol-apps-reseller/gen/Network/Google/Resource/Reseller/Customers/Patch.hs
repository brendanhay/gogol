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
module Network.Google.Resource.Reseller.Customers.Patch
    (
    -- * REST Resource
      CustomersPatchResource

    -- * Creating a Request
    , customersPatch'
    , CustomersPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpPayload
    , cpCustomerId
    , cpKey
    , cpOAuthToken
    , cpFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerCustomersPatch@ which the
-- 'CustomersPatch'' request conforms to.
type CustomersPatchResource =
     "customers" :>
       Capture "customerId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Customer :> Patch '[JSON] Customer

-- | Update a customer resource if one it exists and is owned by the
-- reseller. This method supports patch semantics.
--
-- /See:/ 'customersPatch'' smart constructor.
data CustomersPatch' = CustomersPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpPayload     :: !Customer
    , _cpCustomerId  :: !Text
    , _cpKey         :: !(Maybe Key)
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpPayload'
--
-- * 'cpCustomerId'
--
-- * 'cpKey'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
customersPatch'
    :: Customer -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> CustomersPatch'
customersPatch' pCpPayload_ pCpCustomerId_ =
    CustomersPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpPayload = pCpPayload_
    , _cpCustomerId = pCpCustomerId_
    , _cpKey = Nothing
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
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
cpUserIP :: Lens' CustomersPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | Multipart request metadata.
cpPayload :: Lens' CustomersPatch' Customer
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | Id of the Customer
cpCustomerId :: Lens' CustomersPatch' Text
cpCustomerId
  = lens _cpCustomerId (\ s a -> s{_cpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CustomersPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CustomersPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CustomersPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CustomersPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CustomersPatch' where
        type Rs CustomersPatch' = Customer
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u CustomersPatch'{..}
          = go _cpCustomerId _cpQuotaUser (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomersPatchResource)
                      r
                      u
