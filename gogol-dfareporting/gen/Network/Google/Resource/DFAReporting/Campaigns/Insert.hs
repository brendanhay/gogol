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
module Network.Google.Resource.DFAReporting.Campaigns.Insert
    (
    -- * REST Resource
      CampaignsInsertResource

    -- * Creating a Request
    , campaignsInsert'
    , CampaignsInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciProfileId
    , ciPayload
    , ciDefaultLandingPageURL
    , ciKey
    , ciDefaultLandingPageName
    , ciOAuthToken
    , ciFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsInsert@ which the
-- 'CampaignsInsert'' request conforms to.
type CampaignsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "defaultLandingPageName" Text :>
             QueryParam "defaultLandingPageUrl" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Campaign :> Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert'' smart constructor.
data CampaignsInsert' = CampaignsInsert'
    { _ciQuotaUser              :: !(Maybe Text)
    , _ciPrettyPrint            :: !Bool
    , _ciUserIP                 :: !(Maybe Text)
    , _ciProfileId              :: !Int64
    , _ciPayload                :: !Campaign
    , _ciDefaultLandingPageURL  :: !Text
    , _ciKey                    :: !(Maybe Key)
    , _ciDefaultLandingPageName :: !Text
    , _ciOAuthToken             :: !(Maybe OAuthToken)
    , _ciFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciProfileId'
--
-- * 'ciPayload'
--
-- * 'ciDefaultLandingPageURL'
--
-- * 'ciKey'
--
-- * 'ciDefaultLandingPageName'
--
-- * 'ciOAuthToken'
--
-- * 'ciFields'
campaignsInsert'
    :: Int64 -- ^ 'profileId'
    -> Campaign -- ^ 'payload'
    -> Text -- ^ 'defaultLandingPageUrl'
    -> Text -- ^ 'defaultLandingPageName'
    -> CampaignsInsert'
campaignsInsert' pCiProfileId_ pCiPayload_ pCiDefaultLandingPageURL_ pCiDefaultLandingPageName_ =
    CampaignsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciProfileId = pCiProfileId_
    , _ciPayload = pCiPayload_
    , _ciDefaultLandingPageURL = pCiDefaultLandingPageURL_
    , _ciKey = Nothing
    , _ciDefaultLandingPageName = pCiDefaultLandingPageName_
    , _ciOAuthToken = Nothing
    , _ciFields = Nothing
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
ciUserIP :: Lens' CampaignsInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | User profile ID associated with this request.
ciProfileId :: Lens' CampaignsInsert' Int64
ciProfileId
  = lens _ciProfileId (\ s a -> s{_ciProfileId = a})

-- | Multipart request metadata.
ciPayload :: Lens' CampaignsInsert' Campaign
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | Default landing page URL for this new campaign.
ciDefaultLandingPageURL :: Lens' CampaignsInsert' Text
ciDefaultLandingPageURL
  = lens _ciDefaultLandingPageURL
      (\ s a -> s{_ciDefaultLandingPageURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CampaignsInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | Default landing page name for this new campaign. Must be less than 256
-- characters long.
ciDefaultLandingPageName :: Lens' CampaignsInsert' Text
ciDefaultLandingPageName
  = lens _ciDefaultLandingPageName
      (\ s a -> s{_ciDefaultLandingPageName = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CampaignsInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CampaignsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CampaignsInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CampaignsInsert' where
        type Rs CampaignsInsert' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsInsert'{..}
          = go _ciProfileId (Just _ciDefaultLandingPageName)
              (Just _ciDefaultLandingPageURL)
              _ciQuotaUser
              (Just _ciPrettyPrint)
              _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CampaignsInsertResource)
                      r
                      u
