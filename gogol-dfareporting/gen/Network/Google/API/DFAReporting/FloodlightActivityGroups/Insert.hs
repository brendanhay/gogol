{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivityGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.insert@.
module Network.Google.API.DFAReporting.FloodlightActivityGroups.Insert
    (
    -- * REST Resource
      FloodlightActivityGroupsInsertAPI

    -- * Creating a Request
    , floodlightActivityGroupsInsert'
    , FloodlightActivityGroupsInsert'

    -- * Request Lenses
    , fagiQuotaUser
    , fagiPrettyPrint
    , fagiUserIp
    , fagiProfileId
    , fagiKey
    , fagiOauthToken
    , fagiFields
    , fagiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivityGroups.insert which the
-- 'FloodlightActivityGroupsInsert'' request conforms to.
type FloodlightActivityGroupsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] FloodlightActivityGroup

-- | Inserts a new floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsInsert'' smart constructor.
data FloodlightActivityGroupsInsert' = FloodlightActivityGroupsInsert'
    { _fagiQuotaUser   :: !(Maybe Text)
    , _fagiPrettyPrint :: !Bool
    , _fagiUserIp      :: !(Maybe Text)
    , _fagiProfileId   :: !Int64
    , _fagiKey         :: !(Maybe Text)
    , _fagiOauthToken  :: !(Maybe Text)
    , _fagiFields      :: !(Maybe Text)
    , _fagiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagiQuotaUser'
--
-- * 'fagiPrettyPrint'
--
-- * 'fagiUserIp'
--
-- * 'fagiProfileId'
--
-- * 'fagiKey'
--
-- * 'fagiOauthToken'
--
-- * 'fagiFields'
--
-- * 'fagiAlt'
floodlightActivityGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivityGroupsInsert'
floodlightActivityGroupsInsert' pFagiProfileId_ =
    FloodlightActivityGroupsInsert'
    { _fagiQuotaUser = Nothing
    , _fagiPrettyPrint = True
    , _fagiUserIp = Nothing
    , _fagiProfileId = pFagiProfileId_
    , _fagiKey = Nothing
    , _fagiOauthToken = Nothing
    , _fagiFields = Nothing
    , _fagiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fagiQuotaUser :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiQuotaUser
  = lens _fagiQuotaUser
      (\ s a -> s{_fagiQuotaUser = a})

-- | Returns response with indentations and line breaks.
fagiPrettyPrint :: Lens' FloodlightActivityGroupsInsert' Bool
fagiPrettyPrint
  = lens _fagiPrettyPrint
      (\ s a -> s{_fagiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagiUserIp :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiUserIp
  = lens _fagiUserIp (\ s a -> s{_fagiUserIp = a})

-- | User profile ID associated with this request.
fagiProfileId :: Lens' FloodlightActivityGroupsInsert' Int64
fagiProfileId
  = lens _fagiProfileId
      (\ s a -> s{_fagiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagiKey :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiKey = lens _fagiKey (\ s a -> s{_fagiKey = a})

-- | OAuth 2.0 token for the current user.
fagiOauthToken :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiOauthToken
  = lens _fagiOauthToken
      (\ s a -> s{_fagiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagiFields :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiFields
  = lens _fagiFields (\ s a -> s{_fagiFields = a})

-- | Data format for the response.
fagiAlt :: Lens' FloodlightActivityGroupsInsert' Alt
fagiAlt = lens _fagiAlt (\ s a -> s{_fagiAlt = a})

instance GoogleRequest
         FloodlightActivityGroupsInsert' where
        type Rs FloodlightActivityGroupsInsert' =
             FloodlightActivityGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivityGroupsInsert'{..}
          = go _fagiQuotaUser (Just _fagiPrettyPrint)
              _fagiUserIp
              _fagiProfileId
              _fagiKey
              _fagiOauthToken
              _fagiFields
              (Just _fagiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivityGroupsInsertAPI)
                      r
                      u
