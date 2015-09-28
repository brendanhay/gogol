{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Campaigns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one campaign by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.get@.
module Network.Google.API.DFAReporting.Campaigns.Get
    (
    -- * REST Resource
      CampaignsGetAPI

    -- * Creating a Request
    , campaignsGet'
    , CampaignsGet'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cProfileId
    , cKey
    , cId
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.campaigns.get which the
-- 'CampaignsGet'' request conforms to.
type CampaignsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Campaign

-- | Gets one campaign by ID.
--
-- /See:/ 'campaignsGet'' smart constructor.
data CampaignsGet' = CampaignsGet'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cUserIp      :: !(Maybe Text)
    , _cProfileId   :: !Int64
    , _cKey         :: !(Maybe Text)
    , _cId          :: !Int64
    , _cOauthToken  :: !(Maybe Text)
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cProfileId'
--
-- * 'cKey'
--
-- * 'cId'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
campaignsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CampaignsGet'
campaignsGet' pCProfileId_ pCId_ =
    CampaignsGet'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cProfileId = pCProfileId_
    , _cKey = Nothing
    , _cId = pCId_
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CampaignsGet' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CampaignsGet' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CampaignsGet' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | User profile ID associated with this request.
cProfileId :: Lens' CampaignsGet' Int64
cProfileId
  = lens _cProfileId (\ s a -> s{_cProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CampaignsGet' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | Campaign ID.
cId :: Lens' CampaignsGet' Int64
cId = lens _cId (\ s a -> s{_cId = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CampaignsGet' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CampaignsGet' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CampaignsGet' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CampaignsGet' where
        type Rs CampaignsGet' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsGet'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cUserIp
              _cProfileId
              _cKey
              _cId
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsGetAPI) r
                      u
