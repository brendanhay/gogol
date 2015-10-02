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
-- Module      : Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert
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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignCreativeAssociationsInsert@.
module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert
    (
    -- * REST Resource
      CampaignCreativeAssociationsInsertResource

    -- * Creating a Request
    , campaignCreativeAssociationsInsert'
    , CampaignCreativeAssociationsInsert'

    -- * Request Lenses
    , ccaiQuotaUser
    , ccaiPrettyPrint
    , ccaiUserIP
    , ccaiCampaignId
    , ccaiProfileId
    , ccaiCampaignCreativeAssociation
    , ccaiKey
    , ccaiOAuthToken
    , ccaiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignCreativeAssociationsInsert@ which the
-- 'CampaignCreativeAssociationsInsert'' request conforms to.
type CampaignCreativeAssociationsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "campaignCreativeAssociations" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CampaignCreativeAssociation :>
                               Post '[JSON] CampaignCreativeAssociation

-- | Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
--
-- /See:/ 'campaignCreativeAssociationsInsert'' smart constructor.
data CampaignCreativeAssociationsInsert' = CampaignCreativeAssociationsInsert'
    { _ccaiQuotaUser                   :: !(Maybe Text)
    , _ccaiPrettyPrint                 :: !Bool
    , _ccaiUserIP                      :: !(Maybe Text)
    , _ccaiCampaignId                  :: !Int64
    , _ccaiProfileId                   :: !Int64
    , _ccaiCampaignCreativeAssociation :: !CampaignCreativeAssociation
    , _ccaiKey                         :: !(Maybe Key)
    , _ccaiOAuthToken                  :: !(Maybe OAuthToken)
    , _ccaiFields                      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignCreativeAssociationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaiQuotaUser'
--
-- * 'ccaiPrettyPrint'
--
-- * 'ccaiUserIP'
--
-- * 'ccaiCampaignId'
--
-- * 'ccaiProfileId'
--
-- * 'ccaiCampaignCreativeAssociation'
--
-- * 'ccaiKey'
--
-- * 'ccaiOAuthToken'
--
-- * 'ccaiFields'
campaignCreativeAssociationsInsert'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> CampaignCreativeAssociation -- ^ 'CampaignCreativeAssociation'
    -> CampaignCreativeAssociationsInsert'
campaignCreativeAssociationsInsert' pCcaiCampaignId_ pCcaiProfileId_ pCcaiCampaignCreativeAssociation_ =
    CampaignCreativeAssociationsInsert'
    { _ccaiQuotaUser = Nothing
    , _ccaiPrettyPrint = True
    , _ccaiUserIP = Nothing
    , _ccaiCampaignId = pCcaiCampaignId_
    , _ccaiProfileId = pCcaiProfileId_
    , _ccaiCampaignCreativeAssociation = pCcaiCampaignCreativeAssociation_
    , _ccaiKey = Nothing
    , _ccaiOAuthToken = Nothing
    , _ccaiFields = Nothing
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
ccaiUserIP :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiUserIP
  = lens _ccaiUserIP (\ s a -> s{_ccaiUserIP = a})

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

-- | Multipart request metadata.
ccaiCampaignCreativeAssociation :: Lens' CampaignCreativeAssociationsInsert' CampaignCreativeAssociation
ccaiCampaignCreativeAssociation
  = lens _ccaiCampaignCreativeAssociation
      (\ s a -> s{_ccaiCampaignCreativeAssociation = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccaiKey :: Lens' CampaignCreativeAssociationsInsert' (Maybe Key)
ccaiKey = lens _ccaiKey (\ s a -> s{_ccaiKey = a})

-- | OAuth 2.0 token for the current user.
ccaiOAuthToken :: Lens' CampaignCreativeAssociationsInsert' (Maybe OAuthToken)
ccaiOAuthToken
  = lens _ccaiOAuthToken
      (\ s a -> s{_ccaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccaiFields :: Lens' CampaignCreativeAssociationsInsert' (Maybe Text)
ccaiFields
  = lens _ccaiFields (\ s a -> s{_ccaiFields = a})

instance GoogleAuth
         CampaignCreativeAssociationsInsert' where
        authKey = ccaiKey . _Just
        authToken = ccaiOAuthToken . _Just

instance GoogleRequest
         CampaignCreativeAssociationsInsert' where
        type Rs CampaignCreativeAssociationsInsert' =
             CampaignCreativeAssociation
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          CampaignCreativeAssociationsInsert'{..}
          = go _ccaiQuotaUser (Just _ccaiPrettyPrint)
              _ccaiUserIP
              _ccaiCampaignId
              _ccaiProfileId
              _ccaiKey
              _ccaiOAuthToken
              _ccaiFields
              (Just AltJSON)
              _ccaiCampaignCreativeAssociation
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy CampaignCreativeAssociationsInsertResource)
                      r
                      u
