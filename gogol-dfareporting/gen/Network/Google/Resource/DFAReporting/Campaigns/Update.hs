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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsUpdate@.
module Network.Google.Resource.DFAReporting.Campaigns.Update
    (
    -- * REST Resource
      CampaignsUpdateResource

    -- * Creating a Request
    , campaignsUpdate'
    , CampaignsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIP
    , cuProfileId
    , cuCampaign
    , cuKey
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsUpdate@ which the
-- 'CampaignsUpdate'' request conforms to.
type CampaignsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Campaign :> Put '[JSON] Campaign

-- | Updates an existing campaign.
--
-- /See:/ 'campaignsUpdate'' smart constructor.
data CampaignsUpdate' = CampaignsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuProfileId   :: !Int64
    , _cuCampaign    :: !Campaign
    , _cuKey         :: !(Maybe Key)
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuProfileId'
--
-- * 'cuCampaign'
--
-- * 'cuKey'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
campaignsUpdate'
    :: Int64 -- ^ 'profileId'
    -> Campaign -- ^ 'Campaign'
    -> CampaignsUpdate'
campaignsUpdate' pCuProfileId_ pCuCampaign_ =
    CampaignsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuProfileId = pCuProfileId_
    , _cuCampaign = pCuCampaign_
    , _cuKey = Nothing
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CampaignsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CampaignsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' CampaignsUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | User profile ID associated with this request.
cuProfileId :: Lens' CampaignsUpdate' Int64
cuProfileId
  = lens _cuProfileId (\ s a -> s{_cuProfileId = a})

-- | Multipart request metadata.
cuCampaign :: Lens' CampaignsUpdate' Campaign
cuCampaign
  = lens _cuCampaign (\ s a -> s{_cuCampaign = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CampaignsUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CampaignsUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CampaignsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CampaignsUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest CampaignsUpdate' where
        type Rs CampaignsUpdate' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIP
              _cuProfileId
              _cuKey
              _cuOAuthToken
              _cuFields
              (Just AltJSON)
              _cuCampaign
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CampaignsUpdateResource)
                      r
                      u
