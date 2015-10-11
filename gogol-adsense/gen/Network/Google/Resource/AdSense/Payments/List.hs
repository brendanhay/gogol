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
-- Module      : Network.Google.Resource.AdSense.Payments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the payments for this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsensePaymentsList@.
module Network.Google.Resource.AdSense.Payments.List
    (
    -- * REST Resource
      PaymentsListResource

    -- * Creating a Request
    , paymentsList'
    , PaymentsList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIP
    , plKey
    , plOAuthToken
    , plFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensePaymentsList@ method which the
-- 'PaymentsList'' request conforms to.
type PaymentsListResource =
     "payments" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 Header "Authorization" OAuthToken :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Payments

-- | List the payments for this AdSense account.
--
-- /See:/ 'paymentsList'' smart constructor.
data PaymentsList' = PaymentsList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIP      :: !(Maybe Text)
    , _plKey         :: !(Maybe AuthKey)
    , _plOAuthToken  :: !(Maybe OAuthToken)
    , _plFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PaymentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIP'
--
-- * 'plKey'
--
-- * 'plOAuthToken'
--
-- * 'plFields'
paymentsList'
    :: PaymentsList'
paymentsList' =
    PaymentsList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plKey = Nothing
    , _plOAuthToken = Nothing
    , _plFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PaymentsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PaymentsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIP :: Lens' PaymentsList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PaymentsList' (Maybe AuthKey)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' PaymentsList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PaymentsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth PaymentsList' where
        _AuthKey = plKey . _Just
        _AuthToken = plOAuthToken . _Just

instance GoogleRequest PaymentsList' where
        type Rs PaymentsList' = Payments
        request = requestWith adSenseRequest
        requestWith rq PaymentsList'{..}
          = go _plQuotaUser (Just _plPrettyPrint) _plUserIP
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PaymentsListResource)
                      rq
