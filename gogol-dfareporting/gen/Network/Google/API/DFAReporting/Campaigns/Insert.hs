{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Campaigns.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.insert@.
module Network.Google.API.DFAReporting.Campaigns.Insert
    (
    -- * REST Resource
      CampaignsInsertAPI

    -- * Creating a Request
    , campaignsInsert'
    , CampaignsInsert'

    -- * Request Lenses
    , ciiQuotaUser
    , ciiPrettyPrint
    , ciiUserIp
    , ciiProfileId
    , ciiDefaultLandingPageUrl
    , ciiKey
    , ciiDefaultLandingPageName
    , ciiOauthToken
    , ciiFields
    , ciiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.campaigns.insert which the
-- 'CampaignsInsert'' request conforms to.
type CampaignsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "defaultLandingPageUrl" Text :>
                   QueryParam "key" Text :>
                     QueryParam "defaultLandingPageName" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert'' smart constructor.
data CampaignsInsert' = CampaignsInsert'
    { _ciiQuotaUser              :: !(Maybe Text)
    , _ciiPrettyPrint            :: !Bool
    , _ciiUserIp                 :: !(Maybe Text)
    , _ciiProfileId              :: !Int64
    , _ciiDefaultLandingPageUrl  :: !Text
    , _ciiKey                    :: !(Maybe Text)
    , _ciiDefaultLandingPageName :: !Text
    , _ciiOauthToken             :: !(Maybe Text)
    , _ciiFields                 :: !(Maybe Text)
    , _ciiAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiQuotaUser'
--
-- * 'ciiPrettyPrint'
--
-- * 'ciiUserIp'
--
-- * 'ciiProfileId'
--
-- * 'ciiDefaultLandingPageUrl'
--
-- * 'ciiKey'
--
-- * 'ciiDefaultLandingPageName'
--
-- * 'ciiOauthToken'
--
-- * 'ciiFields'
--
-- * 'ciiAlt'
campaignsInsert'
    :: Int64 -- ^ 'profileId'
    -> Text -- ^ 'defaultLandingPageUrl'
    -> Text -- ^ 'defaultLandingPageName'
    -> CampaignsInsert'
campaignsInsert' pCiiProfileId_ pCiiDefaultLandingPageUrl_ pCiiDefaultLandingPageName_ =
    CampaignsInsert'
    { _ciiQuotaUser = Nothing
    , _ciiPrettyPrint = True
    , _ciiUserIp = Nothing
    , _ciiProfileId = pCiiProfileId_
    , _ciiDefaultLandingPageUrl = pCiiDefaultLandingPageUrl_
    , _ciiKey = Nothing
    , _ciiDefaultLandingPageName = pCiiDefaultLandingPageName_
    , _ciiOauthToken = Nothing
    , _ciiFields = Nothing
    , _ciiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciiQuotaUser :: Lens' CampaignsInsert' (Maybe Text)
ciiQuotaUser
  = lens _ciiQuotaUser (\ s a -> s{_ciiQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciiPrettyPrint :: Lens' CampaignsInsert' Bool
ciiPrettyPrint
  = lens _ciiPrettyPrint
      (\ s a -> s{_ciiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciiUserIp :: Lens' CampaignsInsert' (Maybe Text)
ciiUserIp
  = lens _ciiUserIp (\ s a -> s{_ciiUserIp = a})

-- | User profile ID associated with this request.
ciiProfileId :: Lens' CampaignsInsert' Int64
ciiProfileId
  = lens _ciiProfileId (\ s a -> s{_ciiProfileId = a})

-- | Default landing page URL for this new campaign.
ciiDefaultLandingPageUrl :: Lens' CampaignsInsert' Text
ciiDefaultLandingPageUrl
  = lens _ciiDefaultLandingPageUrl
      (\ s a -> s{_ciiDefaultLandingPageUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciiKey :: Lens' CampaignsInsert' (Maybe Text)
ciiKey = lens _ciiKey (\ s a -> s{_ciiKey = a})

-- | Default landing page name for this new campaign. Must be less than 256
-- characters long.
ciiDefaultLandingPageName :: Lens' CampaignsInsert' Text
ciiDefaultLandingPageName
  = lens _ciiDefaultLandingPageName
      (\ s a -> s{_ciiDefaultLandingPageName = a})

-- | OAuth 2.0 token for the current user.
ciiOauthToken :: Lens' CampaignsInsert' (Maybe Text)
ciiOauthToken
  = lens _ciiOauthToken
      (\ s a -> s{_ciiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciiFields :: Lens' CampaignsInsert' (Maybe Text)
ciiFields
  = lens _ciiFields (\ s a -> s{_ciiFields = a})

-- | Data format for the response.
ciiAlt :: Lens' CampaignsInsert' Alt
ciiAlt = lens _ciiAlt (\ s a -> s{_ciiAlt = a})

instance GoogleRequest CampaignsInsert' where
        type Rs CampaignsInsert' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsInsert'{..}
          = go _ciiQuotaUser (Just _ciiPrettyPrint) _ciiUserIp
              _ciiProfileId
              (Just _ciiDefaultLandingPageUrl)
              _ciiKey
              (Just _ciiDefaultLandingPageName)
              _ciiOauthToken
              _ciiFields
              (Just _ciiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsInsertAPI)
                      r
                      u
