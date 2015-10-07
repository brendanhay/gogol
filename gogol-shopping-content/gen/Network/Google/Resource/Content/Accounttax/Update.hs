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
-- Module      : Network.Google.Resource.Content.Accounttax.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the tax settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxUpdate@.
module Network.Google.Resource.Content.Accounttax.Update
    (
    -- * REST Resource
      AccounttaxUpdateResource

    -- * Creating a Request
    , accounttaxUpdate'
    , AccounttaxUpdate'

    -- * Request Lenses
    , aQuotaUser
    , aMerchantId
    , aPrettyPrint
    , aUserIP
    , aPayload
    , aAccountId
    , aKey
    , aOAuthToken
    , aDryRun
    , aFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxUpdate@ method which the
-- 'AccounttaxUpdate'' request conforms to.
type AccounttaxUpdateResource =
     Capture "merchantId" Word64 :>
       "accounttax" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountTax :> Put '[JSON] AccountTax

-- | Updates the tax settings of the account.
--
-- /See:/ 'accounttaxUpdate'' smart constructor.
data AccounttaxUpdate' = AccounttaxUpdate'
    { _aQuotaUser   :: !(Maybe Text)
    , _aMerchantId  :: !Word64
    , _aPrettyPrint :: !Bool
    , _aUserIP      :: !(Maybe Text)
    , _aPayload     :: !AccountTax
    , _aAccountId   :: !Word64
    , _aKey         :: !(Maybe AuthKey)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aDryRun      :: !(Maybe Bool)
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aMerchantId'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIP'
--
-- * 'aPayload'
--
-- * 'aAccountId'
--
-- * 'aKey'
--
-- * 'aOAuthToken'
--
-- * 'aDryRun'
--
-- * 'aFields'
accounttaxUpdate'
    :: Word64 -- ^ 'merchantId'
    -> AccountTax -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccounttaxUpdate'
accounttaxUpdate' pAMerchantId_ pAPayload_ pAAccountId_ =
    AccounttaxUpdate'
    { _aQuotaUser = Nothing
    , _aMerchantId = pAMerchantId_
    , _aPrettyPrint = True
    , _aUserIP = Nothing
    , _aPayload = pAPayload_
    , _aAccountId = pAAccountId_
    , _aKey = Nothing
    , _aOAuthToken = Nothing
    , _aDryRun = Nothing
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AccounttaxUpdate' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | The ID of the managing account.
aMerchantId :: Lens' AccounttaxUpdate' Word64
aMerchantId
  = lens _aMerchantId (\ s a -> s{_aMerchantId = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AccounttaxUpdate' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' AccounttaxUpdate' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | Multipart request metadata.
aPayload :: Lens' AccounttaxUpdate' AccountTax
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | The ID of the account for which to get\/update account tax settings.
aAccountId :: Lens' AccounttaxUpdate' Word64
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccounttaxUpdate' (Maybe AuthKey)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AccounttaxUpdate' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Flag to run the request in dry-run mode.
aDryRun :: Lens' AccounttaxUpdate' (Maybe Bool)
aDryRun = lens _aDryRun (\ s a -> s{_aDryRun = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccounttaxUpdate' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth AccounttaxUpdate' where
        _AuthKey = aKey . _Just
        _AuthToken = aOAuthToken . _Just

instance GoogleRequest AccounttaxUpdate' where
        type Rs AccounttaxUpdate' = AccountTax
        request = requestWith shoppingContentRequest
        requestWith rq AccounttaxUpdate'{..}
          = go _aMerchantId _aAccountId _aDryRun _aQuotaUser
              (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
              _aPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccounttaxUpdateResource)
                      rq
