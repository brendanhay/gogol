{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.OperatingSystemVersions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of operating system versions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.operatingSystemVersions.list@.
module Network.Google.API.DFAReporting.OperatingSystemVersions.List
    (
    -- * REST Resource
      OperatingSystemVersionsListAPI

    -- * Creating a Request
    , operatingSystemVersionsList'
    , OperatingSystemVersionsList'

    -- * Request Lenses
    , osvlQuotaUser
    , osvlPrettyPrint
    , osvlUserIp
    , osvlProfileId
    , osvlKey
    , osvlOauthToken
    , osvlFields
    , osvlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.operatingSystemVersions.list which the
-- 'OperatingSystemVersionsList'' request conforms to.
type OperatingSystemVersionsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystemVersions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] OperatingSystemVersionsListResponse

-- | Retrieves a list of operating system versions.
--
-- /See:/ 'operatingSystemVersionsList'' smart constructor.
data OperatingSystemVersionsList' = OperatingSystemVersionsList'
    { _osvlQuotaUser   :: !(Maybe Text)
    , _osvlPrettyPrint :: !Bool
    , _osvlUserIp      :: !(Maybe Text)
    , _osvlProfileId   :: !Int64
    , _osvlKey         :: !(Maybe Text)
    , _osvlOauthToken  :: !(Maybe Text)
    , _osvlFields      :: !(Maybe Text)
    , _osvlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvlQuotaUser'
--
-- * 'osvlPrettyPrint'
--
-- * 'osvlUserIp'
--
-- * 'osvlProfileId'
--
-- * 'osvlKey'
--
-- * 'osvlOauthToken'
--
-- * 'osvlFields'
--
-- * 'osvlAlt'
operatingSystemVersionsList'
    :: Int64 -- ^ 'profileId'
    -> OperatingSystemVersionsList'
operatingSystemVersionsList' pOsvlProfileId_ =
    OperatingSystemVersionsList'
    { _osvlQuotaUser = Nothing
    , _osvlPrettyPrint = True
    , _osvlUserIp = Nothing
    , _osvlProfileId = pOsvlProfileId_
    , _osvlKey = Nothing
    , _osvlOauthToken = Nothing
    , _osvlFields = Nothing
    , _osvlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osvlQuotaUser :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlQuotaUser
  = lens _osvlQuotaUser
      (\ s a -> s{_osvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
osvlPrettyPrint :: Lens' OperatingSystemVersionsList' Bool
osvlPrettyPrint
  = lens _osvlPrettyPrint
      (\ s a -> s{_osvlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osvlUserIp :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlUserIp
  = lens _osvlUserIp (\ s a -> s{_osvlUserIp = a})

-- | User profile ID associated with this request.
osvlProfileId :: Lens' OperatingSystemVersionsList' Int64
osvlProfileId
  = lens _osvlProfileId
      (\ s a -> s{_osvlProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osvlKey :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlKey = lens _osvlKey (\ s a -> s{_osvlKey = a})

-- | OAuth 2.0 token for the current user.
osvlOauthToken :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlOauthToken
  = lens _osvlOauthToken
      (\ s a -> s{_osvlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
osvlFields :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlFields
  = lens _osvlFields (\ s a -> s{_osvlFields = a})

-- | Data format for the response.
osvlAlt :: Lens' OperatingSystemVersionsList' Alt
osvlAlt = lens _osvlAlt (\ s a -> s{_osvlAlt = a})

instance GoogleRequest OperatingSystemVersionsList'
         where
        type Rs OperatingSystemVersionsList' =
             OperatingSystemVersionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemVersionsList'{..}
          = go _osvlQuotaUser (Just _osvlPrettyPrint)
              _osvlUserIp
              _osvlProfileId
              _osvlKey
              _osvlOauthToken
              _osvlFields
              (Just _osvlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemVersionsListAPI)
                      r
                      u
