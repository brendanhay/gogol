{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivities.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.delete@.
module Network.Google.API.DFAReporting.FloodlightActivities.Delete
    (
    -- * REST Resource
      FloodlightActivitiesDeleteAPI

    -- * Creating a Request
    , floodlightActivitiesDelete'
    , FloodlightActivitiesDelete'

    -- * Request Lenses
    , fadQuotaUser
    , fadPrettyPrint
    , fadUserIp
    , fadProfileId
    , fadKey
    , fadId
    , fadOauthToken
    , fadFields
    , fadAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivities.delete which the
-- 'FloodlightActivitiesDelete'' request conforms to.
type FloodlightActivitiesDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesDelete'' smart constructor.
data FloodlightActivitiesDelete' = FloodlightActivitiesDelete'
    { _fadQuotaUser   :: !(Maybe Text)
    , _fadPrettyPrint :: !Bool
    , _fadUserIp      :: !(Maybe Text)
    , _fadProfileId   :: !Int64
    , _fadKey         :: !(Maybe Text)
    , _fadId          :: !Int64
    , _fadOauthToken  :: !(Maybe Text)
    , _fadFields      :: !(Maybe Text)
    , _fadAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadQuotaUser'
--
-- * 'fadPrettyPrint'
--
-- * 'fadUserIp'
--
-- * 'fadProfileId'
--
-- * 'fadKey'
--
-- * 'fadId'
--
-- * 'fadOauthToken'
--
-- * 'fadFields'
--
-- * 'fadAlt'
floodlightActivitiesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesDelete'
floodlightActivitiesDelete' pFadProfileId_ pFadId_ =
    FloodlightActivitiesDelete'
    { _fadQuotaUser = Nothing
    , _fadPrettyPrint = True
    , _fadUserIp = Nothing
    , _fadProfileId = pFadProfileId_
    , _fadKey = Nothing
    , _fadId = pFadId_
    , _fadOauthToken = Nothing
    , _fadFields = Nothing
    , _fadAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fadQuotaUser :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadQuotaUser
  = lens _fadQuotaUser (\ s a -> s{_fadQuotaUser = a})

-- | Returns response with indentations and line breaks.
fadPrettyPrint :: Lens' FloodlightActivitiesDelete' Bool
fadPrettyPrint
  = lens _fadPrettyPrint
      (\ s a -> s{_fadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fadUserIp :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadUserIp
  = lens _fadUserIp (\ s a -> s{_fadUserIp = a})

-- | User profile ID associated with this request.
fadProfileId :: Lens' FloodlightActivitiesDelete' Int64
fadProfileId
  = lens _fadProfileId (\ s a -> s{_fadProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fadKey :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadKey = lens _fadKey (\ s a -> s{_fadKey = a})

-- | Floodlight activity ID.
fadId :: Lens' FloodlightActivitiesDelete' Int64
fadId = lens _fadId (\ s a -> s{_fadId = a})

-- | OAuth 2.0 token for the current user.
fadOauthToken :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadOauthToken
  = lens _fadOauthToken
      (\ s a -> s{_fadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fadFields :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadFields
  = lens _fadFields (\ s a -> s{_fadFields = a})

-- | Data format for the response.
fadAlt :: Lens' FloodlightActivitiesDelete' Alt
fadAlt = lens _fadAlt (\ s a -> s{_fadAlt = a})

instance GoogleRequest FloodlightActivitiesDelete'
         where
        type Rs FloodlightActivitiesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesDelete'{..}
          = go _fadQuotaUser (Just _fadPrettyPrint) _fadUserIp
              _fadProfileId
              _fadKey
              _fadId
              _fadOauthToken
              _fadFields
              (Just _fadAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesDeleteAPI)
                      r
                      u
