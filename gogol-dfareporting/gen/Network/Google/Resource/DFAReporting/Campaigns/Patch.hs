{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.Campaigns.Patch
    (
    -- * REST Resource
      CampaignsPatchAPI

    -- * Creating a Request
    , campaignsPatch
    , CampaignsPatch

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpProfileId
    , cpKey
    , cpId
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsPatch@ which the
-- 'CampaignsPatch' request conforms to.
type CampaignsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "id" Int64 :> Patch '[JSON] Campaign

-- | Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ 'campaignsPatch' smart constructor.
data CampaignsPatch = CampaignsPatch
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpProfileId   :: !Int64
    , _cpKey         :: !(Maybe Text)
    , _cpId          :: !Int64
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpProfileId'
--
-- * 'cpKey'
--
-- * 'cpId'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
campaignsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CampaignsPatch
campaignsPatch pCpProfileId_ pCpId_ =
    CampaignsPatch
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpProfileId = pCpProfileId_
    , _cpKey = Nothing
    , _cpId = pCpId_
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = "json"
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
cpUserIp :: Lens' CampaignsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | User profile ID associated with this request.
cpProfileId :: Lens' CampaignsPatch' Int64
cpProfileId
  = lens _cpProfileId (\ s a -> s{_cpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CampaignsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | Campaign ID.
cpId :: Lens' CampaignsPatch' Int64
cpId = lens _cpId (\ s a -> s{_cpId = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CampaignsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CampaignsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CampaignsPatch' Text
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CampaignsPatch' where
        type Rs CampaignsPatch' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsPatch{..}
          = go _cpQuotaUser _cpPrettyPrint _cpUserIp
              _cpProfileId
              _cpKey
              (Just _cpId)
              _cpOauthToken
              _cpFields
              _cpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsPatchAPI)
                      r
                      u
