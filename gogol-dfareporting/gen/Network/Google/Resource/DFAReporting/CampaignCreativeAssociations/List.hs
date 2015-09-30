{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of creative IDs associated with the specified
-- campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignCreativeAssociationsList@.
module DFAReporting.CampaignCreativeAssociations.List
    (
    -- * REST Resource
      CampaignCreativeAssociationsListAPI

    -- * Creating a Request
    , campaignCreativeAssociationsList
    , CampaignCreativeAssociationsList

    -- * Request Lenses
    , ccalQuotaUser
    , ccalPrettyPrint
    , ccalUserIp
    , ccalCampaignId
    , ccalProfileId
    , ccalSortOrder
    , ccalKey
    , ccalPageToken
    , ccalOauthToken
    , ccalMaxResults
    , ccalFields
    , ccalAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignCreativeAssociationsList@ which the
-- 'CampaignCreativeAssociationsList' request conforms to.
type CampaignCreativeAssociationsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "campaignCreativeAssociations" :>
               QueryParam "sortOrder" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     Get '[JSON] CampaignCreativeAssociationsListResponse

-- | Retrieves the list of creative IDs associated with the specified
-- campaign.
--
-- /See:/ 'campaignCreativeAssociationsList' smart constructor.
data CampaignCreativeAssociationsList = CampaignCreativeAssociationsList
    { _ccalQuotaUser   :: !(Maybe Text)
    , _ccalPrettyPrint :: !Bool
    , _ccalUserIp      :: !(Maybe Text)
    , _ccalCampaignId  :: !Int64
    , _ccalProfileId   :: !Int64
    , _ccalSortOrder   :: !(Maybe Text)
    , _ccalKey         :: !(Maybe Text)
    , _ccalPageToken   :: !(Maybe Text)
    , _ccalOauthToken  :: !(Maybe Text)
    , _ccalMaxResults  :: !(Maybe Int32)
    , _ccalFields      :: !(Maybe Text)
    , _ccalAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignCreativeAssociationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccalQuotaUser'
--
-- * 'ccalPrettyPrint'
--
-- * 'ccalUserIp'
--
-- * 'ccalCampaignId'
--
-- * 'ccalProfileId'
--
-- * 'ccalSortOrder'
--
-- * 'ccalKey'
--
-- * 'ccalPageToken'
--
-- * 'ccalOauthToken'
--
-- * 'ccalMaxResults'
--
-- * 'ccalFields'
--
-- * 'ccalAlt'
campaignCreativeAssociationsList
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> CampaignCreativeAssociationsList
campaignCreativeAssociationsList pCcalCampaignId_ pCcalProfileId_ =
    CampaignCreativeAssociationsList
    { _ccalQuotaUser = Nothing
    , _ccalPrettyPrint = True
    , _ccalUserIp = Nothing
    , _ccalCampaignId = pCcalCampaignId_
    , _ccalProfileId = pCcalProfileId_
    , _ccalSortOrder = Nothing
    , _ccalKey = Nothing
    , _ccalPageToken = Nothing
    , _ccalOauthToken = Nothing
    , _ccalMaxResults = Nothing
    , _ccalFields = Nothing
    , _ccalAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccalQuotaUser :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalQuotaUser
  = lens _ccalQuotaUser
      (\ s a -> s{_ccalQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccalPrettyPrint :: Lens' CampaignCreativeAssociationsList' Bool
ccalPrettyPrint
  = lens _ccalPrettyPrint
      (\ s a -> s{_ccalPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccalUserIp :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalUserIp
  = lens _ccalUserIp (\ s a -> s{_ccalUserIp = a})

-- | Campaign ID in this association.
ccalCampaignId :: Lens' CampaignCreativeAssociationsList' Int64
ccalCampaignId
  = lens _ccalCampaignId
      (\ s a -> s{_ccalCampaignId = a})

-- | User profile ID associated with this request.
ccalProfileId :: Lens' CampaignCreativeAssociationsList' Int64
ccalProfileId
  = lens _ccalProfileId
      (\ s a -> s{_ccalProfileId = a})

-- | Order of sorted results, default is ASCENDING.
ccalSortOrder :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalSortOrder
  = lens _ccalSortOrder
      (\ s a -> s{_ccalSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccalKey :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalKey = lens _ccalKey (\ s a -> s{_ccalKey = a})

-- | Value of the nextPageToken from the previous result page.
ccalPageToken :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalPageToken
  = lens _ccalPageToken
      (\ s a -> s{_ccalPageToken = a})

-- | OAuth 2.0 token for the current user.
ccalOauthToken :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalOauthToken
  = lens _ccalOauthToken
      (\ s a -> s{_ccalOauthToken = a})

-- | Maximum number of results to return.
ccalMaxResults :: Lens' CampaignCreativeAssociationsList' (Maybe Int32)
ccalMaxResults
  = lens _ccalMaxResults
      (\ s a -> s{_ccalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ccalFields :: Lens' CampaignCreativeAssociationsList' (Maybe Text)
ccalFields
  = lens _ccalFields (\ s a -> s{_ccalFields = a})

-- | Data format for the response.
ccalAlt :: Lens' CampaignCreativeAssociationsList' Text
ccalAlt = lens _ccalAlt (\ s a -> s{_ccalAlt = a})

instance GoogleRequest
         CampaignCreativeAssociationsList' where
        type Rs CampaignCreativeAssociationsList' =
             CampaignCreativeAssociationsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          CampaignCreativeAssociationsList{..}
          = go _ccalQuotaUser _ccalPrettyPrint _ccalUserIp
              _ccalCampaignId
              _ccalProfileId
              _ccalSortOrder
              _ccalKey
              _ccalPageToken
              _ccalOauthToken
              _ccalMaxResults
              _ccalFields
              _ccalAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CampaignCreativeAssociationsListAPI)
                      r
                      u
