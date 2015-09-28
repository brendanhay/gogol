{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.CreativeGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeGroups.insert@.
module Network.Google.API.DFAReporting.CreativeGroups.Insert
    (
    -- * REST Resource
      CreativeGroupsInsertAPI

    -- * Creating a Request
    , creativeGroupsInsert'
    , CreativeGroupsInsert'

    -- * Request Lenses
    , cgiQuotaUser
    , cgiPrettyPrint
    , cgiUserIp
    , cgiProfileId
    , cgiKey
    , cgiOauthToken
    , cgiFields
    , cgiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.creativeGroups.insert which the
-- 'CreativeGroupsInsert'' request conforms to.
type CreativeGroupsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] CreativeGroup

-- | Inserts a new creative group.
--
-- /See:/ 'creativeGroupsInsert'' smart constructor.
data CreativeGroupsInsert' = CreativeGroupsInsert'
    { _cgiQuotaUser   :: !(Maybe Text)
    , _cgiPrettyPrint :: !Bool
    , _cgiUserIp      :: !(Maybe Text)
    , _cgiProfileId   :: !Int64
    , _cgiKey         :: !(Maybe Text)
    , _cgiOauthToken  :: !(Maybe Text)
    , _cgiFields      :: !(Maybe Text)
    , _cgiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgiQuotaUser'
--
-- * 'cgiPrettyPrint'
--
-- * 'cgiUserIp'
--
-- * 'cgiProfileId'
--
-- * 'cgiKey'
--
-- * 'cgiOauthToken'
--
-- * 'cgiFields'
--
-- * 'cgiAlt'
creativeGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> CreativeGroupsInsert'
creativeGroupsInsert' pCgiProfileId_ =
    CreativeGroupsInsert'
    { _cgiQuotaUser = Nothing
    , _cgiPrettyPrint = True
    , _cgiUserIp = Nothing
    , _cgiProfileId = pCgiProfileId_
    , _cgiKey = Nothing
    , _cgiOauthToken = Nothing
    , _cgiFields = Nothing
    , _cgiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgiQuotaUser :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiQuotaUser
  = lens _cgiQuotaUser (\ s a -> s{_cgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgiPrettyPrint :: Lens' CreativeGroupsInsert' Bool
cgiPrettyPrint
  = lens _cgiPrettyPrint
      (\ s a -> s{_cgiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgiUserIp :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiUserIp
  = lens _cgiUserIp (\ s a -> s{_cgiUserIp = a})

-- | User profile ID associated with this request.
cgiProfileId :: Lens' CreativeGroupsInsert' Int64
cgiProfileId
  = lens _cgiProfileId (\ s a -> s{_cgiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgiKey :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiKey = lens _cgiKey (\ s a -> s{_cgiKey = a})

-- | OAuth 2.0 token for the current user.
cgiOauthToken :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiOauthToken
  = lens _cgiOauthToken
      (\ s a -> s{_cgiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgiFields :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiFields
  = lens _cgiFields (\ s a -> s{_cgiFields = a})

-- | Data format for the response.
cgiAlt :: Lens' CreativeGroupsInsert' Alt
cgiAlt = lens _cgiAlt (\ s a -> s{_cgiAlt = a})

instance GoogleRequest CreativeGroupsInsert' where
        type Rs CreativeGroupsInsert' = CreativeGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeGroupsInsert'{..}
          = go _cgiQuotaUser (Just _cgiPrettyPrint) _cgiUserIp
              _cgiProfileId
              _cgiKey
              _cgiOauthToken
              _cgiFields
              (Just _cgiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeGroupsInsertAPI)
                      r
                      u
