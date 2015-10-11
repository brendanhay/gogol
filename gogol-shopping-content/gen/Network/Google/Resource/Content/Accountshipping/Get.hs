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
-- Module      : Network.Google.Resource.Content.Accountshipping.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingGet@.
module Network.Google.Resource.Content.Accountshipping.Get
    (
    -- * REST Resource
      AccountshippingGetResource

    -- * Creating a Request
    , accountshippingGet'
    , AccountshippingGet'

    -- * Request Lenses
    , agQuotaUser
    , agMerchantId
    , agPrettyPrint
    , agUserIP
    , agAccountId
    , agKey
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingGet@ method which the
-- 'AccountshippingGet'' request conforms to.
type AccountshippingGetResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AccountShipping

-- | Retrieves the shipping settings of the account.
--
-- /See:/ 'accountshippingGet'' smart constructor.
data AccountshippingGet' = AccountshippingGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agMerchantId  :: !Word64
    , _agPrettyPrint :: !Bool
    , _agUserIP      :: !(Maybe Text)
    , _agAccountId   :: !Word64
    , _agKey         :: !(Maybe AuthKey)
    , _agOAuthToken  :: !(Maybe OAuthToken)
    , _agFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agMerchantId'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agAccountId'
--
-- * 'agKey'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
accountshippingGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountshippingGet'
accountshippingGet' pAgMerchantId_ pAgAccountId_ =
    AccountshippingGet'
    { _agQuotaUser = Nothing
    , _agMerchantId = pAgMerchantId_
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agAccountId = pAgAccountId_
    , _agKey = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AccountshippingGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | The ID of the managing account.
agMerchantId :: Lens' AccountshippingGet' Word64
agMerchantId
  = lens _agMerchantId (\ s a -> s{_agMerchantId = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AccountshippingGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' AccountshippingGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
agAccountId :: Lens' AccountshippingGet' Word64
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AccountshippingGet' (Maybe AuthKey)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AccountshippingGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AccountshippingGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth AccountshippingGet' where
        _AuthKey = agKey . _Just
        _AuthToken = agOAuthToken . _Just

instance GoogleRequest AccountshippingGet' where
        type Rs AccountshippingGet' = AccountShipping
        request = requestWith shoppingContentRequest
        requestWith rq AccountshippingGet'{..}
          = go _agMerchantId _agAccountId _agQuotaUser
              (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountshippingGetResource)
                      rq
