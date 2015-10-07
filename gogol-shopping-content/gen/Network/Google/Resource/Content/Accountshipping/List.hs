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
-- Module      : Network.Google.Resource.Content.Accountshipping.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the shipping settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingList@.
module Network.Google.Resource.Content.Accountshipping.List
    (
    -- * REST Resource
      AccountshippingListResource

    -- * Creating a Request
    , accountshippingList'
    , AccountshippingList'

    -- * Request Lenses
    , al1QuotaUser
    , al1MerchantId
    , al1PrettyPrint
    , al1UserIP
    , al1Key
    , al1PageToken
    , al1OAuthToken
    , al1MaxResults
    , al1Fields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingList@ method which the
-- 'AccountshippingList'' request conforms to.
type AccountshippingListResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountshippingListResponse

-- | Lists the shipping settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'accountshippingList'' smart constructor.
data AccountshippingList' = AccountshippingList'
    { _al1QuotaUser   :: !(Maybe Text)
    , _al1MerchantId  :: !Word64
    , _al1PrettyPrint :: !Bool
    , _al1UserIP      :: !(Maybe Text)
    , _al1Key         :: !(Maybe AuthKey)
    , _al1PageToken   :: !(Maybe Text)
    , _al1OAuthToken  :: !(Maybe OAuthToken)
    , _al1MaxResults  :: !(Maybe Word32)
    , _al1Fields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'al1QuotaUser'
--
-- * 'al1MerchantId'
--
-- * 'al1PrettyPrint'
--
-- * 'al1UserIP'
--
-- * 'al1Key'
--
-- * 'al1PageToken'
--
-- * 'al1OAuthToken'
--
-- * 'al1MaxResults'
--
-- * 'al1Fields'
accountshippingList'
    :: Word64 -- ^ 'merchantId'
    -> AccountshippingList'
accountshippingList' pAl1MerchantId_ =
    AccountshippingList'
    { _al1QuotaUser = Nothing
    , _al1MerchantId = pAl1MerchantId_
    , _al1PrettyPrint = True
    , _al1UserIP = Nothing
    , _al1Key = Nothing
    , _al1PageToken = Nothing
    , _al1OAuthToken = Nothing
    , _al1MaxResults = Nothing
    , _al1Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
al1QuotaUser :: Lens' AccountshippingList' (Maybe Text)
al1QuotaUser
  = lens _al1QuotaUser (\ s a -> s{_al1QuotaUser = a})

-- | The ID of the managing account.
al1MerchantId :: Lens' AccountshippingList' Word64
al1MerchantId
  = lens _al1MerchantId
      (\ s a -> s{_al1MerchantId = a})

-- | Returns response with indentations and line breaks.
al1PrettyPrint :: Lens' AccountshippingList' Bool
al1PrettyPrint
  = lens _al1PrettyPrint
      (\ s a -> s{_al1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
al1UserIP :: Lens' AccountshippingList' (Maybe Text)
al1UserIP
  = lens _al1UserIP (\ s a -> s{_al1UserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
al1Key :: Lens' AccountshippingList' (Maybe AuthKey)
al1Key = lens _al1Key (\ s a -> s{_al1Key = a})

-- | The token returned by the previous request.
al1PageToken :: Lens' AccountshippingList' (Maybe Text)
al1PageToken
  = lens _al1PageToken (\ s a -> s{_al1PageToken = a})

-- | OAuth 2.0 token for the current user.
al1OAuthToken :: Lens' AccountshippingList' (Maybe OAuthToken)
al1OAuthToken
  = lens _al1OAuthToken
      (\ s a -> s{_al1OAuthToken = a})

-- | The maximum number of shipping settings to return in the response, used
-- for paging.
al1MaxResults :: Lens' AccountshippingList' (Maybe Word32)
al1MaxResults
  = lens _al1MaxResults
      (\ s a -> s{_al1MaxResults = a})

-- | Selector specifying which fields to include in a partial response.
al1Fields :: Lens' AccountshippingList' (Maybe Text)
al1Fields
  = lens _al1Fields (\ s a -> s{_al1Fields = a})

instance GoogleAuth AccountshippingList' where
        _AuthKey = al1Key . _Just
        _AuthToken = al1OAuthToken . _Just

instance GoogleRequest AccountshippingList' where
        type Rs AccountshippingList' =
             AccountshippingListResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccountshippingList'{..}
          = go _al1MerchantId _al1PageToken _al1MaxResults
              _al1QuotaUser
              (Just _al1PrettyPrint)
              _al1UserIP
              _al1Fields
              _al1Key
              _al1OAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountshippingListResource)
                      rq
