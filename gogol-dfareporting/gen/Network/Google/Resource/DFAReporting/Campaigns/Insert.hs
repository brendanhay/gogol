{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsInsert@.
module DFAReporting.Campaigns.Insert
    (
    -- * REST Resource
      CampaignsInsertAPI

    -- * Creating a Request
    , campaignsInsert
    , CampaignsInsert

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIp
    , ciProfileId
    , ciDefaultLandingPageUrl
    , ciKey
    , ciDefaultLandingPageName
    , ciOauthToken
    , ciFields
    , ciAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsInsert@ which the
-- 'CampaignsInsert' request conforms to.
type CampaignsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "defaultLandingPageUrl" Text :>
             QueryParam "defaultLandingPageName" Text :>
               Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert' smart constructor.
data CampaignsInsert = CampaignsInsert
    { _ciQuotaUser              :: !(Maybe Text)
    , _ciPrettyPrint            :: !Bool
    , _ciUserIp                 :: !(Maybe Text)
    , _ciProfileId              :: !Int64
    , _ciDefaultLandingPageUrl  :: !Text
    , _ciKey                    :: !(Maybe Text)
    , _ciDefaultLandingPageName :: !Text
    , _ciOauthToken             :: !(Maybe Text)
    , _ciFields                 :: !(Maybe Text)
    , _ciAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciProfileId'
--
-- * 'ciDefaultLandingPageUrl'
--
-- * 'ciKey'
--
-- * 'ciDefaultLandingPageName'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
campaignsInsert
    :: Int64 -- ^ 'profileId'
    -> Text -- ^ 'defaultLandingPageUrl'
    -> Text -- ^ 'defaultLandingPageName'
    -> CampaignsInsert
campaignsInsert pCiProfileId_ pCiDefaultLandingPageUrl_ pCiDefaultLandingPageName_ =
    CampaignsInsert
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciProfileId = pCiProfileId_
    , _ciDefaultLandingPageUrl = pCiDefaultLandingPageUrl_
    , _ciKey = Nothing
    , _ciDefaultLandingPageName = pCiDefaultLandingPageName_
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CampaignsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CampaignsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' CampaignsInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | User profile ID associated with this request.
ciProfileId :: Lens' CampaignsInsert' Int64
ciProfileId
  = lens _ciProfileId (\ s a -> s{_ciProfileId = a})

-- | Default landing page URL for this new campaign.
ciDefaultLandingPageUrl :: Lens' CampaignsInsert' Text
ciDefaultLandingPageUrl
  = lens _ciDefaultLandingPageUrl
      (\ s a -> s{_ciDefaultLandingPageUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CampaignsInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | Default landing page name for this new campaign. Must be less than 256
-- characters long.
ciDefaultLandingPageName :: Lens' CampaignsInsert' Text
ciDefaultLandingPageName
  = lens _ciDefaultLandingPageName
      (\ s a -> s{_ciDefaultLandingPageName = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' CampaignsInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CampaignsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' CampaignsInsert' Text
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest CampaignsInsert' where
        type Rs CampaignsInsert' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsInsert{..}
          = go _ciQuotaUser _ciPrettyPrint _ciUserIp
              _ciProfileId
              (Just _ciDefaultLandingPageUrl)
              _ciKey
              (Just _ciDefaultLandingPageName)
              _ciOauthToken
              _ciFields
              _ciAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsInsertAPI)
                      r
                      u
