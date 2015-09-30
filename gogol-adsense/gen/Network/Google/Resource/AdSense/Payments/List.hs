{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module AdSense.Payments.List
    (
    -- * REST Resource
      PaymentsListAPI

    -- * Creating a Request
    , paymentsList
    , PaymentsList

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIp
    , plKey
    , plOauthToken
    , plFields
    , plAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensePaymentsList@ which the
-- 'PaymentsList' request conforms to.
type PaymentsListAPI =
     "payments" :> Get '[JSON] Payments

-- | List the payments for this AdSense account.
--
-- /See:/ 'paymentsList' smart constructor.
data PaymentsList = PaymentsList
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIp      :: !(Maybe Text)
    , _plKey         :: !(Maybe Text)
    , _plOauthToken  :: !(Maybe Text)
    , _plFields      :: !(Maybe Text)
    , _plAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PaymentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plKey'
--
-- * 'plOauthToken'
--
-- * 'plFields'
--
-- * 'plAlt'
paymentsList
    :: PaymentsList
paymentsList =
    PaymentsList
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plKey = Nothing
    , _plOauthToken = Nothing
    , _plFields = Nothing
    , _plAlt = "json"
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
plUserIp :: Lens' PaymentsList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PaymentsList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PaymentsList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PaymentsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PaymentsList' Text
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PaymentsList' where
        type Rs PaymentsList' = Payments
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u PaymentsList{..}
          = go _plQuotaUser _plPrettyPrint _plUserIp _plKey
              _plOauthToken
              _plFields
              _plAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PaymentsListAPI) r
                      u
