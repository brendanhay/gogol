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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight activity by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesGet@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Get
    (
    -- * REST Resource
      FloodlightActivitiesGetResource

    -- * Creating a Request
    , floodlightActivitiesGet'
    , FloodlightActivitiesGet'

    -- * Request Lenses
    , fQuotaUser
    , fPrettyPrint
    , fUserIp
    , fProfileId
    , fKey
    , fId
    , fOauthToken
    , fFields
    , fAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesGet@ which the
-- 'FloodlightActivitiesGet'' request conforms to.
type FloodlightActivitiesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] FloodlightActivity

-- | Gets one floodlight activity by ID.
--
-- /See:/ 'floodlightActivitiesGet'' smart constructor.
data FloodlightActivitiesGet' = FloodlightActivitiesGet'
    { _fQuotaUser   :: !(Maybe Text)
    , _fPrettyPrint :: !Bool
    , _fUserIp      :: !(Maybe Text)
    , _fProfileId   :: !Int64
    , _fKey         :: !(Maybe Text)
    , _fId          :: !Int64
    , _fOauthToken  :: !(Maybe Text)
    , _fFields      :: !(Maybe Text)
    , _fAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fQuotaUser'
--
-- * 'fPrettyPrint'
--
-- * 'fUserIp'
--
-- * 'fProfileId'
--
-- * 'fKey'
--
-- * 'fId'
--
-- * 'fOauthToken'
--
-- * 'fFields'
--
-- * 'fAlt'
floodlightActivitiesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesGet'
floodlightActivitiesGet' pFProfileId_ pFId_ =
    FloodlightActivitiesGet'
    { _fQuotaUser = Nothing
    , _fPrettyPrint = True
    , _fUserIp = Nothing
    , _fProfileId = pFProfileId_
    , _fKey = Nothing
    , _fId = pFId_
    , _fOauthToken = Nothing
    , _fFields = Nothing
    , _fAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fQuotaUser :: Lens' FloodlightActivitiesGet' (Maybe Text)
fQuotaUser
  = lens _fQuotaUser (\ s a -> s{_fQuotaUser = a})

-- | Returns response with indentations and line breaks.
fPrettyPrint :: Lens' FloodlightActivitiesGet' Bool
fPrettyPrint
  = lens _fPrettyPrint (\ s a -> s{_fPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fUserIp :: Lens' FloodlightActivitiesGet' (Maybe Text)
fUserIp = lens _fUserIp (\ s a -> s{_fUserIp = a})

-- | User profile ID associated with this request.
fProfileId :: Lens' FloodlightActivitiesGet' Int64
fProfileId
  = lens _fProfileId (\ s a -> s{_fProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fKey :: Lens' FloodlightActivitiesGet' (Maybe Text)
fKey = lens _fKey (\ s a -> s{_fKey = a})

-- | Floodlight activity ID.
fId :: Lens' FloodlightActivitiesGet' Int64
fId = lens _fId (\ s a -> s{_fId = a})

-- | OAuth 2.0 token for the current user.
fOauthToken :: Lens' FloodlightActivitiesGet' (Maybe Text)
fOauthToken
  = lens _fOauthToken (\ s a -> s{_fOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fFields :: Lens' FloodlightActivitiesGet' (Maybe Text)
fFields = lens _fFields (\ s a -> s{_fFields = a})

-- | Data format for the response.
fAlt :: Lens' FloodlightActivitiesGet' Alt
fAlt = lens _fAlt (\ s a -> s{_fAlt = a})

instance GoogleRequest FloodlightActivitiesGet' where
        type Rs FloodlightActivitiesGet' = FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesGet'{..}
          = go _fQuotaUser (Just _fPrettyPrint) _fUserIp
              _fProfileId
              _fKey
              _fId
              _fOauthToken
              _fFields
              (Just _fAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesGetResource)
                      r
                      u
