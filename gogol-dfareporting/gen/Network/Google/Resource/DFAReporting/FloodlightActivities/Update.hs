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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesUpdate@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Update
    (
    -- * REST Resource
      FloodlightActivitiesUpdateResource

    -- * Creating a Request
    , floodlightActivitiesUpdate'
    , FloodlightActivitiesUpdate'

    -- * Request Lenses
    , fauQuotaUser
    , fauPrettyPrint
    , fauUserIP
    , fauProfileId
    , fauKey
    , fauFloodlightActivity
    , fauOAuthToken
    , fauFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesUpdate@ which the
-- 'FloodlightActivitiesUpdate'' request conforms to.
type FloodlightActivitiesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FloodlightActivity :>
                           Put '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesUpdate'' smart constructor.
data FloodlightActivitiesUpdate' = FloodlightActivitiesUpdate'
    { _fauQuotaUser          :: !(Maybe Text)
    , _fauPrettyPrint        :: !Bool
    , _fauUserIP             :: !(Maybe Text)
    , _fauProfileId          :: !Int64
    , _fauKey                :: !(Maybe Key)
    , _fauFloodlightActivity :: !FloodlightActivity
    , _fauOAuthToken         :: !(Maybe OAuthToken)
    , _fauFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fauQuotaUser'
--
-- * 'fauPrettyPrint'
--
-- * 'fauUserIP'
--
-- * 'fauProfileId'
--
-- * 'fauKey'
--
-- * 'fauFloodlightActivity'
--
-- * 'fauOAuthToken'
--
-- * 'fauFields'
floodlightActivitiesUpdate'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivity -- ^ 'FloodlightActivity'
    -> FloodlightActivitiesUpdate'
floodlightActivitiesUpdate' pFauProfileId_ pFauFloodlightActivity_ =
    FloodlightActivitiesUpdate'
    { _fauQuotaUser = Nothing
    , _fauPrettyPrint = True
    , _fauUserIP = Nothing
    , _fauProfileId = pFauProfileId_
    , _fauKey = Nothing
    , _fauFloodlightActivity = pFauFloodlightActivity_
    , _fauOAuthToken = Nothing
    , _fauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fauQuotaUser :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauQuotaUser
  = lens _fauQuotaUser (\ s a -> s{_fauQuotaUser = a})

-- | Returns response with indentations and line breaks.
fauPrettyPrint :: Lens' FloodlightActivitiesUpdate' Bool
fauPrettyPrint
  = lens _fauPrettyPrint
      (\ s a -> s{_fauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fauUserIP :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauUserIP
  = lens _fauUserIP (\ s a -> s{_fauUserIP = a})

-- | User profile ID associated with this request.
fauProfileId :: Lens' FloodlightActivitiesUpdate' Int64
fauProfileId
  = lens _fauProfileId (\ s a -> s{_fauProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fauKey :: Lens' FloodlightActivitiesUpdate' (Maybe Key)
fauKey = lens _fauKey (\ s a -> s{_fauKey = a})

-- | Multipart request metadata.
fauFloodlightActivity :: Lens' FloodlightActivitiesUpdate' FloodlightActivity
fauFloodlightActivity
  = lens _fauFloodlightActivity
      (\ s a -> s{_fauFloodlightActivity = a})

-- | OAuth 2.0 token for the current user.
fauOAuthToken :: Lens' FloodlightActivitiesUpdate' (Maybe OAuthToken)
fauOAuthToken
  = lens _fauOAuthToken
      (\ s a -> s{_fauOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fauFields :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauFields
  = lens _fauFields (\ s a -> s{_fauFields = a})

instance GoogleAuth FloodlightActivitiesUpdate' where
        authKey = fauKey . _Just
        authToken = fauOAuthToken . _Just

instance GoogleRequest FloodlightActivitiesUpdate'
         where
        type Rs FloodlightActivitiesUpdate' =
             FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesUpdate'{..}
          = go _fauProfileId _fauQuotaUser
              (Just _fauPrettyPrint)
              _fauUserIP
              _fauFields
              _fauKey
              _fauOAuthToken
              (Just AltJSON)
              _fauFloodlightActivity
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesUpdateResource)
                      r
                      u
