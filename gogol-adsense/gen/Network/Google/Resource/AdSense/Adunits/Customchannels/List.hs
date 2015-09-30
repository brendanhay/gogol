{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Adunits.Customchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdunitsCustomchannelsList@.
module AdSense.Adunits.Customchannels.List
    (
    -- * REST Resource
      AdunitsCustomchannelsListAPI

    -- * Creating a Request
    , adunitsCustomchannelsList
    , AdunitsCustomchannelsList

    -- * Request Lenses
    , aduQuotaUser
    , aduPrettyPrint
    , aduUserIp
    , aduAdUnitId
    , aduAdClientId
    , aduKey
    , aduPageToken
    , aduOauthToken
    , aduMaxResults
    , aduFields
    , aduAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdunitsCustomchannelsList@ which the
-- 'AdunitsCustomchannelsList' request conforms to.
type AdunitsCustomchannelsListAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             "customchannels" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'adunitsCustomchannelsList' smart constructor.
data AdunitsCustomchannelsList = AdunitsCustomchannelsList
    { _aduQuotaUser   :: !(Maybe Text)
    , _aduPrettyPrint :: !Bool
    , _aduUserIp      :: !(Maybe Text)
    , _aduAdUnitId    :: !Text
    , _aduAdClientId  :: !Text
    , _aduKey         :: !(Maybe Text)
    , _aduPageToken   :: !(Maybe Text)
    , _aduOauthToken  :: !(Maybe Text)
    , _aduMaxResults  :: !(Maybe Int32)
    , _aduFields      :: !(Maybe Text)
    , _aduAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsCustomchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aduQuotaUser'
--
-- * 'aduPrettyPrint'
--
-- * 'aduUserIp'
--
-- * 'aduAdUnitId'
--
-- * 'aduAdClientId'
--
-- * 'aduKey'
--
-- * 'aduPageToken'
--
-- * 'aduOauthToken'
--
-- * 'aduMaxResults'
--
-- * 'aduFields'
--
-- * 'aduAlt'
adunitsCustomchannelsList
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdunitsCustomchannelsList
adunitsCustomchannelsList pAduAdUnitId_ pAduAdClientId_ =
    AdunitsCustomchannelsList
    { _aduQuotaUser = Nothing
    , _aduPrettyPrint = True
    , _aduUserIp = Nothing
    , _aduAdUnitId = pAduAdUnitId_
    , _aduAdClientId = pAduAdClientId_
    , _aduKey = Nothing
    , _aduPageToken = Nothing
    , _aduOauthToken = Nothing
    , _aduMaxResults = Nothing
    , _aduFields = Nothing
    , _aduAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aduQuotaUser :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aduQuotaUser
  = lens _aduQuotaUser (\ s a -> s{_aduQuotaUser = a})

-- | Returns response with indentations and line breaks.
aduPrettyPrint :: Lens' AdunitsCustomchannelsList' Bool
aduPrettyPrint
  = lens _aduPrettyPrint
      (\ s a -> s{_aduPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aduUserIp :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aduUserIp
  = lens _aduUserIp (\ s a -> s{_aduUserIp = a})

-- | Ad unit for which to list custom channels.
aduAdUnitId :: Lens' AdunitsCustomchannelsList' Text
aduAdUnitId
  = lens _aduAdUnitId (\ s a -> s{_aduAdUnitId = a})

-- | Ad client which contains the ad unit.
aduAdClientId :: Lens' AdunitsCustomchannelsList' Text
aduAdClientId
  = lens _aduAdClientId
      (\ s a -> s{_aduAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aduKey :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aduKey = lens _aduKey (\ s a -> s{_aduKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aduPageToken :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aduPageToken
  = lens _aduPageToken (\ s a -> s{_aduPageToken = a})

-- | OAuth 2.0 token for the current user.
aduOauthToken :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aduOauthToken
  = lens _aduOauthToken
      (\ s a -> s{_aduOauthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aduMaxResults :: Lens' AdunitsCustomchannelsList' (Maybe Int32)
aduMaxResults
  = lens _aduMaxResults
      (\ s a -> s{_aduMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aduFields :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aduFields
  = lens _aduFields (\ s a -> s{_aduFields = a})

-- | Data format for the response.
aduAlt :: Lens' AdunitsCustomchannelsList' Text
aduAlt = lens _aduAlt (\ s a -> s{_aduAlt = a})

instance GoogleRequest AdunitsCustomchannelsList'
         where
        type Rs AdunitsCustomchannelsList' = CustomChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsCustomchannelsList{..}
          = go _aduQuotaUser _aduPrettyPrint _aduUserIp
              _aduAdUnitId
              _aduAdClientId
              _aduKey
              _aduPageToken
              _aduOauthToken
              _aduMaxResults
              _aduFields
              _aduAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdunitsCustomchannelsListAPI)
                      r
                      u
