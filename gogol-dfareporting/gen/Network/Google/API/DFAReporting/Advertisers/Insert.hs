{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Advertisers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.insert@.
module Network.Google.API.DFAReporting.Advertisers.Insert
    (
    -- * REST Resource
      AdvertisersInsertAPI

    -- * Creating a Request
    , advertisersInsert'
    , AdvertisersInsert'

    -- * Request Lenses
    , advQuotaUser
    , advPrettyPrint
    , advUserIp
    , advProfileId
    , advKey
    , advOauthToken
    , advFields
    , advAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertisers.insert which the
-- 'AdvertisersInsert'' request conforms to.
type AdvertisersInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Advertiser

-- | Inserts a new advertiser.
--
-- /See:/ 'advertisersInsert'' smart constructor.
data AdvertisersInsert' = AdvertisersInsert'
    { _advQuotaUser   :: !(Maybe Text)
    , _advPrettyPrint :: !Bool
    , _advUserIp      :: !(Maybe Text)
    , _advProfileId   :: !Int64
    , _advKey         :: !(Maybe Text)
    , _advOauthToken  :: !(Maybe Text)
    , _advFields      :: !(Maybe Text)
    , _advAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advQuotaUser'
--
-- * 'advPrettyPrint'
--
-- * 'advUserIp'
--
-- * 'advProfileId'
--
-- * 'advKey'
--
-- * 'advOauthToken'
--
-- * 'advFields'
--
-- * 'advAlt'
advertisersInsert'
    :: Int64 -- ^ 'profileId'
    -> AdvertisersInsert'
advertisersInsert' pAdvProfileId_ =
    AdvertisersInsert'
    { _advQuotaUser = Nothing
    , _advPrettyPrint = True
    , _advUserIp = Nothing
    , _advProfileId = pAdvProfileId_
    , _advKey = Nothing
    , _advOauthToken = Nothing
    , _advFields = Nothing
    , _advAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
advQuotaUser :: Lens' AdvertisersInsert' (Maybe Text)
advQuotaUser
  = lens _advQuotaUser (\ s a -> s{_advQuotaUser = a})

-- | Returns response with indentations and line breaks.
advPrettyPrint :: Lens' AdvertisersInsert' Bool
advPrettyPrint
  = lens _advPrettyPrint
      (\ s a -> s{_advPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
advUserIp :: Lens' AdvertisersInsert' (Maybe Text)
advUserIp
  = lens _advUserIp (\ s a -> s{_advUserIp = a})

-- | User profile ID associated with this request.
advProfileId :: Lens' AdvertisersInsert' Int64
advProfileId
  = lens _advProfileId (\ s a -> s{_advProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
advKey :: Lens' AdvertisersInsert' (Maybe Text)
advKey = lens _advKey (\ s a -> s{_advKey = a})

-- | OAuth 2.0 token for the current user.
advOauthToken :: Lens' AdvertisersInsert' (Maybe Text)
advOauthToken
  = lens _advOauthToken
      (\ s a -> s{_advOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
advFields :: Lens' AdvertisersInsert' (Maybe Text)
advFields
  = lens _advFields (\ s a -> s{_advFields = a})

-- | Data format for the response.
advAlt :: Lens' AdvertisersInsert' Alt
advAlt = lens _advAlt (\ s a -> s{_advAlt = a})

instance GoogleRequest AdvertisersInsert' where
        type Rs AdvertisersInsert' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersInsert'{..}
          = go _advQuotaUser (Just _advPrettyPrint) _advUserIp
              _advProfileId
              _advKey
              _advOauthToken
              _advFields
              (Just _advAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersInsertAPI)
                      r
                      u
