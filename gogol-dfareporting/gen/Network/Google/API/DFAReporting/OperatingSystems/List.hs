{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.OperatingSystems.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of operating systems.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.operatingSystems.list@.
module Network.Google.API.DFAReporting.OperatingSystems.List
    (
    -- * REST Resource
      OperatingSystemsListAPI

    -- * Creating a Request
    , operatingSystemsList'
    , OperatingSystemsList'

    -- * Request Lenses
    , oslQuotaUser
    , oslPrettyPrint
    , oslUserIp
    , oslProfileId
    , oslKey
    , oslOauthToken
    , oslFields
    , oslAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.operatingSystems.list which the
-- 'OperatingSystemsList'' request conforms to.
type OperatingSystemsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystems" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] OperatingSystemsListResponse

-- | Retrieves a list of operating systems.
--
-- /See:/ 'operatingSystemsList'' smart constructor.
data OperatingSystemsList' = OperatingSystemsList'
    { _oslQuotaUser   :: !(Maybe Text)
    , _oslPrettyPrint :: !Bool
    , _oslUserIp      :: !(Maybe Text)
    , _oslProfileId   :: !Int64
    , _oslKey         :: !(Maybe Text)
    , _oslOauthToken  :: !(Maybe Text)
    , _oslFields      :: !(Maybe Text)
    , _oslAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslQuotaUser'
--
-- * 'oslPrettyPrint'
--
-- * 'oslUserIp'
--
-- * 'oslProfileId'
--
-- * 'oslKey'
--
-- * 'oslOauthToken'
--
-- * 'oslFields'
--
-- * 'oslAlt'
operatingSystemsList'
    :: Int64 -- ^ 'profileId'
    -> OperatingSystemsList'
operatingSystemsList' pOslProfileId_ =
    OperatingSystemsList'
    { _oslQuotaUser = Nothing
    , _oslPrettyPrint = True
    , _oslUserIp = Nothing
    , _oslProfileId = pOslProfileId_
    , _oslKey = Nothing
    , _oslOauthToken = Nothing
    , _oslFields = Nothing
    , _oslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oslQuotaUser :: Lens' OperatingSystemsList' (Maybe Text)
oslQuotaUser
  = lens _oslQuotaUser (\ s a -> s{_oslQuotaUser = a})

-- | Returns response with indentations and line breaks.
oslPrettyPrint :: Lens' OperatingSystemsList' Bool
oslPrettyPrint
  = lens _oslPrettyPrint
      (\ s a -> s{_oslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oslUserIp :: Lens' OperatingSystemsList' (Maybe Text)
oslUserIp
  = lens _oslUserIp (\ s a -> s{_oslUserIp = a})

-- | User profile ID associated with this request.
oslProfileId :: Lens' OperatingSystemsList' Int64
oslProfileId
  = lens _oslProfileId (\ s a -> s{_oslProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oslKey :: Lens' OperatingSystemsList' (Maybe Text)
oslKey = lens _oslKey (\ s a -> s{_oslKey = a})

-- | OAuth 2.0 token for the current user.
oslOauthToken :: Lens' OperatingSystemsList' (Maybe Text)
oslOauthToken
  = lens _oslOauthToken
      (\ s a -> s{_oslOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oslFields :: Lens' OperatingSystemsList' (Maybe Text)
oslFields
  = lens _oslFields (\ s a -> s{_oslFields = a})

-- | Data format for the response.
oslAlt :: Lens' OperatingSystemsList' Alt
oslAlt = lens _oslAlt (\ s a -> s{_oslAlt = a})

instance GoogleRequest OperatingSystemsList' where
        type Rs OperatingSystemsList' =
             OperatingSystemsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemsList'{..}
          = go _oslQuotaUser (Just _oslPrettyPrint) _oslUserIp
              _oslProfileId
              _oslKey
              _oslOauthToken
              _oslFields
              (Just _oslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemsListAPI)
                      r
                      u
