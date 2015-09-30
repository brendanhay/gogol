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
    , amdlUserIp
    , amdlAccountId
    , amdlKey
    , amdlOauthToken
    , amdlFields
    , amdlAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Metadata

-- | List the metadata for the dimensions available to this AdExchange
-- account.
--
-- /See:/ 'accountsMetadataDimensionsList'' smart constructor.
data AccountsMetadataDimensionsList' = AccountsMetadataDimensionsList'
    { _amdlQuotaUser   :: !(Maybe Text)
    , _amdlPrettyPrint :: !Bool
    , _amdlUserIp      :: !(Maybe Text)
    , _amdlAccountId   :: !Text
    , _amdlKey         :: !(Maybe Text)
    , _amdlOauthToken  :: !(Maybe Text)
    , _amdlFields      :: !(Maybe Text)
    , _amdlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsMetadataDimensionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdlQuotaUser'
--
-- * 'amdlPrettyPrint'
--
-- * 'amdlUserIp'
--
-- * 'amdlAccountId'
--
-- * 'amdlKey'
--
-- * 'amdlOauthToken'
--
-- * 'amdlFields'
--
-- * 'amdlAlt'
accountsMetadataDimensionsList'
    :: Text -- ^ 'accountId'
    -> AccountsMetadataDimensionsList'
accountsMetadataDimensionsList' pAmdlAccountId_ =
    AccountsMetadataDimensionsList'
    { _amdlQuotaUser = Nothing
    , _amdlPrettyPrint = True
    , _amdlUserIp = Nothing
    , _amdlAccountId = pAmdlAccountId_
    , _amdlKey = Nothing
    , _amdlOauthToken = Nothing
    , _amdlFields = Nothing
    , _amdlAlt = JSON
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
amdlUserIp :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlUserIp
  = lens _amdlUserIp (\ s a -> s{_amdlUserIp = a})

-- | Account with visibility to the dimensions.
amdlAccountId :: Lens' AccountsMetadataDimensionsList' Text
amdlAccountId
  = lens _amdlAccountId
      (\ s a -> s{_amdlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amdlKey :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlKey = lens _amdlKey (\ s a -> s{_amdlKey = a})

-- | OAuth 2.0 token for the current user.
amdlOauthToken :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlOauthToken
  = lens _amdlOauthToken
      (\ s a -> s{_amdlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
amdlFields :: Lens' AccountsMetadataDimensionsList' (Maybe Text)
amdlFields
  = lens _amdlFields (\ s a -> s{_amdlFields = a})

-- | Data format for the response.
amdlAlt :: Lens' AccountsMetadataDimensionsList' Alt
amdlAlt = lens _amdlAlt (\ s a -> s{_amdlAlt = a})

instance GoogleRequest
         AccountsMetadataDimensionsList' where
        type Rs AccountsMetadataDimensionsList' = Metadata
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u
          AccountsMetadataDimensionsList'{..}
          = go _amdlQuotaUser (Just _amdlPrettyPrint)
              _amdlUserIp
              _amdlAccountId
              _amdlKey
              _amdlOauthToken
              _amdlFields
              (Just _amdlAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsMetadataDimensionsListResource)
                      r
                      u
