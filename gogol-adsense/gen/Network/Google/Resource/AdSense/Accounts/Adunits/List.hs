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
-- Module      : Network.Google.Resource.AdSense.Accounts.Adunits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified ad client for the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdunitsList@.
module Network.Google.Resource.AdSense.Accounts.Adunits.List
    (
    -- * REST Resource
      AccountsAdunitsListResource

    -- * Creating a Request
    , accountsAdunitsList'
    , AccountsAdunitsList'

    -- * Request Lenses
    , aalQuotaUser
    , aalPrettyPrint
    , aalIncludeInactive
    , aalUserIp
    , aalAdClientId
    , aalAccountId
    , aalKey
    , aalPageToken
    , aalOauthToken
    , aalMaxResults
    , aalFields
    , aalAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdunitsList@ which the
-- 'AccountsAdunitsList'' request conforms to.
type AccountsAdunitsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "includeInactive" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Get '[JSON] AdUnits

-- | List all ad units in the specified ad client for the specified account.
--
-- /See:/ 'accountsAdunitsList'' smart constructor.
data AccountsAdunitsList' = AccountsAdunitsList'
    { _aalQuotaUser       :: !(Maybe Text)
    , _aalPrettyPrint     :: !Bool
    , _aalIncludeInactive :: !(Maybe Bool)
    , _aalUserIp          :: !(Maybe Text)
    , _aalAdClientId      :: !Text
    , _aalAccountId       :: !Text
    , _aalKey             :: !(Maybe Text)
    , _aalPageToken       :: !(Maybe Text)
    , _aalOauthToken      :: !(Maybe Text)
    , _aalMaxResults      :: !(Maybe Int32)
    , _aalFields          :: !(Maybe Text)
    , _aalAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalQuotaUser'
--
-- * 'aalPrettyPrint'
--
-- * 'aalIncludeInactive'
--
-- * 'aalUserIp'
--
-- * 'aalAdClientId'
--
-- * 'aalAccountId'
--
-- * 'aalKey'
--
-- * 'aalPageToken'
--
-- * 'aalOauthToken'
--
-- * 'aalMaxResults'
--
-- * 'aalFields'
--
-- * 'aalAlt'
accountsAdunitsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsList'
accountsAdunitsList' pAalAdClientId_ pAalAccountId_ =
    AccountsAdunitsList'
    { _aalQuotaUser = Nothing
    , _aalPrettyPrint = True
    , _aalIncludeInactive = Nothing
    , _aalUserIp = Nothing
    , _aalAdClientId = pAalAdClientId_
    , _aalAccountId = pAalAccountId_
    , _aalKey = Nothing
    , _aalPageToken = Nothing
    , _aalOauthToken = Nothing
    , _aalMaxResults = Nothing
    , _aalFields = Nothing
    , _aalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalQuotaUser :: Lens' AccountsAdunitsList' (Maybe Text)
aalQuotaUser
  = lens _aalQuotaUser (\ s a -> s{_aalQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalPrettyPrint :: Lens' AccountsAdunitsList' Bool
aalPrettyPrint
  = lens _aalPrettyPrint
      (\ s a -> s{_aalPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
aalIncludeInactive :: Lens' AccountsAdunitsList' (Maybe Bool)
aalIncludeInactive
  = lens _aalIncludeInactive
      (\ s a -> s{_aalIncludeInactive = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalUserIp :: Lens' AccountsAdunitsList' (Maybe Text)
aalUserIp
  = lens _aalUserIp (\ s a -> s{_aalUserIp = a})

-- | Ad client for which to list ad units.
aalAdClientId :: Lens' AccountsAdunitsList' Text
aalAdClientId
  = lens _aalAdClientId
      (\ s a -> s{_aalAdClientId = a})

-- | Account to which the ad client belongs.
aalAccountId :: Lens' AccountsAdunitsList' Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalKey :: Lens' AccountsAdunitsList' (Maybe Text)
aalKey = lens _aalKey (\ s a -> s{_aalKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aalPageToken :: Lens' AccountsAdunitsList' (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | OAuth 2.0 token for the current user.
aalOauthToken :: Lens' AccountsAdunitsList' (Maybe Text)
aalOauthToken
  = lens _aalOauthToken
      (\ s a -> s{_aalOauthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aalMaxResults :: Lens' AccountsAdunitsList' (Maybe Int32)
aalMaxResults
  = lens _aalMaxResults
      (\ s a -> s{_aalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aalFields :: Lens' AccountsAdunitsList' (Maybe Text)
aalFields
  = lens _aalFields (\ s a -> s{_aalFields = a})

-- | Data format for the response.
aalAlt :: Lens' AccountsAdunitsList' Alt
aalAlt = lens _aalAlt (\ s a -> s{_aalAlt = a})

instance GoogleRequest AccountsAdunitsList' where
        type Rs AccountsAdunitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdunitsList'{..}
          = go _aalQuotaUser (Just _aalPrettyPrint)
              _aalIncludeInactive
              _aalUserIp
              _aalAdClientId
              _aalAccountId
              _aalKey
              _aalPageToken
              _aalOauthToken
              _aalMaxResults
              _aalFields
              (Just _aalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsListResource)
                      r
                      u
