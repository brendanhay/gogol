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
-- Module      : Network.Google.Resource.Content.Accounttax.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the tax settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxGet@.
module Network.Google.Resource.Content.Accounttax.Get
    (
    -- * REST Resource
      AccounttaxGetResource

    -- * Creating a Request
    , accounttaxGet'
    , AccounttaxGet'

    -- * Request Lenses
    , acccQuotaUser
    , acccMerchantId
    , acccPrettyPrint
    , acccUserIP
    , acccAccountId
    , acccKey
    , acccOAuthToken
    , acccFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxGet@ method which the
-- 'AccounttaxGet'' request conforms to.
type AccounttaxGetResource =
     Capture "merchantId" Word64 :>
       "accounttax" :>
         Capture "accountId" Word64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] AccountTax

-- | Retrieves the tax settings of the account.
--
-- /See:/ 'accounttaxGet'' smart constructor.
data AccounttaxGet' = AccounttaxGet'
    { _acccQuotaUser   :: !(Maybe Text)
    , _acccMerchantId  :: !Word64
    , _acccPrettyPrint :: !Bool
    , _acccUserIP      :: !(Maybe Text)
    , _acccAccountId   :: !Word64
    , _acccKey         :: !(Maybe AuthKey)
    , _acccOAuthToken  :: !(Maybe OAuthToken)
    , _acccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccQuotaUser'
--
-- * 'acccMerchantId'
--
-- * 'acccPrettyPrint'
--
-- * 'acccUserIP'
--
-- * 'acccAccountId'
--
-- * 'acccKey'
--
-- * 'acccOAuthToken'
--
-- * 'acccFields'
accounttaxGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccounttaxGet'
accounttaxGet' pAcccMerchantId_ pAcccAccountId_ =
    AccounttaxGet'
    { _acccQuotaUser = Nothing
    , _acccMerchantId = pAcccMerchantId_
    , _acccPrettyPrint = True
    , _acccUserIP = Nothing
    , _acccAccountId = pAcccAccountId_
    , _acccKey = Nothing
    , _acccOAuthToken = Nothing
    , _acccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acccQuotaUser :: Lens' AccounttaxGet' (Maybe Text)
acccQuotaUser
  = lens _acccQuotaUser
      (\ s a -> s{_acccQuotaUser = a})

-- | The ID of the managing account.
acccMerchantId :: Lens' AccounttaxGet' Word64
acccMerchantId
  = lens _acccMerchantId
      (\ s a -> s{_acccMerchantId = a})

-- | Returns response with indentations and line breaks.
acccPrettyPrint :: Lens' AccounttaxGet' Bool
acccPrettyPrint
  = lens _acccPrettyPrint
      (\ s a -> s{_acccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acccUserIP :: Lens' AccounttaxGet' (Maybe Text)
acccUserIP
  = lens _acccUserIP (\ s a -> s{_acccUserIP = a})

-- | The ID of the account for which to get\/update account tax settings.
acccAccountId :: Lens' AccounttaxGet' Word64
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acccKey :: Lens' AccounttaxGet' (Maybe AuthKey)
acccKey = lens _acccKey (\ s a -> s{_acccKey = a})

-- | OAuth 2.0 token for the current user.
acccOAuthToken :: Lens' AccounttaxGet' (Maybe OAuthToken)
acccOAuthToken
  = lens _acccOAuthToken
      (\ s a -> s{_acccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acccFields :: Lens' AccounttaxGet' (Maybe Text)
acccFields
  = lens _acccFields (\ s a -> s{_acccFields = a})

instance GoogleAuth AccounttaxGet' where
        _AuthKey = acccKey . _Just
        _AuthToken = acccOAuthToken . _Just

instance GoogleRequest AccounttaxGet' where
        type Rs AccounttaxGet' = AccountTax
        request = requestWith shoppingContentRequest
        requestWith rq AccounttaxGet'{..}
          = go _acccMerchantId _acccAccountId _acccQuotaUser
              (Just _acccPrettyPrint)
              _acccUserIP
              _acccFields
              _acccKey
              _acccOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AccounttaxGetResource)
                      rq
