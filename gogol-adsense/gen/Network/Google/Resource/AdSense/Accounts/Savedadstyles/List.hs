{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Savedadstyles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all saved ad styles in the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsSavedadstylesList@.
module Network.Google.Resource.AdSense.Accounts.Savedadstyles.List
    (
    -- * REST Resource
      AccountsSavedadstylesListResource

    -- * Creating a Request
    , accountsSavedadstylesList'
    , AccountsSavedadstylesList'

    -- * Request Lenses
    , aslQuotaUser
    , aslPrettyPrint
    , aslUserIP
    , aslAccountId
    , aslKey
    , aslPageToken
    , aslOAuthToken
    , aslMaxResults
    , aslFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsSavedadstylesList@ which the
-- 'AccountsSavedadstylesList'' request conforms to.
type AccountsSavedadstylesListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "savedadstyles" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyles

-- | List all saved ad styles in the specified account.
--
-- /See:/ 'accountsSavedadstylesList'' smart constructor.
data AccountsSavedadstylesList' = AccountsSavedadstylesList'
    { _aslQuotaUser   :: !(Maybe Text)
    , _aslPrettyPrint :: !Bool
    , _aslUserIP      :: !(Maybe Text)
    , _aslAccountId   :: !Text
    , _aslKey         :: !(Maybe Key)
    , _aslPageToken   :: !(Maybe Text)
    , _aslOAuthToken  :: !(Maybe OAuthToken)
    , _aslMaxResults  :: !(Maybe Int32)
    , _aslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsSavedadstylesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslQuotaUser'
--
-- * 'aslPrettyPrint'
--
-- * 'aslUserIP'
--
-- * 'aslAccountId'
--
-- * 'aslKey'
--
-- * 'aslPageToken'
--
-- * 'aslOAuthToken'
--
-- * 'aslMaxResults'
--
-- * 'aslFields'
accountsSavedadstylesList'
    :: Text -- ^ 'accountId'
    -> AccountsSavedadstylesList'
accountsSavedadstylesList' pAslAccountId_ =
    AccountsSavedadstylesList'
    { _aslQuotaUser = Nothing
    , _aslPrettyPrint = True
    , _aslUserIP = Nothing
    , _aslAccountId = pAslAccountId_
    , _aslKey = Nothing
    , _aslPageToken = Nothing
    , _aslOAuthToken = Nothing
    , _aslMaxResults = Nothing
    , _aslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aslQuotaUser :: Lens' AccountsSavedadstylesList' (Maybe Text)
aslQuotaUser
  = lens _aslQuotaUser (\ s a -> s{_aslQuotaUser = a})

-- | Returns response with indentations and line breaks.
aslPrettyPrint :: Lens' AccountsSavedadstylesList' Bool
aslPrettyPrint
  = lens _aslPrettyPrint
      (\ s a -> s{_aslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aslUserIP :: Lens' AccountsSavedadstylesList' (Maybe Text)
aslUserIP
  = lens _aslUserIP (\ s a -> s{_aslUserIP = a})

-- | Account for which to list saved ad styles.
aslAccountId :: Lens' AccountsSavedadstylesList' Text
aslAccountId
  = lens _aslAccountId (\ s a -> s{_aslAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aslKey :: Lens' AccountsSavedadstylesList' (Maybe Key)
aslKey = lens _aslKey (\ s a -> s{_aslKey = a})

-- | A continuation token, used to page through saved ad styles. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aslPageToken :: Lens' AccountsSavedadstylesList' (Maybe Text)
aslPageToken
  = lens _aslPageToken (\ s a -> s{_aslPageToken = a})

-- | OAuth 2.0 token for the current user.
aslOAuthToken :: Lens' AccountsSavedadstylesList' (Maybe OAuthToken)
aslOAuthToken
  = lens _aslOAuthToken
      (\ s a -> s{_aslOAuthToken = a})

-- | The maximum number of saved ad styles to include in the response, used
-- for paging.
aslMaxResults :: Lens' AccountsSavedadstylesList' (Maybe Int32)
aslMaxResults
  = lens _aslMaxResults
      (\ s a -> s{_aslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aslFields :: Lens' AccountsSavedadstylesList' (Maybe Text)
aslFields
  = lens _aslFields (\ s a -> s{_aslFields = a})

instance GoogleAuth AccountsSavedadstylesList' where
        authKey = aslKey . _Just
        authToken = aslOAuthToken . _Just

instance GoogleRequest AccountsSavedadstylesList'
         where
        type Rs AccountsSavedadstylesList' = SavedAdStyles
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsSavedadstylesList'{..}
          = go _aslAccountId _aslPageToken _aslMaxResults
              _aslQuotaUser
              (Just _aslPrettyPrint)
              _aslUserIP
              _aslFields
              _aslKey
              _aslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsSavedadstylesListResource)
                      r
                      u
