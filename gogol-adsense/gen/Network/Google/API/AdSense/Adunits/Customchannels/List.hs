{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSense.Adunits.Customchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.adunits.customchannels.list@.
module Network.Google.API.AdSense.Adunits.Customchannels.List
    (
    -- * REST Resource
      AdunitsCustomchannelsListAPI

    -- * Creating a Request
    , adunitsCustomchannelsList'
    , AdunitsCustomchannelsList'

    -- * Request Lenses
    , aclQuotaUser
    , aclPrettyPrint
    , aclUserIp
    , aclAdUnitId
    , aclAdClientId
    , aclKey
    , aclPageToken
    , aclOauthToken
    , aclMaxResults
    , aclFields
    , aclAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for adsense.adunits.customchannels.list which the
-- 'AdunitsCustomchannelsList'' request conforms to.
type AdunitsCustomchannelsListAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             "customchannels" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'adunitsCustomchannelsList'' smart constructor.
data AdunitsCustomchannelsList' = AdunitsCustomchannelsList'
    { _aclQuotaUser   :: !(Maybe Text)
    , _aclPrettyPrint :: !Bool
    , _aclUserIp      :: !(Maybe Text)
    , _aclAdUnitId    :: !Text
    , _aclAdClientId  :: !Text
    , _aclKey         :: !(Maybe Text)
    , _aclPageToken   :: !(Maybe Text)
    , _aclOauthToken  :: !(Maybe Text)
    , _aclMaxResults  :: !(Maybe Int32)
    , _aclFields      :: !(Maybe Text)
    , _aclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsCustomchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIp'
--
-- * 'aclAdUnitId'
--
-- * 'aclAdClientId'
--
-- * 'aclKey'
--
-- * 'aclPageToken'
--
-- * 'aclOauthToken'
--
-- * 'aclMaxResults'
--
-- * 'aclFields'
--
-- * 'aclAlt'
adunitsCustomchannelsList'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdunitsCustomchannelsList'
adunitsCustomchannelsList' pAclAdUnitId_ pAclAdClientId_ =
    AdunitsCustomchannelsList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIp = Nothing
    , _aclAdUnitId = pAclAdUnitId_
    , _aclAdClientId = pAclAdClientId_
    , _aclKey = Nothing
    , _aclPageToken = Nothing
    , _aclOauthToken = Nothing
    , _aclMaxResults = Nothing
    , _aclFields = Nothing
    , _aclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aclQuotaUser :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aclQuotaUser
  = lens _aclQuotaUser (\ s a -> s{_aclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aclPrettyPrint :: Lens' AdunitsCustomchannelsList' Bool
aclPrettyPrint
  = lens _aclPrettyPrint
      (\ s a -> s{_aclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aclUserIp :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aclUserIp
  = lens _aclUserIp (\ s a -> s{_aclUserIp = a})

-- | Ad unit for which to list custom channels.
aclAdUnitId :: Lens' AdunitsCustomchannelsList' Text
aclAdUnitId
  = lens _aclAdUnitId (\ s a -> s{_aclAdUnitId = a})

-- | Ad client which contains the ad unit.
aclAdClientId :: Lens' AdunitsCustomchannelsList' Text
aclAdClientId
  = lens _aclAdClientId
      (\ s a -> s{_aclAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aclPageToken :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | OAuth 2.0 token for the current user.
aclOauthToken :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aclOauthToken
  = lens _aclOauthToken
      (\ s a -> s{_aclOauthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aclMaxResults :: Lens' AdunitsCustomchannelsList' (Maybe Int32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AdunitsCustomchannelsList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

-- | Data format for the response.
aclAlt :: Lens' AdunitsCustomchannelsList' Alt
aclAlt = lens _aclAlt (\ s a -> s{_aclAlt = a})

instance GoogleRequest AdunitsCustomchannelsList'
         where
        type Rs AdunitsCustomchannelsList' = CustomChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsCustomchannelsList'{..}
          = go _aclQuotaUser (Just _aclPrettyPrint) _aclUserIp
              _aclAdUnitId
              _aclAdClientId
              _aclKey
              _aclPageToken
              _aclOauthToken
              _aclMaxResults
              _aclFields
              (Just _aclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdunitsCustomchannelsListAPI)
                      r
                      u
