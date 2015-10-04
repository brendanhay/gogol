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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsPatch@.
module Network.Google.Resource.DFAReporting.Campaigns.Patch
    (
    -- * REST Resource
      CampaignsPatchResource

    -- * Creating a Request
    , campaignsPatch'
    , CampaignsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpProfileId
    , cpPayload
    , cpKey
    , cpId
    , cpOAuthToken
    , cpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsPatch@ which the
-- 'CampaignsPatch'' request conforms to.
type CampaignsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Campaign :> Patch '[JSON] Campaign

-- | Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ 'campaignsPatch'' smart constructor.
data CampaignsPatch' = CampaignsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpProfileId   :: !Int64
    , _cpPayload     :: !Campaign
    , _cpKey         :: !(Maybe Key)
    , _cpId          :: !Int64
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpProfileId'
--
-- * 'cpPayload'
--
-- * 'cpKey'
--
-- * 'cpId'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
campaignsPatch'
    :: Int64 -- ^ 'profileId'
    -> Campaign -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> CampaignsPatch'
campaignsPatch' pCpProfileId_ pCpPayload_ pCpId_ =
    CampaignsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpProfileId = pCpProfileId_
    , _cpPayload = pCpPayload_
    , _cpKey = Nothing
    , _cpId = pCpId_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CampaignsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CampaignsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIP :: Lens' CampaignsPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | User profile ID associated with this request.
cpProfileId :: Lens' CampaignsPatch' Int64
cpProfileId
  = lens _cpProfileId (\ s a -> s{_cpProfileId = a})

-- | Multipart request metadata.
cpPayload :: Lens' CampaignsPatch' Campaign
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CampaignsPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | Campaign ID.
cpId :: Lens' CampaignsPatch' Int64
cpId = lens _cpId (\ s a -> s{_cpId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CampaignsPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CampaignsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CampaignsPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CampaignsPatch' where
        type Rs CampaignsPatch' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsPatch'{..}
          = go _cpProfileId (Just _cpId) _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CampaignsPatchResource)
                      r
                      u
