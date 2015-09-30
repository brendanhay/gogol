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
-- Module      : Network.Google.Resource.AdSense.Adunits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdunitsList@.
module Network.Google.Resource.AdSense.Adunits.List
    (
    -- * REST Resource
      AdunitsListResource

    -- * Creating a Request
    , adunitsList'
    , AdunitsList'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aIncludeInactive
    , aUserIp
    , aAdClientId
    , aKey
    , aPageToken
    , aOauthToken
    , aMaxResults
    , aFields
    , aAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdunitsList@ which the
-- 'AdunitsList'' request conforms to.
type AdunitsListResource =
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

-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ 'adunitsList'' smart constructor.
data AdunitsList' = AdunitsList'
    { _aQuotaUser       :: !(Maybe Text)
    , _aPrettyPrint     :: !Bool
    , _aIncludeInactive :: !(Maybe Bool)
    , _aUserIp          :: !(Maybe Text)
    , _aAdClientId      :: !Text
    , _aKey             :: !(Maybe Text)
    , _aPageToken       :: !(Maybe Text)
    , _aOauthToken      :: !(Maybe Text)
    , _aMaxResults      :: !(Maybe Int32)
    , _aFields          :: !(Maybe Text)
    , _aAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aIncludeInactive'
--
-- * 'aUserIp'
--
-- * 'aAdClientId'
--
-- * 'aKey'
--
-- * 'aPageToken'
--
-- * 'aOauthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
--
-- * 'aAlt'
adunitsList'
    :: Text -- ^ 'adClientId'
    -> AdunitsList'
adunitsList' pAAdClientId_ =
    AdunitsList'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aIncludeInactive = Nothing
    , _aUserIp = Nothing
    , _aAdClientId = pAAdClientId_
    , _aKey = Nothing
    , _aPageToken = Nothing
    , _aOauthToken = Nothing
    , _aMaxResults = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AdunitsList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AdunitsList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
aIncludeInactive :: Lens' AdunitsList' (Maybe Bool)
aIncludeInactive
  = lens _aIncludeInactive
      (\ s a -> s{_aIncludeInactive = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AdunitsList' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | Ad client for which to list ad units.
aAdClientId :: Lens' AdunitsList' Text
aAdClientId
  = lens _aAdClientId (\ s a -> s{_aAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AdunitsList' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aPageToken :: Lens' AdunitsList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AdunitsList' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aMaxResults :: Lens' AdunitsList' (Maybe Int32)
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AdunitsList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AdunitsList' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AdunitsList' where
        type Rs AdunitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsList'{..}
          = go _aQuotaUser (Just _aPrettyPrint)
              _aIncludeInactive
              _aUserIp
              _aAdClientId
              _aKey
              _aPageToken
              _aOauthToken
              _aMaxResults
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdunitsListResource)
                      r
                      u
