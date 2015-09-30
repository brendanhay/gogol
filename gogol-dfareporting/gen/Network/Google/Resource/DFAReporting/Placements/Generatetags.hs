{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Placements.Generatetags
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates tags for a placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsGeneratetags@.
module DFAReporting.Placements.Generatetags
    (
    -- * REST Resource
      PlacementsGeneratetagsAPI

    -- * Creating a Request
    , placementsGeneratetags
    , PlacementsGeneratetags

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pTagFormats
    , pUserIp
    , pCampaignId
    , pProfileId
    , pKey
    , pPlacementIds
    , pOauthToken
    , pFields
    , pAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsGeneratetags@ which the
-- 'PlacementsGeneratetags' request conforms to.
type PlacementsGeneratetagsAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           "generatetags" :>
             QueryParams "tagFormats" Text :>
               QueryParam "campaignId" Int64 :>
                 QueryParams "placementIds" Int64 :>
                   Post '[JSON] PlacementsGenerateTagsResponse

-- | Generates tags for a placement.
--
-- /See:/ 'placementsGeneratetags' smart constructor.
data PlacementsGeneratetags = PlacementsGeneratetags
    { _pQuotaUser    :: !(Maybe Text)
    , _pPrettyPrint  :: !Bool
    , _pTagFormats   :: !(Maybe Text)
    , _pUserIp       :: !(Maybe Text)
    , _pCampaignId   :: !(Maybe Int64)
    , _pProfileId    :: !Int64
    , _pKey          :: !(Maybe Text)
    , _pPlacementIds :: !(Maybe Int64)
    , _pOauthToken   :: !(Maybe Text)
    , _pFields       :: !(Maybe Text)
    , _pAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGeneratetags'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pTagFormats'
--
-- * 'pUserIp'
--
-- * 'pCampaignId'
--
-- * 'pProfileId'
--
-- * 'pKey'
--
-- * 'pPlacementIds'
--
-- * 'pOauthToken'
--
-- * 'pFields'
--
-- * 'pAlt'
placementsGeneratetags
    :: Int64 -- ^ 'profileId'
    -> PlacementsGeneratetags
placementsGeneratetags pPProfileId_ =
    PlacementsGeneratetags
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pTagFormats = Nothing
    , _pUserIp = Nothing
    , _pCampaignId = Nothing
    , _pProfileId = pPProfileId_
    , _pKey = Nothing
    , _pPlacementIds = Nothing
    , _pOauthToken = Nothing
    , _pFields = Nothing
    , _pAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' PlacementsGeneratetags' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' PlacementsGeneratetags' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | Tag formats to generate for these placements.
pTagFormats :: Lens' PlacementsGeneratetags' (Maybe Text)
pTagFormats
  = lens _pTagFormats (\ s a -> s{_pTagFormats = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIp :: Lens' PlacementsGeneratetags' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | Generate placements belonging to this campaign. This is a required
-- field.
pCampaignId :: Lens' PlacementsGeneratetags' (Maybe Int64)
pCampaignId
  = lens _pCampaignId (\ s a -> s{_pCampaignId = a})

-- | User profile ID associated with this request.
pProfileId :: Lens' PlacementsGeneratetags' Int64
pProfileId
  = lens _pProfileId (\ s a -> s{_pProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PlacementsGeneratetags' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | Generate tags for these placements.
pPlacementIds :: Lens' PlacementsGeneratetags' (Maybe Int64)
pPlacementIds
  = lens _pPlacementIds
      (\ s a -> s{_pPlacementIds = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' PlacementsGeneratetags' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PlacementsGeneratetags' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' PlacementsGeneratetags' Text
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest PlacementsGeneratetags' where
        type Rs PlacementsGeneratetags' =
             PlacementsGenerateTagsResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsGeneratetags{..}
          = go _pQuotaUser _pPrettyPrint _pTagFormats _pUserIp
              _pCampaignId
              _pProfileId
              _pKey
              _pPlacementIds
              _pOauthToken
              _pFields
              _pAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsGeneratetagsAPI)
                      r
                      u
