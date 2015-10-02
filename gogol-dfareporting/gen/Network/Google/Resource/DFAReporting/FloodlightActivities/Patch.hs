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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesPatch@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
    (
    -- * REST Resource
      FloodlightActivitiesPatchResource

    -- * Creating a Request
    , floodlightActivitiesPatch'
    , FloodlightActivitiesPatch'

    -- * Request Lenses
    , fapQuotaUser
    , fapPrettyPrint
    , fapUserIP
    , fapProfileId
    , fapKey
    , fapFloodlightActivity
    , fapId
    , fapOAuthToken
    , fapFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesPatch@ which the
-- 'FloodlightActivitiesPatch'' request conforms to.
type FloodlightActivitiesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightActivity :>
                             Patch '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightActivitiesPatch'' smart constructor.
data FloodlightActivitiesPatch' = FloodlightActivitiesPatch'
    { _fapQuotaUser          :: !(Maybe Text)
    , _fapPrettyPrint        :: !Bool
    , _fapUserIP             :: !(Maybe Text)
    , _fapProfileId          :: !Int64
    , _fapKey                :: !(Maybe Key)
    , _fapFloodlightActivity :: !FloodlightActivity
    , _fapId                 :: !Int64
    , _fapOAuthToken         :: !(Maybe OAuthToken)
    , _fapFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fapQuotaUser'
--
-- * 'fapPrettyPrint'
--
-- * 'fapUserIP'
--
-- * 'fapProfileId'
--
-- * 'fapKey'
--
-- * 'fapFloodlightActivity'
--
-- * 'fapId'
--
-- * 'fapOAuthToken'
--
-- * 'fapFields'
floodlightActivitiesPatch'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivity -- ^ 'FloodlightActivity'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesPatch'
floodlightActivitiesPatch' pFapProfileId_ pFapFloodlightActivity_ pFapId_ =
    FloodlightActivitiesPatch'
    { _fapQuotaUser = Nothing
    , _fapPrettyPrint = True
    , _fapUserIP = Nothing
    , _fapProfileId = pFapProfileId_
    , _fapKey = Nothing
    , _fapFloodlightActivity = pFapFloodlightActivity_
    , _fapId = pFapId_
    , _fapOAuthToken = Nothing
    , _fapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fapQuotaUser :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapQuotaUser
  = lens _fapQuotaUser (\ s a -> s{_fapQuotaUser = a})

-- | Returns response with indentations and line breaks.
fapPrettyPrint :: Lens' FloodlightActivitiesPatch' Bool
fapPrettyPrint
  = lens _fapPrettyPrint
      (\ s a -> s{_fapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fapUserIP :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapUserIP
  = lens _fapUserIP (\ s a -> s{_fapUserIP = a})

-- | User profile ID associated with this request.
fapProfileId :: Lens' FloodlightActivitiesPatch' Int64
fapProfileId
  = lens _fapProfileId (\ s a -> s{_fapProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fapKey :: Lens' FloodlightActivitiesPatch' (Maybe Key)
fapKey = lens _fapKey (\ s a -> s{_fapKey = a})

-- | Multipart request metadata.
fapFloodlightActivity :: Lens' FloodlightActivitiesPatch' FloodlightActivity
fapFloodlightActivity
  = lens _fapFloodlightActivity
      (\ s a -> s{_fapFloodlightActivity = a})

-- | Floodlight activity ID.
fapId :: Lens' FloodlightActivitiesPatch' Int64
fapId = lens _fapId (\ s a -> s{_fapId = a})

-- | OAuth 2.0 token for the current user.
fapOAuthToken :: Lens' FloodlightActivitiesPatch' (Maybe OAuthToken)
fapOAuthToken
  = lens _fapOAuthToken
      (\ s a -> s{_fapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fapFields :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapFields
  = lens _fapFields (\ s a -> s{_fapFields = a})

instance GoogleAuth FloodlightActivitiesPatch' where
        authKey = fapKey . _Just
        authToken = fapOAuthToken . _Just

instance GoogleRequest FloodlightActivitiesPatch'
         where
        type Rs FloodlightActivitiesPatch' =
             FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesPatch'{..}
          = go _fapQuotaUser (Just _fapPrettyPrint) _fapUserIP
              _fapProfileId
              _fapKey
              (Just _fapId)
              _fapOAuthToken
              _fapFields
              (Just AltJSON)
              _fapFloodlightActivity
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesPatchResource)
                      r
                      u
