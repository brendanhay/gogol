{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the metadata for the dimensions available to this AdExchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsMetadataDimensionsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List
    (
    -- * REST Resource
      AccountsMetadataDimensionsListResource

    -- * Creating a Request
    , accountsMetadataDimensionsList'
    , AccountsMetadataDimensionsList'

    -- * Request Lenses
    , amdlQuotaUser
    , amdlPrettyPrint
    , amdlUserIP
    , amdlAccountId
    , amdlKey
    , amdlOAuthToken
    , amdlFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsMetadataDimensionsList@ which the
-- 'AccountsMetadataDimensionsList'' request conforms to.
type AccountsMetadataDimensionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "metadata" :>
           "dimensions" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the dimensions available to this AdExchange
-- account.
--
-- /See:/ 'accountsMetadataDimensionsList'' smart constructor.
data AccountsMetadataDimensionsList' = AccountsMetadataDimensionsList'
    { _amdlQuotaUser   :: !(Maybe Text)
    , _amdlPrettyPrint :: !Bool
    , _amdlUserIP      :: !(Maybe Text)
    , _amdlAccountId   :: !Text
    , _amdlKey         :: !(Maybe Key)
    , _amdlOAuthToken  :: !(Maybe OAuthToken)
    , _amdlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsMetadataDimensionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdlQuotaUser'
--
-- * 'amdlPrettyPrint'
--
-- * 'amdlUserIP'
--
-- * 'amdlAccountId'
--
-- * 'amdlKey'
--
-- * 'amdlOAuthToken'
--
-- * 'amdlFields'
accountsMetadataDimensionsList'
    :: Text -- ^ 'accountId'
    -> AccountsMetadataDimensionsList'
accountsMetadataDimensionsList' pAmdlAccountId_ =
    AccountsMetadataDimensionsList'
    { _amdlQuotaUser = Nothing
    , _amdlPrettyPrint = True
    , _amdlUserIP = Nothing
    , _amdlAccountId = pAmdlAccountId_
    , _amdlKey = Nothing
    , _amdlOAuthToken = Nothing
    , _amdlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
amdlQuotaUser :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlQuotaUser
  = lens _amdlQuotaUser
      (\ s a -> s{_amdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
amdlPrettyPrint :: Lens' AccountsMetadataDimensionsList' Bool
amdlPrettyPrint
  = lens _amdlPrettyPrint
      (\ s a -> s{_amdlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
amdlUserIP :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlUserIP
  = lens _amdlUserIP (\ s a -> s{_amdlUserIP = a})

-- | Account with visibility to the dimensions.
amdlAccountId :: Lens' AccountsMetadataDimensionsList' Text
amdlAccountId
  = lens _amdlAccountId
      (\ s a -> s{_amdlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amdlKey :: Lens' AccountsMetadataDimensionsList' (Maybe Key)
amdlKey = lens _amdlKey (\ s a -> s{_amdlKey = a})

-- | OAuth 2.0 token for the current user.
amdlOAuthToken :: Lens' AccountsMetadataDimensionsList' (Maybe OAuthToken)
amdlOAuthToken
  = lens _amdlOAuthToken
      (\ s a -> s{_amdlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
amdlFields :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlFields
  = lens _amdlFields (\ s a -> s{_amdlFields = a})

instance GoogleAuth AccountsMetadataDimensionsList'
         where
        authKey = amdlKey . _Just
        authToken = amdlOAuthToken . _Just

instance GoogleRequest
         AccountsMetadataDimensionsList' where
        type Rs AccountsMetadataDimensionsList' = Metadata
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u
          AccountsMetadataDimensionsList'{..}
          = go _amdlQuotaUser (Just _amdlPrettyPrint)
              _amdlUserIP
              _amdlAccountId
              _amdlKey
              _amdlOAuthToken
              _amdlFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsMetadataDimensionsListResource)
                      r
                      u
