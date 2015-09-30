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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one operating system version by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemVersionsGet@.
module Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
    (
    -- * REST Resource
      OperatingSystemVersionsGetResource

    -- * Creating a Request
    , operatingSystemVersionsGet'
    , OperatingSystemVersionsGet'

    -- * Request Lenses
    , osvgQuotaUser
    , osvgPrettyPrint
    , osvgUserIp
    , osvgProfileId
    , osvgKey
    , osvgId
    , osvgOauthToken
    , osvgFields
    , osvgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemVersionsGet@ which the
-- 'OperatingSystemVersionsGet'' request conforms to.
type OperatingSystemVersionsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystemVersions" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] OperatingSystemVersion

-- | Gets one operating system version by ID.
--
-- /See:/ 'operatingSystemVersionsGet'' smart constructor.
data OperatingSystemVersionsGet' = OperatingSystemVersionsGet'
    { _osvgQuotaUser   :: !(Maybe Text)
    , _osvgPrettyPrint :: !Bool
    , _osvgUserIp      :: !(Maybe Text)
    , _osvgProfileId   :: !Int64
    , _osvgKey         :: !(Maybe Text)
    , _osvgId          :: !Int64
    , _osvgOauthToken  :: !(Maybe Text)
    , _osvgFields      :: !(Maybe Text)
    , _osvgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemVersionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvgQuotaUser'
--
-- * 'osvgPrettyPrint'
--
-- * 'osvgUserIp'
--
-- * 'osvgProfileId'
--
-- * 'osvgKey'
--
-- * 'osvgId'
--
-- * 'osvgOauthToken'
--
-- * 'osvgFields'
--
-- * 'osvgAlt'
operatingSystemVersionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> OperatingSystemVersionsGet'
operatingSystemVersionsGet' pOsvgProfileId_ pOsvgId_ =
    OperatingSystemVersionsGet'
    { _osvgQuotaUser = Nothing
    , _osvgPrettyPrint = True
    , _osvgUserIp = Nothing
    , _osvgProfileId = pOsvgProfileId_
    , _osvgKey = Nothing
    , _osvgId = pOsvgId_
    , _osvgOauthToken = Nothing
    , _osvgFields = Nothing
    , _osvgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osvgQuotaUser :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgQuotaUser
  = lens _osvgQuotaUser
      (\ s a -> s{_osvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
osvgPrettyPrint :: Lens' OperatingSystemVersionsGet' Bool
osvgPrettyPrint
  = lens _osvgPrettyPrint
      (\ s a -> s{_osvgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osvgUserIp :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgUserIp
  = lens _osvgUserIp (\ s a -> s{_osvgUserIp = a})

-- | User profile ID associated with this request.
osvgProfileId :: Lens' OperatingSystemVersionsGet' Int64
osvgProfileId
  = lens _osvgProfileId
      (\ s a -> s{_osvgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osvgKey :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgKey = lens _osvgKey (\ s a -> s{_osvgKey = a})

-- | Operating system version ID.
osvgId :: Lens' OperatingSystemVersionsGet' Int64
osvgId = lens _osvgId (\ s a -> s{_osvgId = a})

-- | OAuth 2.0 token for the current user.
osvgOauthToken :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgOauthToken
  = lens _osvgOauthToken
      (\ s a -> s{_osvgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
osvgFields :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgFields
  = lens _osvgFields (\ s a -> s{_osvgFields = a})

-- | Data format for the response.
osvgAlt :: Lens' OperatingSystemVersionsGet' Alt
osvgAlt = lens _osvgAlt (\ s a -> s{_osvgAlt = a})

instance GoogleRequest OperatingSystemVersionsGet'
         where
        type Rs OperatingSystemVersionsGet' =
             OperatingSystemVersion
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemVersionsGet'{..}
          = go _osvgQuotaUser (Just _osvgPrettyPrint)
              _osvgUserIp
              _osvgProfileId
              _osvgKey
              _osvgId
              _osvgOauthToken
              _osvgFields
              (Just _osvgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemVersionsGetResource)
                      r
                      u
