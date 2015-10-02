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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsInsert@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
    (
    -- * REST Resource
      AdvertiserGroupsInsertResource

    -- * Creating a Request
    , advertiserGroupsInsert'
    , AdvertiserGroupsInsert'

    -- * Request Lenses
    , agiQuotaUser
    , agiPrettyPrint
    , agiAdvertiserGroup
    , agiUserIP
    , agiProfileId
    , agiKey
    , agiOAuthToken
    , agiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsInsert@ which the
-- 'AdvertiserGroupsInsert'' request conforms to.
type AdvertiserGroupsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AdvertiserGroup :>
                           Post '[JSON] AdvertiserGroup

-- | Inserts a new advertiser group.
--
-- /See:/ 'advertiserGroupsInsert'' smart constructor.
data AdvertiserGroupsInsert' = AdvertiserGroupsInsert'
    { _agiQuotaUser       :: !(Maybe Text)
    , _agiPrettyPrint     :: !Bool
    , _agiAdvertiserGroup :: !AdvertiserGroup
    , _agiUserIP          :: !(Maybe Text)
    , _agiProfileId       :: !Int64
    , _agiKey             :: !(Maybe Key)
    , _agiOAuthToken      :: !(Maybe OAuthToken)
    , _agiFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agiQuotaUser'
--
-- * 'agiPrettyPrint'
--
-- * 'agiAdvertiserGroup'
--
-- * 'agiUserIP'
--
-- * 'agiProfileId'
--
-- * 'agiKey'
--
-- * 'agiOAuthToken'
--
-- * 'agiFields'
advertiserGroupsInsert'
    :: AdvertiserGroup -- ^ 'AdvertiserGroup'
    -> Int64 -- ^ 'profileId'
    -> AdvertiserGroupsInsert'
advertiserGroupsInsert' pAgiAdvertiserGroup_ pAgiProfileId_ =
    AdvertiserGroupsInsert'
    { _agiQuotaUser = Nothing
    , _agiPrettyPrint = True
    , _agiAdvertiserGroup = pAgiAdvertiserGroup_
    , _agiUserIP = Nothing
    , _agiProfileId = pAgiProfileId_
    , _agiKey = Nothing
    , _agiOAuthToken = Nothing
    , _agiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agiQuotaUser :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiQuotaUser
  = lens _agiQuotaUser (\ s a -> s{_agiQuotaUser = a})

-- | Returns response with indentations and line breaks.
agiPrettyPrint :: Lens' AdvertiserGroupsInsert' Bool
agiPrettyPrint
  = lens _agiPrettyPrint
      (\ s a -> s{_agiPrettyPrint = a})

-- | Multipart request metadata.
agiAdvertiserGroup :: Lens' AdvertiserGroupsInsert' AdvertiserGroup
agiAdvertiserGroup
  = lens _agiAdvertiserGroup
      (\ s a -> s{_agiAdvertiserGroup = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agiUserIP :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiUserIP
  = lens _agiUserIP (\ s a -> s{_agiUserIP = a})

-- | User profile ID associated with this request.
agiProfileId :: Lens' AdvertiserGroupsInsert' Int64
agiProfileId
  = lens _agiProfileId (\ s a -> s{_agiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agiKey :: Lens' AdvertiserGroupsInsert' (Maybe Key)
agiKey = lens _agiKey (\ s a -> s{_agiKey = a})

-- | OAuth 2.0 token for the current user.
agiOAuthToken :: Lens' AdvertiserGroupsInsert' (Maybe OAuthToken)
agiOAuthToken
  = lens _agiOAuthToken
      (\ s a -> s{_agiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agiFields :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiFields
  = lens _agiFields (\ s a -> s{_agiFields = a})

instance GoogleAuth AdvertiserGroupsInsert' where
        authKey = agiKey . _Just
        authToken = agiOAuthToken . _Just

instance GoogleRequest AdvertiserGroupsInsert' where
        type Rs AdvertiserGroupsInsert' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsInsert'{..}
          = go _agiQuotaUser (Just _agiPrettyPrint) _agiUserIP
              _agiProfileId
              _agiKey
              _agiOAuthToken
              _agiFields
              (Just AltJSON)
              _agiAdvertiserGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsInsertResource)
                      r
                      u
