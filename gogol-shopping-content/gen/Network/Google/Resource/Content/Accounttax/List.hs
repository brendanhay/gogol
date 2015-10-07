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
-- Module      : Network.Google.Resource.Content.Accounttax.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the tax settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxList@.
module Network.Google.Resource.Content.Accounttax.List
    (
    -- * REST Resource
      AccounttaxListResource

    -- * Creating a Request
    , accounttaxList'
    , AccounttaxList'

    -- * Request Lenses
    , allQuotaUser
    , allMerchantId
    , allPrettyPrint
    , allUserIP
    , allKey
    , allPageToken
    , allOAuthToken
    , allMaxResults
    , allFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxList@ method which the
-- 'AccounttaxList'' request conforms to.
type AccounttaxListResource =
     Capture "merchantId" Word64 :>
       "accounttax" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccounttaxListResponse

-- | Lists the tax settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'accounttaxList'' smart constructor.
data AccounttaxList' = AccounttaxList'
    { _allQuotaUser   :: !(Maybe Text)
    , _allMerchantId  :: !Word64
    , _allPrettyPrint :: !Bool
    , _allUserIP      :: !(Maybe Text)
    , _allKey         :: !(Maybe AuthKey)
    , _allPageToken   :: !(Maybe Text)
    , _allOAuthToken  :: !(Maybe OAuthToken)
    , _allMaxResults  :: !(Maybe Word32)
    , _allFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allQuotaUser'
--
-- * 'allMerchantId'
--
-- * 'allPrettyPrint'
--
-- * 'allUserIP'
--
-- * 'allKey'
--
-- * 'allPageToken'
--
-- * 'allOAuthToken'
--
-- * 'allMaxResults'
--
-- * 'allFields'
accounttaxList'
    :: Word64 -- ^ 'merchantId'
    -> AccounttaxList'
accounttaxList' pAllMerchantId_ =
    AccounttaxList'
    { _allQuotaUser = Nothing
    , _allMerchantId = pAllMerchantId_
    , _allPrettyPrint = True
    , _allUserIP = Nothing
    , _allKey = Nothing
    , _allPageToken = Nothing
    , _allOAuthToken = Nothing
    , _allMaxResults = Nothing
    , _allFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AccounttaxList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | The ID of the managing account.
allMerchantId :: Lens' AccounttaxList' Word64
allMerchantId
  = lens _allMerchantId
      (\ s a -> s{_allMerchantId = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AccounttaxList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIP :: Lens' AccounttaxList' (Maybe Text)
allUserIP
  = lens _allUserIP (\ s a -> s{_allUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AccounttaxList' (Maybe AuthKey)
allKey = lens _allKey (\ s a -> s{_allKey = a})

-- | The token returned by the previous request.
allPageToken :: Lens' AccounttaxList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | OAuth 2.0 token for the current user.
allOAuthToken :: Lens' AccounttaxList' (Maybe OAuthToken)
allOAuthToken
  = lens _allOAuthToken
      (\ s a -> s{_allOAuthToken = a})

-- | The maximum number of tax settings to return in the response, used for
-- paging.
allMaxResults :: Lens' AccounttaxList' (Maybe Word32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AccounttaxList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

instance GoogleAuth AccounttaxList' where
        _AuthKey = allKey . _Just
        _AuthToken = allOAuthToken . _Just

instance GoogleRequest AccounttaxList' where
        type Rs AccounttaxList' = AccounttaxListResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccounttaxList'{..}
          = go _allMerchantId _allPageToken _allMaxResults
              _allQuotaUser
              (Just _allPrettyPrint)
              _allUserIP
              _allFields
              _allKey
              _allOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AccounttaxListResource)
                      rq
