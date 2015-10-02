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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsInsert@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
    (
    -- * REST Resource
      FloodlightActivityGroupsInsertResource

    -- * Creating a Request
    , floodlightActivityGroupsInsert'
    , FloodlightActivityGroupsInsert'

    -- * Request Lenses
    , fagiQuotaUser
    , fagiPrettyPrint
    , fagiFloodlightActivityGroup
    , fagiUserIP
    , fagiProfileId
    , fagiKey
    , fagiOAuthToken
    , fagiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsInsert@ which the
-- 'FloodlightActivityGroupsInsert'' request conforms to.
type FloodlightActivityGroupsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FloodlightActivityGroup :>
                           Post '[JSON] FloodlightActivityGroup

-- | Inserts a new floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsInsert'' smart constructor.
data FloodlightActivityGroupsInsert' = FloodlightActivityGroupsInsert'
    { _fagiQuotaUser               :: !(Maybe Text)
    , _fagiPrettyPrint             :: !Bool
    , _fagiFloodlightActivityGroup :: !FloodlightActivityGroup
    , _fagiUserIP                  :: !(Maybe Text)
    , _fagiProfileId               :: !Int64
    , _fagiKey                     :: !(Maybe Key)
    , _fagiOAuthToken              :: !(Maybe OAuthToken)
    , _fagiFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagiQuotaUser'
--
-- * 'fagiPrettyPrint'
--
-- * 'fagiFloodlightActivityGroup'
--
-- * 'fagiUserIP'
--
-- * 'fagiProfileId'
--
-- * 'fagiKey'
--
-- * 'fagiOAuthToken'
--
-- * 'fagiFields'
floodlightActivityGroupsInsert'
    :: FloodlightActivityGroup -- ^ 'FloodlightActivityGroup'
    -> Int64 -- ^ 'profileId'
    -> FloodlightActivityGroupsInsert'
floodlightActivityGroupsInsert' pFagiFloodlightActivityGroup_ pFagiProfileId_ =
    FloodlightActivityGroupsInsert'
    { _fagiQuotaUser = Nothing
    , _fagiPrettyPrint = True
    , _fagiFloodlightActivityGroup = pFagiFloodlightActivityGroup_
    , _fagiUserIP = Nothing
    , _fagiProfileId = pFagiProfileId_
    , _fagiKey = Nothing
    , _fagiOAuthToken = Nothing
    , _fagiFields = Nothing
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

-- | Multipart request metadata.
fagiFloodlightActivityGroup :: Lens' FloodlightActivityGroupsInsert' FloodlightActivityGroup
fagiFloodlightActivityGroup
  = lens _fagiFloodlightActivityGroup
      (\ s a -> s{_fagiFloodlightActivityGroup = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagiUserIP :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiUserIP
  = lens _fagiUserIP (\ s a -> s{_fagiUserIP = a})

-- | User profile ID associated with this request.
fagiProfileId :: Lens' FloodlightActivityGroupsInsert' Int64
fagiProfileId
  = lens _fagiProfileId
      (\ s a -> s{_fagiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagiKey :: Lens' FloodlightActivityGroupsInsert' (Maybe Key)
fagiKey = lens _fagiKey (\ s a -> s{_fagiKey = a})

-- | OAuth 2.0 token for the current user.
fagiOAuthToken :: Lens' FloodlightActivityGroupsInsert' (Maybe OAuthToken)
fagiOAuthToken
  = lens _fagiOAuthToken
      (\ s a -> s{_fagiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagiFields :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiFields
  = lens _fagiFields (\ s a -> s{_fagiFields = a})

instance GoogleAuth FloodlightActivityGroupsInsert'
         where
        authKey = fagiKey . _Just
        authToken = fagiOAuthToken . _Just

instance GoogleRequest
         FloodlightActivityGroupsInsert' where
        type Rs FloodlightActivityGroupsInsert' =
             FloodlightActivityGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivityGroupsInsert'{..}
          = go _fagiQuotaUser (Just _fagiPrettyPrint)
              _fagiUserIP
              _fagiProfileId
              _fagiKey
              _fagiOAuthToken
              _fagiFields
              (Just AltJSON)
              _fagiFloodlightActivityGroup
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightActivityGroupsInsertResource)
                      r
                      u
