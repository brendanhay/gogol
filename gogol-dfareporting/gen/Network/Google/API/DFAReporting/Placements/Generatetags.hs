{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Placements.Generatetags
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates tags for a placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.generatetags@.
module Network.Google.API.DFAReporting.Placements.Generatetags
    (
    -- * REST Resource
      PlacementsGeneratetagsAPI

    -- * Creating a Request
    , placementsGeneratetags'
    , PlacementsGeneratetags'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgTagFormats
    , pgUserIp
    , pgCampaignId
    , pgProfileId
    , pgKey
    , pgPlacementIds
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.placements.generatetags which the
-- 'PlacementsGeneratetags'' request conforms to.
type PlacementsGeneratetagsAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           "generatetags" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "tagFormats"
                   PlacementsGeneratetags'TagFormats
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "campaignId" Int64 :>
                       QueryParam "key" Text :>
                         QueryParam "placementIds" Int64 :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Post '[JSON] PlacementsGenerateTagsResponse

-- | Generates tags for a placement.
--
-- /See:/ 'placementsGeneratetags'' smart constructor.
data PlacementsGeneratetags' = PlacementsGeneratetags'
    { _pgQuotaUser    :: !(Maybe Text)
    , _pgPrettyPrint  :: !Bool
    , _pgTagFormats   :: !(Maybe PlacementsGeneratetags'TagFormats)
    , _pgUserIp       :: !(Maybe Text)
    , _pgCampaignId   :: !(Maybe Int64)
    , _pgProfileId    :: !Int64
    , _pgKey          :: !(Maybe Text)
    , _pgPlacementIds :: !(Maybe Int64)
    , _pgOauthToken   :: !(Maybe Text)
    , _pgFields       :: !(Maybe Text)
    , _pgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGeneratetags'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgTagFormats'
--
-- * 'pgUserIp'
--
-- * 'pgCampaignId'
--
-- * 'pgProfileId'
--
-- * 'pgKey'
--
-- * 'pgPlacementIds'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
placementsGeneratetags'
    :: Int64 -- ^ 'profileId'
    -> PlacementsGeneratetags'
placementsGeneratetags' pPgProfileId_ =
    PlacementsGeneratetags'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgTagFormats = Nothing
    , _pgUserIp = Nothing
    , _pgCampaignId = Nothing
    , _pgProfileId = pPgProfileId_
    , _pgKey = Nothing
    , _pgPlacementIds = Nothing
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PlacementsGeneratetags' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PlacementsGeneratetags' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | Tag formats to generate for these placements.
pgTagFormats :: Lens' PlacementsGeneratetags' (Maybe PlacementsGeneratetags'TagFormats)
pgTagFormats
  = lens _pgTagFormats (\ s a -> s{_pgTagFormats = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PlacementsGeneratetags' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | Generate placements belonging to this campaign. This is a required
-- field.
pgCampaignId :: Lens' PlacementsGeneratetags' (Maybe Int64)
pgCampaignId
  = lens _pgCampaignId (\ s a -> s{_pgCampaignId = a})

-- | User profile ID associated with this request.
pgProfileId :: Lens' PlacementsGeneratetags' Int64
pgProfileId
  = lens _pgProfileId (\ s a -> s{_pgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PlacementsGeneratetags' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | Generate tags for these placements.
pgPlacementIds :: Lens' PlacementsGeneratetags' (Maybe Int64)
pgPlacementIds
  = lens _pgPlacementIds
      (\ s a -> s{_pgPlacementIds = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PlacementsGeneratetags' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PlacementsGeneratetags' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PlacementsGeneratetags' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PlacementsGeneratetags' where
        type Rs PlacementsGeneratetags' =
             PlacementsGenerateTagsResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsGeneratetags'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint) _pgTagFormats
              _pgUserIp
              _pgCampaignId
              _pgProfileId
              _pgKey
              _pgPlacementIds
              _pgOauthToken
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsGeneratetagsAPI)
                      r
                      u
