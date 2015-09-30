{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdSense.Adunits.List
    (
    -- * REST Resource
      AdunitsListAPI

    -- * Creating a Request
    , adunitsList
    , AdunitsList

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaIncludeInactive
    , aaUserIp
    , aaAdClientId
    , aaKey
    , aaPageToken
    , aaOauthToken
    , aaMaxResults
    , aaFields
    , aaAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdunitsList@ which the
-- 'AdunitsList' request conforms to.
type AdunitsListAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           QueryParam "includeInactive" Bool :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :> Get '[JSON] AdUnits

-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ 'adunitsList' smart constructor.
data AdunitsList = AdunitsList
    { _aaQuotaUser       :: !(Maybe Text)
    , _aaPrettyPrint     :: !Bool
    , _aaIncludeInactive :: !(Maybe Bool)
    , _aaUserIp          :: !(Maybe Text)
    , _aaAdClientId      :: !Text
    , _aaKey             :: !(Maybe Text)
    , _aaPageToken       :: !(Maybe Text)
    , _aaOauthToken      :: !(Maybe Text)
    , _aaMaxResults      :: !(Maybe Int32)
    , _aaFields          :: !(Maybe Text)
    , _aaAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaIncludeInactive'
--
-- * 'aaUserIp'
--
-- * 'aaAdClientId'
--
-- * 'aaKey'
--
-- * 'aaPageToken'
--
-- * 'aaOauthToken'
--
-- * 'aaMaxResults'
--
-- * 'aaFields'
--
-- * 'aaAlt'
adunitsList
    :: Text -- ^ 'adClientId'
    -> AdunitsList
adunitsList pAaAdClientId_ =
    AdunitsList
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaIncludeInactive = Nothing
    , _aaUserIp = Nothing
    , _aaAdClientId = pAaAdClientId_
    , _aaKey = Nothing
    , _aaPageToken = Nothing
    , _aaOauthToken = Nothing
    , _aaMaxResults = Nothing
    , _aaFields = Nothing
    , _aaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AdunitsList' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AdunitsList' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
aaIncludeInactive :: Lens' AdunitsList' (Maybe Bool)
aaIncludeInactive
  = lens _aaIncludeInactive
      (\ s a -> s{_aaIncludeInactive = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIp :: Lens' AdunitsList' (Maybe Text)
aaUserIp = lens _aaUserIp (\ s a -> s{_aaUserIp = a})

-- | Ad client for which to list ad units.
aaAdClientId :: Lens' AdunitsList' Text
aaAdClientId
  = lens _aaAdClientId (\ s a -> s{_aaAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AdunitsList' (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aaPageToken :: Lens' AdunitsList' (Maybe Text)
aaPageToken
  = lens _aaPageToken (\ s a -> s{_aaPageToken = a})

-- | OAuth 2.0 token for the current user.
aaOauthToken :: Lens' AdunitsList' (Maybe Text)
aaOauthToken
  = lens _aaOauthToken (\ s a -> s{_aaOauthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aaMaxResults :: Lens' AdunitsList' (Maybe Int32)
aaMaxResults
  = lens _aaMaxResults (\ s a -> s{_aaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AdunitsList' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

-- | Data format for the response.
aaAlt :: Lens' AdunitsList' Text
aaAlt = lens _aaAlt (\ s a -> s{_aaAlt = a})

instance GoogleRequest AdunitsList' where
        type Rs AdunitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsList{..}
          = go _aaQuotaUser _aaPrettyPrint _aaIncludeInactive
              _aaUserIp
              _aaAdClientId
              _aaKey
              _aaPageToken
              _aaOauthToken
              _aaMaxResults
              _aaFields
              _aaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdunitsListAPI) r u
