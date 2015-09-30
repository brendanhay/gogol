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
-- Module      : Network.Google.Resource.AdSense.Customchannels.Adunits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseCustomchannelsAdunitsList@.
module Network.Google.Resource.AdSense.Customchannels.Adunits.List
    (
    -- * REST Resource
      CustomchannelsAdunitsListResource

    -- * Creating a Request
    , customchannelsAdunitsList'
    , CustomchannelsAdunitsList'

    -- * Request Lenses
    , calQuotaUser
    , calPrettyPrint
    , calIncludeInactive
    , calCustomChannelId
    , calUserIp
    , calAdClientId
    , calKey
    , calPageToken
    , calOauthToken
    , calMaxResults
    , calFields
    , calAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseCustomchannelsAdunitsList@ which the
-- 'CustomchannelsAdunitsList'' request conforms to.
type CustomchannelsAdunitsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
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

-- | List all ad units in the specified custom channel.
--
-- /See:/ 'customchannelsAdunitsList'' smart constructor.
data CustomchannelsAdunitsList' = CustomchannelsAdunitsList'
    { _calQuotaUser       :: !(Maybe Text)
    , _calPrettyPrint     :: !Bool
    , _calIncludeInactive :: !(Maybe Bool)
    , _calCustomChannelId :: !Text
    , _calUserIp          :: !(Maybe Text)
    , _calAdClientId      :: !Text
    , _calKey             :: !(Maybe Text)
    , _calPageToken       :: !(Maybe Text)
    , _calOauthToken      :: !(Maybe Text)
    , _calMaxResults      :: !(Maybe Int32)
    , _calFields          :: !(Maybe Text)
    , _calAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsAdunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calQuotaUser'
--
-- * 'calPrettyPrint'
--
-- * 'calIncludeInactive'
--
-- * 'calCustomChannelId'
--
-- * 'calUserIp'
--
-- * 'calAdClientId'
--
-- * 'calKey'
--
-- * 'calPageToken'
--
-- * 'calOauthToken'
--
-- * 'calMaxResults'
--
-- * 'calFields'
--
-- * 'calAlt'
customchannelsAdunitsList'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomchannelsAdunitsList'
customchannelsAdunitsList' pCalCustomChannelId_ pCalAdClientId_ =
    CustomchannelsAdunitsList'
    { _calQuotaUser = Nothing
    , _calPrettyPrint = True
    , _calIncludeInactive = Nothing
    , _calCustomChannelId = pCalCustomChannelId_
    , _calUserIp = Nothing
    , _calAdClientId = pCalAdClientId_
    , _calKey = Nothing
    , _calPageToken = Nothing
    , _calOauthToken = Nothing
    , _calMaxResults = Nothing
    , _calFields = Nothing
    , _calAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
calQuotaUser :: Lens' CustomchannelsAdunitsList' (Maybe Text)
calQuotaUser
  = lens _calQuotaUser (\ s a -> s{_calQuotaUser = a})

-- | Returns response with indentations and line breaks.
calPrettyPrint :: Lens' CustomchannelsAdunitsList' Bool
calPrettyPrint
  = lens _calPrettyPrint
      (\ s a -> s{_calPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
calIncludeInactive :: Lens' CustomchannelsAdunitsList' (Maybe Bool)
calIncludeInactive
  = lens _calIncludeInactive
      (\ s a -> s{_calIncludeInactive = a})

-- | Custom channel for which to list ad units.
calCustomChannelId :: Lens' CustomchannelsAdunitsList' Text
calCustomChannelId
  = lens _calCustomChannelId
      (\ s a -> s{_calCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
calUserIp :: Lens' CustomchannelsAdunitsList' (Maybe Text)
calUserIp
  = lens _calUserIp (\ s a -> s{_calUserIp = a})

-- | Ad client which contains the custom channel.
calAdClientId :: Lens' CustomchannelsAdunitsList' Text
calAdClientId
  = lens _calAdClientId
      (\ s a -> s{_calAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
calKey :: Lens' CustomchannelsAdunitsList' (Maybe Text)
calKey = lens _calKey (\ s a -> s{_calKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
calPageToken :: Lens' CustomchannelsAdunitsList' (Maybe Text)
calPageToken
  = lens _calPageToken (\ s a -> s{_calPageToken = a})

-- | OAuth 2.0 token for the current user.
calOauthToken :: Lens' CustomchannelsAdunitsList' (Maybe Text)
calOauthToken
  = lens _calOauthToken
      (\ s a -> s{_calOauthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
calMaxResults :: Lens' CustomchannelsAdunitsList' (Maybe Int32)
calMaxResults
  = lens _calMaxResults
      (\ s a -> s{_calMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
calFields :: Lens' CustomchannelsAdunitsList' (Maybe Text)
calFields
  = lens _calFields (\ s a -> s{_calFields = a})

-- | Data format for the response.
calAlt :: Lens' CustomchannelsAdunitsList' Alt
calAlt = lens _calAlt (\ s a -> s{_calAlt = a})

instance GoogleRequest CustomchannelsAdunitsList'
         where
        type Rs CustomchannelsAdunitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u CustomchannelsAdunitsList'{..}
          = go _calQuotaUser (Just _calPrettyPrint)
              _calIncludeInactive
              _calCustomChannelId
              _calUserIp
              _calAdClientId
              _calKey
              _calPageToken
              _calOauthToken
              _calMaxResults
              _calFields
              (Just _calAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsAdunitsListResource)
                      r
                      u
