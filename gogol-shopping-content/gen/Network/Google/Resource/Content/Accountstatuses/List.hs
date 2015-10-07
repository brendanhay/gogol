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
-- Module      : Network.Google.Resource.Content.Accountstatuses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountstatusesList@.
module Network.Google.Resource.Content.Accountstatuses.List
    (
    -- * REST Resource
      AccountstatusesListResource

    -- * Creating a Request
    , accountstatusesList'
    , AccountstatusesList'

    -- * Request Lenses
    , acc3QuotaUser
    , acc3MerchantId
    , acc3PrettyPrint
    , acc3UserIP
    , acc3Key
    , acc3PageToken
    , acc3OAuthToken
    , acc3MaxResults
    , acc3Fields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountstatusesList@ method which the
-- 'AccountstatusesList'' request conforms to.
type AccountstatusesListResource =
     Capture "merchantId" Word64 :>
       "accountstatuses" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountstatusesList'' smart constructor.
data AccountstatusesList' = AccountstatusesList'
    { _acc3QuotaUser   :: !(Maybe Text)
    , _acc3MerchantId  :: !Word64
    , _acc3PrettyPrint :: !Bool
    , _acc3UserIP      :: !(Maybe Text)
    , _acc3Key         :: !(Maybe AuthKey)
    , _acc3PageToken   :: !(Maybe Text)
    , _acc3OAuthToken  :: !(Maybe OAuthToken)
    , _acc3MaxResults  :: !(Maybe Word32)
    , _acc3Fields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acc3QuotaUser'
--
-- * 'acc3MerchantId'
--
-- * 'acc3PrettyPrint'
--
-- * 'acc3UserIP'
--
-- * 'acc3Key'
--
-- * 'acc3PageToken'
--
-- * 'acc3OAuthToken'
--
-- * 'acc3MaxResults'
--
-- * 'acc3Fields'
accountstatusesList'
    :: Word64 -- ^ 'merchantId'
    -> AccountstatusesList'
accountstatusesList' pAcc3MerchantId_ =
    AccountstatusesList'
    { _acc3QuotaUser = Nothing
    , _acc3MerchantId = pAcc3MerchantId_
    , _acc3PrettyPrint = True
    , _acc3UserIP = Nothing
    , _acc3Key = Nothing
    , _acc3PageToken = Nothing
    , _acc3OAuthToken = Nothing
    , _acc3MaxResults = Nothing
    , _acc3Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acc3QuotaUser :: Lens' AccountstatusesList' (Maybe Text)
acc3QuotaUser
  = lens _acc3QuotaUser
      (\ s a -> s{_acc3QuotaUser = a})

-- | The ID of the managing account.
acc3MerchantId :: Lens' AccountstatusesList' Word64
acc3MerchantId
  = lens _acc3MerchantId
      (\ s a -> s{_acc3MerchantId = a})

-- | Returns response with indentations and line breaks.
acc3PrettyPrint :: Lens' AccountstatusesList' Bool
acc3PrettyPrint
  = lens _acc3PrettyPrint
      (\ s a -> s{_acc3PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acc3UserIP :: Lens' AccountstatusesList' (Maybe Text)
acc3UserIP
  = lens _acc3UserIP (\ s a -> s{_acc3UserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acc3Key :: Lens' AccountstatusesList' (Maybe AuthKey)
acc3Key = lens _acc3Key (\ s a -> s{_acc3Key = a})

-- | The token returned by the previous request.
acc3PageToken :: Lens' AccountstatusesList' (Maybe Text)
acc3PageToken
  = lens _acc3PageToken
      (\ s a -> s{_acc3PageToken = a})

-- | OAuth 2.0 token for the current user.
acc3OAuthToken :: Lens' AccountstatusesList' (Maybe OAuthToken)
acc3OAuthToken
  = lens _acc3OAuthToken
      (\ s a -> s{_acc3OAuthToken = a})

-- | The maximum number of account statuses to return in the response, used
-- for paging.
acc3MaxResults :: Lens' AccountstatusesList' (Maybe Word32)
acc3MaxResults
  = lens _acc3MaxResults
      (\ s a -> s{_acc3MaxResults = a})

-- | Selector specifying which fields to include in a partial response.
acc3Fields :: Lens' AccountstatusesList' (Maybe Text)
acc3Fields
  = lens _acc3Fields (\ s a -> s{_acc3Fields = a})

instance GoogleAuth AccountstatusesList' where
        _AuthKey = acc3Key . _Just
        _AuthToken = acc3OAuthToken . _Just

instance GoogleRequest AccountstatusesList' where
        type Rs AccountstatusesList' =
             AccountstatusesListResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccountstatusesList'{..}
          = go _acc3MerchantId _acc3PageToken _acc3MaxResults
              _acc3QuotaUser
              (Just _acc3PrettyPrint)
              _acc3UserIP
              _acc3Fields
              _acc3Key
              _acc3OAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountstatusesListResource)
                      rq
