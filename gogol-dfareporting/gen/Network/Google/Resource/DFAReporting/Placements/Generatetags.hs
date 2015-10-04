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
module Network.Google.Resource.DFAReporting.Placements.Generatetags
    (
    -- * REST Resource
      PlacementsGeneratetagsResource

    -- * Creating a Request
    , placementsGeneratetags'
    , PlacementsGeneratetags'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pTagFormats
    , pUserIP
    , pCampaignId
    , pProFileId
    , pKey
    , pPlacementIds
    , pOAuthToken
    , pFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsGeneratetags@ which the
-- 'PlacementsGeneratetags'' request conforms to.
type PlacementsGeneratetagsResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           "generatetags" :>
             QueryParams "tagFormats"
               PlacementsGeneratetagsTagFormats
               :>
               QueryParam "campaignId" Int64 :>
                 QueryParams "placementIds" Int64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] PlacementsGenerateTagsResponse

-- | Generates tags for a placement.
--
-- /See:/ 'placementsGeneratetags'' smart constructor.
data PlacementsGeneratetags' = PlacementsGeneratetags'
    { _pQuotaUser    :: !(Maybe Text)
    , _pPrettyPrint  :: !Bool
    , _pTagFormats   :: !(Maybe [PlacementsGeneratetagsTagFormats])
    , _pUserIP       :: !(Maybe Text)
    , _pCampaignId   :: !(Maybe Int64)
    , _pProFileId    :: !Int64
    , _pKey          :: !(Maybe Key)
    , _pPlacementIds :: !(Maybe [Int64])
    , _pOAuthToken   :: !(Maybe OAuthToken)
    , _pFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pUserIP'
--
-- * 'pCampaignId'
--
-- * 'pProFileId'
--
-- * 'pKey'
--
-- * 'pPlacementIds'
--
-- * 'pOAuthToken'
--
-- * 'pFields'
placementsGeneratetags'
    :: Int64 -- ^ 'profileId'
    -> PlacementsGeneratetags'
placementsGeneratetags' pPProFileId_ =
    PlacementsGeneratetags'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pTagFormats = Nothing
    , _pUserIP = Nothing
    , _pCampaignId = Nothing
    , _pProFileId = pPProFileId_
    , _pKey = Nothing
    , _pPlacementIds = Nothing
    , _pOAuthToken = Nothing
    , _pFields = Nothing
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
pTagFormats :: Lens' PlacementsGeneratetags' [PlacementsGeneratetagsTagFormats]
pTagFormats
  = lens _pTagFormats (\ s a -> s{_pTagFormats = a}) .
      _Default
      . _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIP :: Lens' PlacementsGeneratetags' (Maybe Text)
pUserIP = lens _pUserIP (\ s a -> s{_pUserIP = a})

-- | Generate placements belonging to this campaign. This is a required
-- field.
pCampaignId :: Lens' PlacementsGeneratetags' (Maybe Int64)
pCampaignId
  = lens _pCampaignId (\ s a -> s{_pCampaignId = a})

-- | User profile ID associated with this request.
pProFileId :: Lens' PlacementsGeneratetags' Int64
pProFileId
  = lens _pProFileId (\ s a -> s{_pProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PlacementsGeneratetags' (Maybe Key)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | Generate tags for these placements.
pPlacementIds :: Lens' PlacementsGeneratetags' [Int64]
pPlacementIds
  = lens _pPlacementIds
      (\ s a -> s{_pPlacementIds = a})
      . _Default
      . _Coerce

-- | OAuth 2.0 token for the current user.
pOAuthToken :: Lens' PlacementsGeneratetags' (Maybe OAuthToken)
pOAuthToken
  = lens _pOAuthToken (\ s a -> s{_pOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PlacementsGeneratetags' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

instance GoogleAuth PlacementsGeneratetags' where
        authKey = pKey . _Just
        authToken = pOAuthToken . _Just

instance GoogleRequest PlacementsGeneratetags' where
        type Rs PlacementsGeneratetags' =
             PlacementsGenerateTagsResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsGeneratetags'{..}
          = go _pProFileId (_pTagFormats ^. _Default)
              _pCampaignId
              (_pPlacementIds ^. _Default)
              _pQuotaUser
              (Just _pPrettyPrint)
              _pUserIP
              _pFields
              _pKey
              _pOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsGeneratetagsResource)
                      r
                      u
