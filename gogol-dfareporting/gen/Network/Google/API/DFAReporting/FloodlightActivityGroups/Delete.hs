{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivityGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.delete@.
module Network.Google.API.DFAReporting.FloodlightActivityGroups.Delete
    (
    -- * REST Resource
      FloodlightActivityGroupsDeleteAPI

    -- * Creating a Request
    , floodlightActivityGroupsDelete'
    , FloodlightActivityGroupsDelete'

    -- * Request Lenses
    , fagdQuotaUser
    , fagdPrettyPrint
    , fagdUserIp
    , fagdProfileId
    , fagdKey
    , fagdId
    , fagdOauthToken
    , fagdFields
    , fagdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivityGroups.delete which the
-- 'FloodlightActivityGroupsDelete'' request conforms to.
type FloodlightActivityGroupsDeleteAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsDelete'' smart constructor.
data FloodlightActivityGroupsDelete' = FloodlightActivityGroupsDelete'
    { _fagdQuotaUser   :: !(Maybe Text)
    , _fagdPrettyPrint :: !Bool
    , _fagdUserIp      :: !(Maybe Text)
    , _fagdProfileId   :: !Int64
    , _fagdKey         :: !(Maybe Text)
    , _fagdId          :: !Int64
    , _fagdOauthToken  :: !(Maybe Text)
    , _fagdFields      :: !(Maybe Text)
    , _fagdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagdQuotaUser'
--
-- * 'fagdPrettyPrint'
--
-- * 'fagdUserIp'
--
-- * 'fagdProfileId'
--
-- * 'fagdKey'
--
-- * 'fagdId'
--
-- * 'fagdOauthToken'
--
-- * 'fagdFields'
--
-- * 'fagdAlt'
floodlightActivityGroupsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivityGroupsDelete'
floodlightActivityGroupsDelete' pFagdProfileId_ pFagdId_ =
    FloodlightActivityGroupsDelete'
    { _fagdQuotaUser = Nothing
    , _fagdPrettyPrint = True
    , _fagdUserIp = Nothing
    , _fagdProfileId = pFagdProfileId_
    , _fagdKey = Nothing
    , _fagdId = pFagdId_
    , _fagdOauthToken = Nothing
    , _fagdFields = Nothing
    , _fagdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fagdQuotaUser :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdQuotaUser
  = lens _fagdQuotaUser
      (\ s a -> s{_fagdQuotaUser = a})

-- | Returns response with indentations and line breaks.
fagdPrettyPrint :: Lens' FloodlightActivityGroupsDelete' Bool
fagdPrettyPrint
  = lens _fagdPrettyPrint
      (\ s a -> s{_fagdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagdUserIp :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdUserIp
  = lens _fagdUserIp (\ s a -> s{_fagdUserIp = a})

-- | User profile ID associated with this request.
fagdProfileId :: Lens' FloodlightActivityGroupsDelete' Int64
fagdProfileId
  = lens _fagdProfileId
      (\ s a -> s{_fagdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagdKey :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdKey = lens _fagdKey (\ s a -> s{_fagdKey = a})

-- | Floodlight activity Group ID.
fagdId :: Lens' FloodlightActivityGroupsDelete' Int64
fagdId = lens _fagdId (\ s a -> s{_fagdId = a})

-- | OAuth 2.0 token for the current user.
fagdOauthToken :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdOauthToken
  = lens _fagdOauthToken
      (\ s a -> s{_fagdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagdFields :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdFields
  = lens _fagdFields (\ s a -> s{_fagdFields = a})

-- | Data format for the response.
fagdAlt :: Lens' FloodlightActivityGroupsDelete' Alt
fagdAlt = lens _fagdAlt (\ s a -> s{_fagdAlt = a})

instance GoogleRequest
         FloodlightActivityGroupsDelete' where
        type Rs FloodlightActivityGroupsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivityGroupsDelete'{..}
          = go _fagdQuotaUser (Just _fagdPrettyPrint)
              _fagdUserIp
              _fagdProfileId
              _fagdKey
              _fagdId
              _fagdOauthToken
              _fagdFields
              (Just _fagdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivityGroupsDeleteAPI)
                      r
                      u
