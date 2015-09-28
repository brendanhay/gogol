{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Advertisers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.patch@.
module Network.Google.API.DFAReporting.Advertisers.Patch
    (
    -- * REST Resource
      AdvertisersPatchAPI

    -- * Creating a Request
    , advertisersPatch'
    , AdvertisersPatch'

    -- * Request Lenses
    , advdQuotaUser
    , advdPrettyPrint
    , advdUserIp
    , advdProfileId
    , advdKey
    , advdId
    , advdOauthToken
    , advdFields
    , advdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertisers.patch which the
-- 'AdvertisersPatch'' request conforms to.
type AdvertisersPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Advertiser

-- | Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ 'advertisersPatch'' smart constructor.
data AdvertisersPatch' = AdvertisersPatch'
    { _advdQuotaUser   :: !(Maybe Text)
    , _advdPrettyPrint :: !Bool
    , _advdUserIp      :: !(Maybe Text)
    , _advdProfileId   :: !Int64
    , _advdKey         :: !(Maybe Text)
    , _advdId          :: !Int64
    , _advdOauthToken  :: !(Maybe Text)
    , _advdFields      :: !(Maybe Text)
    , _advdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advdQuotaUser'
--
-- * 'advdPrettyPrint'
--
-- * 'advdUserIp'
--
-- * 'advdProfileId'
--
-- * 'advdKey'
--
-- * 'advdId'
--
-- * 'advdOauthToken'
--
-- * 'advdFields'
--
-- * 'advdAlt'
advertisersPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertisersPatch'
advertisersPatch' pAdvdProfileId_ pAdvdId_ =
    AdvertisersPatch'
    { _advdQuotaUser = Nothing
    , _advdPrettyPrint = True
    , _advdUserIp = Nothing
    , _advdProfileId = pAdvdProfileId_
    , _advdKey = Nothing
    , _advdId = pAdvdId_
    , _advdOauthToken = Nothing
    , _advdFields = Nothing
    , _advdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
advdQuotaUser :: Lens' AdvertisersPatch' (Maybe Text)
advdQuotaUser
  = lens _advdQuotaUser
      (\ s a -> s{_advdQuotaUser = a})

-- | Returns response with indentations and line breaks.
advdPrettyPrint :: Lens' AdvertisersPatch' Bool
advdPrettyPrint
  = lens _advdPrettyPrint
      (\ s a -> s{_advdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
advdUserIp :: Lens' AdvertisersPatch' (Maybe Text)
advdUserIp
  = lens _advdUserIp (\ s a -> s{_advdUserIp = a})

-- | User profile ID associated with this request.
advdProfileId :: Lens' AdvertisersPatch' Int64
advdProfileId
  = lens _advdProfileId
      (\ s a -> s{_advdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
advdKey :: Lens' AdvertisersPatch' (Maybe Text)
advdKey = lens _advdKey (\ s a -> s{_advdKey = a})

-- | Advertiser ID.
advdId :: Lens' AdvertisersPatch' Int64
advdId = lens _advdId (\ s a -> s{_advdId = a})

-- | OAuth 2.0 token for the current user.
advdOauthToken :: Lens' AdvertisersPatch' (Maybe Text)
advdOauthToken
  = lens _advdOauthToken
      (\ s a -> s{_advdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
advdFields :: Lens' AdvertisersPatch' (Maybe Text)
advdFields
  = lens _advdFields (\ s a -> s{_advdFields = a})

-- | Data format for the response.
advdAlt :: Lens' AdvertisersPatch' Alt
advdAlt = lens _advdAlt (\ s a -> s{_advdAlt = a})

instance GoogleRequest AdvertisersPatch' where
        type Rs AdvertisersPatch' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersPatch'{..}
          = go _advdQuotaUser (Just _advdPrettyPrint)
              _advdUserIp
              _advdProfileId
              _advdKey
              (Just _advdId)
              _advdOauthToken
              _advdFields
              (Just _advdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersPatchAPI)
                      r
                      u
