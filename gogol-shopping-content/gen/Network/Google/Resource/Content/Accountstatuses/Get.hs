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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the status of a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountstatusesGet@.
module Network.Google.Resource.Content.Accountstatuses.Get
    (
    -- * REST Resource
      AccountstatusesGetResource

    -- * Creating a Request
    , accountstatusesGet'
    , AccountstatusesGet'

    -- * Request Lenses
    , aggQuotaUser
    , aggMerchantId
    , aggPrettyPrint
    , aggUserIP
    , aggAccountId
    , aggKey
    , aggOAuthToken
    , aggFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountstatusesGet@ method which the
-- 'AccountstatusesGet'' request conforms to.
type AccountstatusesGetResource =
     Capture "merchantId" Word64 :>
       "accountstatuses" :>
         Capture "accountId" Word64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] AccountStatus

-- | Retrieves the status of a Merchant Center account.
--
-- /See:/ 'accountstatusesGet'' smart constructor.
data AccountstatusesGet' = AccountstatusesGet'
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggMerchantId  :: !Word64
    , _aggPrettyPrint :: !Bool
    , _aggUserIP      :: !(Maybe Text)
    , _aggAccountId   :: !Word64
    , _aggKey         :: !(Maybe AuthKey)
    , _aggOAuthToken  :: !(Maybe OAuthToken)
    , _aggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggMerchantId'
--
-- * 'aggPrettyPrint'
--
-- * 'aggUserIP'
--
-- * 'aggAccountId'
--
-- * 'aggKey'
--
-- * 'aggOAuthToken'
--
-- * 'aggFields'
accountstatusesGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountstatusesGet'
accountstatusesGet' pAggMerchantId_ pAggAccountId_ =
    AccountstatusesGet'
    { _aggQuotaUser = Nothing
    , _aggMerchantId = pAggMerchantId_
    , _aggPrettyPrint = True
    , _aggUserIP = Nothing
    , _aggAccountId = pAggAccountId_
    , _aggKey = Nothing
    , _aggOAuthToken = Nothing
    , _aggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AccountstatusesGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | The ID of the managing account.
aggMerchantId :: Lens' AccountstatusesGet' Word64
aggMerchantId
  = lens _aggMerchantId
      (\ s a -> s{_aggMerchantId = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AccountstatusesGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIP :: Lens' AccountstatusesGet' (Maybe Text)
aggUserIP
  = lens _aggUserIP (\ s a -> s{_aggUserIP = a})

-- | The ID of the account.
aggAccountId :: Lens' AccountstatusesGet' Word64
aggAccountId
  = lens _aggAccountId (\ s a -> s{_aggAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AccountstatusesGet' (Maybe AuthKey)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | OAuth 2.0 token for the current user.
aggOAuthToken :: Lens' AccountstatusesGet' (Maybe OAuthToken)
aggOAuthToken
  = lens _aggOAuthToken
      (\ s a -> s{_aggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AccountstatusesGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

instance GoogleAuth AccountstatusesGet' where
        _AuthKey = aggKey . _Just
        _AuthToken = aggOAuthToken . _Just

instance GoogleRequest AccountstatusesGet' where
        type Rs AccountstatusesGet' = AccountStatus
        request = requestWith shoppingContentRequest
        requestWith rq AccountstatusesGet'{..}
          = go _aggMerchantId _aggAccountId _aggQuotaUser
              (Just _aggPrettyPrint)
              _aggUserIP
              _aggFields
              _aggKey
              _aggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountstatusesGetResource)
                      rq
