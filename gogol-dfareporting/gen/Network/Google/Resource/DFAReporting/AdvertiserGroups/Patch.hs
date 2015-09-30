{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsPatch@.
module DFAReporting.AdvertiserGroups.Patch
    (
    -- * REST Resource
      AdvertiserGroupsPatchAPI

    -- * Creating a Request
    , advertiserGroupsPatch
    , AdvertiserGroupsPatch

    -- * Request Lenses
    , agpQuotaUser
    , agpPrettyPrint
    , agpUserIp
    , agpProfileId
    , agpKey
    , agpId
    , agpOauthToken
    , agpFields
    , agpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsPatch@ which the
-- 'AdvertiserGroupsPatch' request conforms to.
type AdvertiserGroupsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "id" Int64 :>
             Patch '[JSON] AdvertiserGroup

-- | Updates an existing advertiser group. This method supports patch
-- semantics.
--
-- /See:/ 'advertiserGroupsPatch' smart constructor.
data AdvertiserGroupsPatch = AdvertiserGroupsPatch
    { _agpQuotaUser   :: !(Maybe Text)
    , _agpPrettyPrint :: !Bool
    , _agpUserIp      :: !(Maybe Text)
    , _agpProfileId   :: !Int64
    , _agpKey         :: !(Maybe Text)
    , _agpId          :: !Int64
    , _agpOauthToken  :: !(Maybe Text)
    , _agpFields      :: !(Maybe Text)
    , _agpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agpQuotaUser'
--
-- * 'agpPrettyPrint'
--
-- * 'agpUserIp'
--
-- * 'agpProfileId'
--
-- * 'agpKey'
--
-- * 'agpId'
--
-- * 'agpOauthToken'
--
-- * 'agpFields'
--
-- * 'agpAlt'
advertiserGroupsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsPatch
advertiserGroupsPatch pAgpProfileId_ pAgpId_ =
    AdvertiserGroupsPatch
    { _agpQuotaUser = Nothing
    , _agpPrettyPrint = True
    , _agpUserIp = Nothing
    , _agpProfileId = pAgpProfileId_
    , _agpKey = Nothing
    , _agpId = pAgpId_
    , _agpOauthToken = Nothing
    , _agpFields = Nothing
    , _agpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agpQuotaUser :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpQuotaUser
  = lens _agpQuotaUser (\ s a -> s{_agpQuotaUser = a})

-- | Returns response with indentations and line breaks.
agpPrettyPrint :: Lens' AdvertiserGroupsPatch' Bool
agpPrettyPrint
  = lens _agpPrettyPrint
      (\ s a -> s{_agpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agpUserIp :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpUserIp
  = lens _agpUserIp (\ s a -> s{_agpUserIp = a})

-- | User profile ID associated with this request.
agpProfileId :: Lens' AdvertiserGroupsPatch' Int64
agpProfileId
  = lens _agpProfileId (\ s a -> s{_agpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agpKey :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpKey = lens _agpKey (\ s a -> s{_agpKey = a})

-- | Advertiser group ID.
agpId :: Lens' AdvertiserGroupsPatch' Int64
agpId = lens _agpId (\ s a -> s{_agpId = a})

-- | OAuth 2.0 token for the current user.
agpOauthToken :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpOauthToken
  = lens _agpOauthToken
      (\ s a -> s{_agpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agpFields :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpFields
  = lens _agpFields (\ s a -> s{_agpFields = a})

-- | Data format for the response.
agpAlt :: Lens' AdvertiserGroupsPatch' Text
agpAlt = lens _agpAlt (\ s a -> s{_agpAlt = a})

instance GoogleRequest AdvertiserGroupsPatch' where
        type Rs AdvertiserGroupsPatch' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsPatch{..}
          = go _agpQuotaUser _agpPrettyPrint _agpUserIp
              _agpProfileId
              _agpKey
              (Just _agpId)
              _agpOauthToken
              _agpFields
              _agpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsPatchAPI)
                      r
                      u
