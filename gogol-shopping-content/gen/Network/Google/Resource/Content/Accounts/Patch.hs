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
-- Module      : Network.Google.Resource.Content.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Merchant Center account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsPatch@.
module Network.Google.Resource.Content.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , ap1QuotaUser
    , ap1MerchantId
    , ap1PrettyPrint
    , ap1UserIP
    , ap1Payload
    , ap1AccountId
    , ap1Key
    , ap1OAuthToken
    , ap1DryRun
    , ap1Fields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsPatch@ method which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates a Merchant Center account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _ap1QuotaUser   :: !(Maybe Text)
    , _ap1MerchantId  :: !Word64
    , _ap1PrettyPrint :: !Bool
    , _ap1UserIP      :: !(Maybe Text)
    , _ap1Payload     :: !Account
    , _ap1AccountId   :: !Word64
    , _ap1Key         :: !(Maybe AuthKey)
    , _ap1OAuthToken  :: !(Maybe OAuthToken)
    , _ap1DryRun      :: !(Maybe Bool)
    , _ap1Fields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ap1QuotaUser'
--
-- * 'ap1MerchantId'
--
-- * 'ap1PrettyPrint'
--
-- * 'ap1UserIP'
--
-- * 'ap1Payload'
--
-- * 'ap1AccountId'
--
-- * 'ap1Key'
--
-- * 'ap1OAuthToken'
--
-- * 'ap1DryRun'
--
-- * 'ap1Fields'
accountsPatch'
    :: Word64 -- ^ 'merchantId'
    -> Account -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountsPatch'
accountsPatch' pAp1MerchantId_ pAp1Payload_ pAp1AccountId_ =
    AccountsPatch'
    { _ap1QuotaUser = Nothing
    , _ap1MerchantId = pAp1MerchantId_
    , _ap1PrettyPrint = True
    , _ap1UserIP = Nothing
    , _ap1Payload = pAp1Payload_
    , _ap1AccountId = pAp1AccountId_
    , _ap1Key = Nothing
    , _ap1OAuthToken = Nothing
    , _ap1DryRun = Nothing
    , _ap1Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ap1QuotaUser :: Lens' AccountsPatch' (Maybe Text)
ap1QuotaUser
  = lens _ap1QuotaUser (\ s a -> s{_ap1QuotaUser = a})

-- | The ID of the managing account.
ap1MerchantId :: Lens' AccountsPatch' Word64
ap1MerchantId
  = lens _ap1MerchantId
      (\ s a -> s{_ap1MerchantId = a})

-- | Returns response with indentations and line breaks.
ap1PrettyPrint :: Lens' AccountsPatch' Bool
ap1PrettyPrint
  = lens _ap1PrettyPrint
      (\ s a -> s{_ap1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ap1UserIP :: Lens' AccountsPatch' (Maybe Text)
ap1UserIP
  = lens _ap1UserIP (\ s a -> s{_ap1UserIP = a})

-- | Multipart request metadata.
ap1Payload :: Lens' AccountsPatch' Account
ap1Payload
  = lens _ap1Payload (\ s a -> s{_ap1Payload = a})

-- | The ID of the account.
ap1AccountId :: Lens' AccountsPatch' Word64
ap1AccountId
  = lens _ap1AccountId (\ s a -> s{_ap1AccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ap1Key :: Lens' AccountsPatch' (Maybe AuthKey)
ap1Key = lens _ap1Key (\ s a -> s{_ap1Key = a})

-- | OAuth 2.0 token for the current user.
ap1OAuthToken :: Lens' AccountsPatch' (Maybe OAuthToken)
ap1OAuthToken
  = lens _ap1OAuthToken
      (\ s a -> s{_ap1OAuthToken = a})

-- | Flag to run the request in dry-run mode.
ap1DryRun :: Lens' AccountsPatch' (Maybe Bool)
ap1DryRun
  = lens _ap1DryRun (\ s a -> s{_ap1DryRun = a})

-- | Selector specifying which fields to include in a partial response.
ap1Fields :: Lens' AccountsPatch' (Maybe Text)
ap1Fields
  = lens _ap1Fields (\ s a -> s{_ap1Fields = a})

instance GoogleAuth AccountsPatch' where
        _AuthKey = ap1Key . _Just
        _AuthToken = ap1OAuthToken . _Just

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        request = requestWith shoppingContentRequest
        requestWith rq AccountsPatch'{..}
          = go _ap1MerchantId _ap1AccountId _ap1DryRun
              _ap1QuotaUser
              (Just _ap1PrettyPrint)
              _ap1UserIP
              _ap1Fields
              _ap1Key
              _ap1OAuthToken
              (Just AltJSON)
              _ap1Payload
          where go
                  = clientBuild (Proxy :: Proxy AccountsPatchResource)
                      rq
