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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsList@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List
    (
    -- * REST Resource
      AccountsAdUnitsListResource

    -- * Creating a Request
    , accountsAdUnitsList'
    , AccountsAdUnitsList'

    -- * Request Lenses
    , aaulQuotaUser
    , aaulPrettyPrint
    , aaulIncludeInactive
    , aaulUserIP
    , aaulAdClientId
    , aaulAccountId
    , aaulKey
    , aaulPageToken
    , aaulOAuthToken
    , aaulMaxResults
    , aaulFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsList@ which the
-- 'AccountsAdUnitsList'' request conforms to.
type AccountsAdUnitsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               QueryParam "includeInactive" Bool :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] AdUnits

-- | List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ 'accountsAdUnitsList'' smart constructor.
data AccountsAdUnitsList' = AccountsAdUnitsList'
    { _aaulQuotaUser       :: !(Maybe Text)
    , _aaulPrettyPrint     :: !Bool
    , _aaulIncludeInactive :: !(Maybe Bool)
    , _aaulUserIP          :: !(Maybe Text)
    , _aaulAdClientId      :: !Text
    , _aaulAccountId       :: !Text
    , _aaulKey             :: !(Maybe AuthKey)
    , _aaulPageToken       :: !(Maybe Text)
    , _aaulOAuthToken      :: !(Maybe OAuthToken)
    , _aaulMaxResults      :: !(Maybe Word32)
    , _aaulFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaulQuotaUser'
--
-- * 'aaulPrettyPrint'
--
-- * 'aaulIncludeInactive'
--
-- * 'aaulUserIP'
--
-- * 'aaulAdClientId'
--
-- * 'aaulAccountId'
--
-- * 'aaulKey'
--
-- * 'aaulPageToken'
--
-- * 'aaulOAuthToken'
--
-- * 'aaulMaxResults'
--
-- * 'aaulFields'
accountsAdUnitsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsList'
accountsAdUnitsList' pAaulAdClientId_ pAaulAccountId_ =
    AccountsAdUnitsList'
    { _aaulQuotaUser = Nothing
    , _aaulPrettyPrint = True
    , _aaulIncludeInactive = Nothing
    , _aaulUserIP = Nothing
    , _aaulAdClientId = pAaulAdClientId_
    , _aaulAccountId = pAaulAccountId_
    , _aaulKey = Nothing
    , _aaulPageToken = Nothing
    , _aaulOAuthToken = Nothing
    , _aaulMaxResults = Nothing
    , _aaulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaulQuotaUser :: Lens' AccountsAdUnitsList' (Maybe Text)
aaulQuotaUser
  = lens _aaulQuotaUser
      (\ s a -> s{_aaulQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaulPrettyPrint :: Lens' AccountsAdUnitsList' Bool
aaulPrettyPrint
  = lens _aaulPrettyPrint
      (\ s a -> s{_aaulPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
aaulIncludeInactive :: Lens' AccountsAdUnitsList' (Maybe Bool)
aaulIncludeInactive
  = lens _aaulIncludeInactive
      (\ s a -> s{_aaulIncludeInactive = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaulUserIP :: Lens' AccountsAdUnitsList' (Maybe Text)
aaulUserIP
  = lens _aaulUserIP (\ s a -> s{_aaulUserIP = a})

-- | Ad client for which to list ad units.
aaulAdClientId :: Lens' AccountsAdUnitsList' Text
aaulAdClientId
  = lens _aaulAdClientId
      (\ s a -> s{_aaulAdClientId = a})

-- | Account which contains the ad client.
aaulAccountId :: Lens' AccountsAdUnitsList' Text
aaulAccountId
  = lens _aaulAccountId
      (\ s a -> s{_aaulAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaulKey :: Lens' AccountsAdUnitsList' (Maybe AuthKey)
aaulKey = lens _aaulKey (\ s a -> s{_aaulKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aaulPageToken :: Lens' AccountsAdUnitsList' (Maybe Text)
aaulPageToken
  = lens _aaulPageToken
      (\ s a -> s{_aaulPageToken = a})

-- | OAuth 2.0 token for the current user.
aaulOAuthToken :: Lens' AccountsAdUnitsList' (Maybe OAuthToken)
aaulOAuthToken
  = lens _aaulOAuthToken
      (\ s a -> s{_aaulOAuthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aaulMaxResults :: Lens' AccountsAdUnitsList' (Maybe Word32)
aaulMaxResults
  = lens _aaulMaxResults
      (\ s a -> s{_aaulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aaulFields :: Lens' AccountsAdUnitsList' (Maybe Text)
aaulFields
  = lens _aaulFields (\ s a -> s{_aaulFields = a})

instance GoogleAuth AccountsAdUnitsList' where
        authKey = aaulKey . _Just
        authToken = aaulOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsList' where
        type Rs AccountsAdUnitsList' = AdUnits
        request = requestWith adSenseHostRequest
        requestWith rq AccountsAdUnitsList'{..}
          = go _aaulAccountId _aaulAdClientId
              _aaulIncludeInactive
              _aaulPageToken
              _aaulMaxResults
              _aaulQuotaUser
              (Just _aaulPrettyPrint)
              _aaulUserIP
              _aaulFields
              _aaulKey
              _aaulOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAdUnitsListResource)
                      rq
