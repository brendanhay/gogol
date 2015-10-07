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
-- Module      : Network.Google.Resource.Content.Accountshipping.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the shipping settings of the account. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingPatch@.
module Network.Google.Resource.Content.Accountshipping.Patch
    (
    -- * REST Resource
      AccountshippingPatchResource

    -- * Creating a Request
    , accountshippingPatch'
    , AccountshippingPatch'

    -- * Request Lenses
    , apQuotaUser
    , apMerchantId
    , apPrettyPrint
    , apUserIP
    , apPayload
    , apAccountId
    , apKey
    , apOAuthToken
    , apDryRun
    , apFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingPatch@ method which the
-- 'AccountshippingPatch'' request conforms to.
type AccountshippingPatchResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountShipping :>
                             Patch '[JSON] AccountShipping

-- | Updates the shipping settings of the account. This method supports patch
-- semantics.
--
-- /See:/ 'accountshippingPatch'' smart constructor.
data AccountshippingPatch' = AccountshippingPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apMerchantId  :: !Word64
    , _apPrettyPrint :: !Bool
    , _apUserIP      :: !(Maybe Text)
    , _apPayload     :: !AccountShipping
    , _apAccountId   :: !Word64
    , _apKey         :: !(Maybe AuthKey)
    , _apOAuthToken  :: !(Maybe OAuthToken)
    , _apDryRun      :: !(Maybe Bool)
    , _apFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apMerchantId'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIP'
--
-- * 'apPayload'
--
-- * 'apAccountId'
--
-- * 'apKey'
--
-- * 'apOAuthToken'
--
-- * 'apDryRun'
--
-- * 'apFields'
accountshippingPatch'
    :: Word64 -- ^ 'merchantId'
    -> AccountShipping -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountshippingPatch'
accountshippingPatch' pApMerchantId_ pApPayload_ pApAccountId_ =
    AccountshippingPatch'
    { _apQuotaUser = Nothing
    , _apMerchantId = pApMerchantId_
    , _apPrettyPrint = True
    , _apUserIP = Nothing
    , _apPayload = pApPayload_
    , _apAccountId = pApAccountId_
    , _apKey = Nothing
    , _apOAuthToken = Nothing
    , _apDryRun = Nothing
    , _apFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AccountshippingPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | The ID of the managing account.
apMerchantId :: Lens' AccountshippingPatch' Word64
apMerchantId
  = lens _apMerchantId (\ s a -> s{_apMerchantId = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AccountshippingPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIP :: Lens' AccountshippingPatch' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | Multipart request metadata.
apPayload :: Lens' AccountshippingPatch' AccountShipping
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
apAccountId :: Lens' AccountshippingPatch' Word64
apAccountId
  = lens _apAccountId (\ s a -> s{_apAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AccountshippingPatch' (Maybe AuthKey)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' AccountshippingPatch' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Flag to run the request in dry-run mode.
apDryRun :: Lens' AccountshippingPatch' (Maybe Bool)
apDryRun = lens _apDryRun (\ s a -> s{_apDryRun = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AccountshippingPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth AccountshippingPatch' where
        _AuthKey = apKey . _Just
        _AuthToken = apOAuthToken . _Just

instance GoogleRequest AccountshippingPatch' where
        type Rs AccountshippingPatch' = AccountShipping
        request = requestWith shoppingContentRequest
        requestWith rq AccountshippingPatch'{..}
          = go _apMerchantId _apAccountId _apDryRun
              _apQuotaUser
              (Just _apPrettyPrint)
              _apUserIP
              _apFields
              _apKey
              _apOAuthToken
              (Just AltJSON)
              _apPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountshippingPatchResource)
                      rq
