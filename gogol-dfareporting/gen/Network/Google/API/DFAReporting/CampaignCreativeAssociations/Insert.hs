{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.CampaignCreativeAssociations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaignCreativeAssociations.insert@.
module Network.Google.API.DFAReporting.CampaignCreativeAssociations.Insert
    (
    -- * REST Resource
      CampaignCreativeAssociationsInsertAPI

    -- * Creating a Request
    , campaignCreativeAssociationsInsert'
    , CampaignCreativeAssociationsInsert'

    -- * Request Lenses
    , ccaiQuotaUser
    , ccaiPrettyPrint
    , ccaiUserIp
    , ccaiCampaignId
    , ccaiProfileId
    , ccaiKey
    , ccaiOauthToken
    , ccaiFields
    , ccaiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.campaignCreativeAssociations.insert which the
-- 'CampaignCreativeAssociationsInsert'' request conforms to.
type CampaignCreativeAssociationsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "campaignCreativeAssociations" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] CampaignCreativeAssociation

-- | Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
--
-- /See:/ 'campaignCreativeAssociationsInsert'' smart constructor.
data CampaignCreativeAssociationsInsert' = CampaignCreativeAssociationsInsert'
    { _ccaiQuotaUser   :: !(Maybe Text)
    , _ccaiPrettyPrint :: !Bool
    , _ccaiUserIp      :: !(Maybe Text)
    , _ccaiCampaignId  :: !Int64
    , _ccaiProfileId   :: !Int64
    , _ccaiKey         :: !(Maybe Text)
    , _ccaiOauthToken  :: !(Maybe Text)
    , _ccaiFields      :: !(Maybe Text)
    , _ccaiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignCreativeAssociationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaiQuotaUser'
--
-- * 'ccaiPrettyPrint'
--
-- * 'ccaiUserIp'
--
-- * 'ccaiCampaignId'
--
-- * 'ccaiProfileId'
--
-- * 'ccaiKey'
--
-- * 'ccaiOauthToken'
--
-- * 'ccaiFields'
--
-- * 'ccaiAlt'
campaignCreativeAssociationsInsert'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> CampaignCreativeAssociationsInsert'
campaignCreativeAssociationsInsert' pCcaiCampaignId_ pCcaiProfileId_ =
    CampaignCreativeAssociationsInsert'
    { _ccaiQuotaUser = Nothing
    , _ccaiPrettyPrint = True
    , _ccaiUserIp = Nothing
    , _ccaiCampaignId = pCcaiCampaignId_
    , _ccaiProfileId = pCcaiProfileId_
    , _ccaiKey = Nothing
    , _ccaiOauthToken = Nothing
    , _ccaiFields = Nothing
    , _ccaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccaiQuotaUser :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiQuotaUser
  = lens _ccaiQuotaUser
      (\ s a -> s{_ccaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccaiPrettyPrint :: Lens' CampaignCreativeAssociationsInsert' Bool
ccaiPrettyPrint
  = lens _ccaiPrettyPrint
      (\ s a -> s{_ccaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccaiUserIp :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiUserIp
  = lens _ccaiUserIp (\ s a -> s{_ccaiUserIp = a})

-- | Campaign ID in this association.
ccaiCampaignId :: Lens' CampaignCreativeAssociationsInsert' Int64
ccaiCampaignId
  = lens _ccaiCampaignId
      (\ s a -> s{_ccaiCampaignId = a})

-- | User profile ID associated with this request.
ccaiProfileId :: Lens' CampaignCreativeAssociationsInsert' Int64
ccaiProfileId
  = lens _ccaiProfileId
      (\ s a -> s{_ccaiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccaiKey :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiKey = lens _ccaiKey (\ s a -> s{_ccaiKey = a})

-- | OAuth 2.0 token for the current user.
ccaiOauthToken :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiOauthToken
  = lens _ccaiOauthToken
      (\ s a -> s{_ccaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccaiFields :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiFields
  = lens _ccaiFields (\ s a -> s{_ccaiFields = a})

-- | Data format for the response.
ccaiAlt :: Lens' CampaignCreativeAssociationsInsert' Alt
ccaiAlt = lens _ccaiAlt (\ s a -> s{_ccaiAlt = a})

instance GoogleRequest
         CampaignCreativeAssociationsInsert' where
        type Rs CampaignCreativeAssociationsInsert' =
             CampaignCreativeAssociation
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          CampaignCreativeAssociationsInsert'{..}
          = go _ccaiQuotaUser (Just _ccaiPrettyPrint)
              _ccaiUserIp
              _ccaiCampaignId
              _ccaiProfileId
              _ccaiKey
              _ccaiOauthToken
              _ccaiFields
              (Just _ccaiAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy CampaignCreativeAssociationsInsertAPI)
                      r
                      u
