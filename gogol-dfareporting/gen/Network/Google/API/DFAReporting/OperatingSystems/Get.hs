{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.OperatingSystems.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one operating system by DART ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.operatingSystems.get@.
module Network.Google.API.DFAReporting.OperatingSystems.Get
    (
    -- * REST Resource
      OperatingSystemsGetAPI

    -- * Creating a Request
    , operatingSystemsGet'
    , OperatingSystemsGet'

    -- * Request Lenses
    , osgQuotaUser
    , osgPrettyPrint
    , osgUserIp
    , osgProfileId
    , osgKey
    , osgOauthToken
    , osgDartId
    , osgFields
    , osgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.operatingSystems.get which the
-- 'OperatingSystemsGet'' request conforms to.
type OperatingSystemsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystems" :>
           Capture "dartId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] OperatingSystem

-- | Gets one operating system by DART ID.
--
-- /See:/ 'operatingSystemsGet'' smart constructor.
data OperatingSystemsGet' = OperatingSystemsGet'
    { _osgQuotaUser   :: !(Maybe Text)
    , _osgPrettyPrint :: !Bool
    , _osgUserIp      :: !(Maybe Text)
    , _osgProfileId   :: !Int64
    , _osgKey         :: !(Maybe Text)
    , _osgOauthToken  :: !(Maybe Text)
    , _osgDartId      :: !Int64
    , _osgFields      :: !(Maybe Text)
    , _osgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgQuotaUser'
--
-- * 'osgPrettyPrint'
--
-- * 'osgUserIp'
--
-- * 'osgProfileId'
--
-- * 'osgKey'
--
-- * 'osgOauthToken'
--
-- * 'osgDartId'
--
-- * 'osgFields'
--
-- * 'osgAlt'
operatingSystemsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'dartId'
    -> OperatingSystemsGet'
operatingSystemsGet' pOsgProfileId_ pOsgDartId_ =
    OperatingSystemsGet'
    { _osgQuotaUser = Nothing
    , _osgPrettyPrint = True
    , _osgUserIp = Nothing
    , _osgProfileId = pOsgProfileId_
    , _osgKey = Nothing
    , _osgOauthToken = Nothing
    , _osgDartId = pOsgDartId_
    , _osgFields = Nothing
    , _osgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osgQuotaUser :: Lens' OperatingSystemsGet' (Maybe Text)
osgQuotaUser
  = lens _osgQuotaUser (\ s a -> s{_osgQuotaUser = a})

-- | Returns response with indentations and line breaks.
osgPrettyPrint :: Lens' OperatingSystemsGet' Bool
osgPrettyPrint
  = lens _osgPrettyPrint
      (\ s a -> s{_osgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osgUserIp :: Lens' OperatingSystemsGet' (Maybe Text)
osgUserIp
  = lens _osgUserIp (\ s a -> s{_osgUserIp = a})

-- | User profile ID associated with this request.
osgProfileId :: Lens' OperatingSystemsGet' Int64
osgProfileId
  = lens _osgProfileId (\ s a -> s{_osgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osgKey :: Lens' OperatingSystemsGet' (Maybe Text)
osgKey = lens _osgKey (\ s a -> s{_osgKey = a})

-- | OAuth 2.0 token for the current user.
osgOauthToken :: Lens' OperatingSystemsGet' (Maybe Text)
osgOauthToken
  = lens _osgOauthToken
      (\ s a -> s{_osgOauthToken = a})

-- | Operating system DART ID.
osgDartId :: Lens' OperatingSystemsGet' Int64
osgDartId
  = lens _osgDartId (\ s a -> s{_osgDartId = a})

-- | Selector specifying which fields to include in a partial response.
osgFields :: Lens' OperatingSystemsGet' (Maybe Text)
osgFields
  = lens _osgFields (\ s a -> s{_osgFields = a})

-- | Data format for the response.
osgAlt :: Lens' OperatingSystemsGet' Alt
osgAlt = lens _osgAlt (\ s a -> s{_osgAlt = a})

instance GoogleRequest OperatingSystemsGet' where
        type Rs OperatingSystemsGet' = OperatingSystem
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemsGet'{..}
          = go _osgQuotaUser (Just _osgPrettyPrint) _osgUserIp
              _osgProfileId
              _osgKey
              _osgOauthToken
              _osgDartId
              _osgFields
              (Just _osgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemsGetAPI)
                      r
                      u
