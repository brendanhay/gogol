{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesInsert@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
    (
    -- * REST Resource
      FloodlightActivitiesInsertResource

    -- * Creating a Request
    , floodlightActivitiesInsert'
    , FloodlightActivitiesInsert'

    -- * Request Lenses
    , faiQuotaUser
    , faiPrettyPrint
    , faiUserIP
    , faiProfileId
    , faiPayload
    , faiKey
    , faiOAuthToken
    , faiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesInsert@ which the
-- 'FloodlightActivitiesInsert'' request conforms to.
type FloodlightActivitiesInsertResource =
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
                           Post '[JSON] FloodlightActivity

-- | Inserts a new floodlight activity.
--
-- /See:/ 'floodlightActivitiesInsert'' smart constructor.
data FloodlightActivitiesInsert' = FloodlightActivitiesInsert'
    { _faiQuotaUser   :: !(Maybe Text)
    , _faiPrettyPrint :: !Bool
    , _faiUserIP      :: !(Maybe Text)
    , _faiProfileId   :: !Int64
    , _faiPayload     :: !FloodlightActivity
    , _faiKey         :: !(Maybe Key)
    , _faiOAuthToken  :: !(Maybe OAuthToken)
    , _faiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faiQuotaUser'
--
-- * 'faiPrettyPrint'
--
-- * 'faiUserIP'
--
-- * 'faiProfileId'
--
-- * 'faiPayload'
--
-- * 'faiKey'
--
-- * 'faiOAuthToken'
--
-- * 'faiFields'
floodlightActivitiesInsert'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivity -- ^ 'payload'
    -> FloodlightActivitiesInsert'
floodlightActivitiesInsert' pFaiProfileId_ pFaiPayload_ =
    FloodlightActivitiesInsert'
    { _faiQuotaUser = Nothing
    , _faiPrettyPrint = True
    , _faiUserIP = Nothing
    , _faiProfileId = pFaiProfileId_
    , _faiPayload = pFaiPayload_
    , _faiKey = Nothing
    , _faiOAuthToken = Nothing
    , _faiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
faiQuotaUser :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiQuotaUser
  = lens _faiQuotaUser (\ s a -> s{_faiQuotaUser = a})

-- | Returns response with indentations and line breaks.
faiPrettyPrint :: Lens' FloodlightActivitiesInsert' Bool
faiPrettyPrint
  = lens _faiPrettyPrint
      (\ s a -> s{_faiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
faiUserIP :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiUserIP
  = lens _faiUserIP (\ s a -> s{_faiUserIP = a})

-- | User profile ID associated with this request.
faiProfileId :: Lens' FloodlightActivitiesInsert' Int64
faiProfileId
  = lens _faiProfileId (\ s a -> s{_faiProfileId = a})

-- | Multipart request metadata.
faiPayload :: Lens' FloodlightActivitiesInsert' FloodlightActivity
faiPayload
  = lens _faiPayload (\ s a -> s{_faiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faiKey :: Lens' FloodlightActivitiesInsert' (Maybe Key)
faiKey = lens _faiKey (\ s a -> s{_faiKey = a})

-- | OAuth 2.0 token for the current user.
faiOAuthToken :: Lens' FloodlightActivitiesInsert' (Maybe OAuthToken)
faiOAuthToken
  = lens _faiOAuthToken
      (\ s a -> s{_faiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
faiFields :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiFields
  = lens _faiFields (\ s a -> s{_faiFields = a})

instance GoogleAuth FloodlightActivitiesInsert' where
        authKey = faiKey . _Just
        authToken = faiOAuthToken . _Just

instance GoogleRequest FloodlightActivitiesInsert'
         where
        type Rs FloodlightActivitiesInsert' =
             FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesInsert'{..}
          = go _faiProfileId _faiQuotaUser
              (Just _faiPrettyPrint)
              _faiUserIP
              _faiFields
              _faiKey
              _faiOAuthToken
              (Just AltJSON)
              _faiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesInsertResource)
                      r
                      u
