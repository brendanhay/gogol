{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.Accounts.Adunits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.list@.
module Network.Google.API.AdSenseHost.Accounts.Adunits.List
    (
    -- * REST Resource
      AccountsAdunitsListAPI

    -- * Creating a Request
    , accountsAdunitsList'
    , AccountsAdunitsList'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accIncludeInactive
    , accUserIp
    , accAdClientId
    , accAccountId
    , accKey
    , accPageToken
    , accOauthToken
    , accMaxResults
    , accFields
    , accAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.accounts.adunits.list which the
-- 'AccountsAdunitsList'' request conforms to.
type AccountsAdunitsListAPI =
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
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Get '[JSON] AdUnits

-- | List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ 'accountsAdunitsList'' smart constructor.
data AccountsAdunitsList' = AccountsAdunitsList'
    { _accQuotaUser       :: !(Maybe Text)
    , _accPrettyPrint     :: !Bool
    , _accIncludeInactive :: !(Maybe Bool)
    , _accUserIp          :: !(Maybe Text)
    , _accAdClientId      :: !Text
    , _accAccountId       :: !Text
    , _accKey             :: !(Maybe Text)
    , _accPageToken       :: !(Maybe Text)
    , _accOauthToken      :: !(Maybe Text)
    , _accMaxResults      :: !(Maybe Word32)
    , _accFields          :: !(Maybe Text)
    , _accAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accIncludeInactive'
--
-- * 'accUserIp'
--
-- * 'accAdClientId'
--
-- * 'accAccountId'
--
-- * 'accKey'
--
-- * 'accPageToken'
--
-- * 'accOauthToken'
--
-- * 'accMaxResults'
--
-- * 'accFields'
--
-- * 'accAlt'
accountsAdunitsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsList'
accountsAdunitsList' pAccAdClientId_ pAccAccountId_ =
    AccountsAdunitsList'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accIncludeInactive = Nothing
    , _accUserIp = Nothing
    , _accAdClientId = pAccAdClientId_
    , _accAccountId = pAccAccountId_
    , _accKey = Nothing
    , _accPageToken = Nothing
    , _accOauthToken = Nothing
    , _accMaxResults = Nothing
    , _accFields = Nothing
    , _accAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsAdunitsList' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsAdunitsList' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
accIncludeInactive :: Lens' AccountsAdunitsList' (Maybe Bool)
accIncludeInactive
  = lens _accIncludeInactive
      (\ s a -> s{_accIncludeInactive = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsAdunitsList' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | Ad client for which to list ad units.
accAdClientId :: Lens' AccountsAdunitsList' Text
accAdClientId
  = lens _accAdClientId
      (\ s a -> s{_accAdClientId = a})

-- | Account which contains the ad client.
accAccountId :: Lens' AccountsAdunitsList' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsAdunitsList' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
accPageToken :: Lens' AccountsAdunitsList' (Maybe Text)
accPageToken
  = lens _accPageToken (\ s a -> s{_accPageToken = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsAdunitsList' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
accMaxResults :: Lens' AccountsAdunitsList' (Maybe Word32)
accMaxResults
  = lens _accMaxResults
      (\ s a -> s{_accMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsAdunitsList' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsAdunitsList' Alt
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountsAdunitsList' where
        type Rs AccountsAdunitsList' = AdUnits
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsList'{..}
          = go _accQuotaUser (Just _accPrettyPrint)
              _accIncludeInactive
              _accUserIp
              _accAdClientId
              _accAccountId
              _accKey
              _accPageToken
              _accOauthToken
              _accMaxResults
              _accFields
              (Just _accAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsListAPI)
                      r
                      u
