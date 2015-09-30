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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsDelete@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
    (
    -- * REST Resource
      AdvertiserGroupsDeleteResource

    -- * Creating a Request
    , advertiserGroupsDelete'
    , AdvertiserGroupsDelete'

    -- * Request Lenses
    , agdQuotaUser
    , agdPrettyPrint
    , agdUserIp
    , agdProfileId
    , agdKey
    , agdId
    , agdOauthToken
    , agdFields
    , agdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsDelete@ which the
-- 'AdvertiserGroupsDelete'' request conforms to.
type AdvertiserGroupsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing advertiser group.
--
-- /See:/ 'advertiserGroupsDelete'' smart constructor.
data AdvertiserGroupsDelete' = AdvertiserGroupsDelete'
    { _agdQuotaUser   :: !(Maybe Text)
    , _agdPrettyPrint :: !Bool
    , _agdUserIp      :: !(Maybe Text)
    , _agdProfileId   :: !Int64
    , _agdKey         :: !(Maybe Text)
    , _agdId          :: !Int64
    , _agdOauthToken  :: !(Maybe Text)
    , _agdFields      :: !(Maybe Text)
    , _agdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agdQuotaUser'
--
-- * 'agdPrettyPrint'
--
-- * 'agdUserIp'
--
-- * 'agdProfileId'
--
-- * 'agdKey'
--
-- * 'agdId'
--
-- * 'agdOauthToken'
--
-- * 'agdFields'
--
-- * 'agdAlt'
advertiserGroupsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsDelete'
advertiserGroupsDelete' pAgdProfileId_ pAgdId_ =
    AdvertiserGroupsDelete'
    { _agdQuotaUser = Nothing
    , _agdPrettyPrint = True
    , _agdUserIp = Nothing
    , _agdProfileId = pAgdProfileId_
    , _agdKey = Nothing
    , _agdId = pAgdId_
    , _agdOauthToken = Nothing
    , _agdFields = Nothing
    , _agdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agdQuotaUser :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdQuotaUser
  = lens _agdQuotaUser (\ s a -> s{_agdQuotaUser = a})

-- | Returns response with indentations and line breaks.
agdPrettyPrint :: Lens' AdvertiserGroupsDelete' Bool
agdPrettyPrint
  = lens _agdPrettyPrint
      (\ s a -> s{_agdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agdUserIp :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdUserIp
  = lens _agdUserIp (\ s a -> s{_agdUserIp = a})

-- | User profile ID associated with this request.
agdProfileId :: Lens' AdvertiserGroupsDelete' Int64
agdProfileId
  = lens _agdProfileId (\ s a -> s{_agdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agdKey :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdKey = lens _agdKey (\ s a -> s{_agdKey = a})

-- | Advertiser group ID.
agdId :: Lens' AdvertiserGroupsDelete' Int64
agdId = lens _agdId (\ s a -> s{_agdId = a})

-- | OAuth 2.0 token for the current user.
agdOauthToken :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdOauthToken
  = lens _agdOauthToken
      (\ s a -> s{_agdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agdFields :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdFields
  = lens _agdFields (\ s a -> s{_agdFields = a})

-- | Data format for the response.
agdAlt :: Lens' AdvertiserGroupsDelete' Alt
agdAlt = lens _agdAlt (\ s a -> s{_agdAlt = a})

instance GoogleRequest AdvertiserGroupsDelete' where
        type Rs AdvertiserGroupsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsDelete'{..}
          = go _agdQuotaUser (Just _agdPrettyPrint) _agdUserIp
              _agdProfileId
              _agdKey
              _agdId
              _agdOauthToken
              _agdFields
              (Just _agdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsDeleteResource)
                      r
                      u
