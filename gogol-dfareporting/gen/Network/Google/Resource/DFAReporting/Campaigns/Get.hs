{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one campaign by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsGet@.
module DFAReporting.Campaigns.Get
    (
    -- * REST Resource
      CampaignsGetAPI

    -- * Creating a Request
    , campaignsGet
    , CampaignsGet

    -- * Request Lenses
    , camaQuotaUser
    , camaPrettyPrint
    , camaUserIp
    , camaProfileId
    , camaKey
    , camaId
    , camaOauthToken
    , camaFields
    , camaAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsGet@ which the
-- 'CampaignsGet' request conforms to.
type CampaignsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "id" Int64 :> Get '[JSON] Campaign

-- | Gets one campaign by ID.
--
-- /See:/ 'campaignsGet' smart constructor.
data CampaignsGet = CampaignsGet
    { _camaQuotaUser   :: !(Maybe Text)
    , _camaPrettyPrint :: !Bool
    , _camaUserIp      :: !(Maybe Text)
    , _camaProfileId   :: !Int64
    , _camaKey         :: !(Maybe Text)
    , _camaId          :: !Int64
    , _camaOauthToken  :: !(Maybe Text)
    , _camaFields      :: !(Maybe Text)
    , _camaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camaQuotaUser'
--
-- * 'camaPrettyPrint'
--
-- * 'camaUserIp'
--
-- * 'camaProfileId'
--
-- * 'camaKey'
--
-- * 'camaId'
--
-- * 'camaOauthToken'
--
-- * 'camaFields'
--
-- * 'camaAlt'
campaignsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CampaignsGet
campaignsGet pCamaProfileId_ pCamaId_ =
    CampaignsGet
    { _camaQuotaUser = Nothing
    , _camaPrettyPrint = True
    , _camaUserIp = Nothing
    , _camaProfileId = pCamaProfileId_
    , _camaKey = Nothing
    , _camaId = pCamaId_
    , _camaOauthToken = Nothing
    , _camaFields = Nothing
    , _camaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
camaQuotaUser :: Lens' CampaignsGet' (Maybe Text)
camaQuotaUser
  = lens _camaQuotaUser
      (\ s a -> s{_camaQuotaUser = a})

-- | Returns response with indentations and line breaks.
camaPrettyPrint :: Lens' CampaignsGet' Bool
camaPrettyPrint
  = lens _camaPrettyPrint
      (\ s a -> s{_camaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
camaUserIp :: Lens' CampaignsGet' (Maybe Text)
camaUserIp
  = lens _camaUserIp (\ s a -> s{_camaUserIp = a})

-- | User profile ID associated with this request.
camaProfileId :: Lens' CampaignsGet' Int64
camaProfileId
  = lens _camaProfileId
      (\ s a -> s{_camaProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
camaKey :: Lens' CampaignsGet' (Maybe Text)
camaKey = lens _camaKey (\ s a -> s{_camaKey = a})

-- | Campaign ID.
camaId :: Lens' CampaignsGet' Int64
camaId = lens _camaId (\ s a -> s{_camaId = a})

-- | OAuth 2.0 token for the current user.
camaOauthToken :: Lens' CampaignsGet' (Maybe Text)
camaOauthToken
  = lens _camaOauthToken
      (\ s a -> s{_camaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
camaFields :: Lens' CampaignsGet' (Maybe Text)
camaFields
  = lens _camaFields (\ s a -> s{_camaFields = a})

-- | Data format for the response.
camaAlt :: Lens' CampaignsGet' Text
camaAlt = lens _camaAlt (\ s a -> s{_camaAlt = a})

instance GoogleRequest CampaignsGet' where
        type Rs CampaignsGet' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsGet{..}
          = go _camaQuotaUser _camaPrettyPrint _camaUserIp
              _camaProfileId
              _camaKey
              _camaId
              _camaOauthToken
              _camaFields
              _camaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsGetAPI) r
                      u
