{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , pTagFormats
    , pCampaignId
    , pProFileId
    , pPlacementIds
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsGeneratetags@ method which the
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
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] PlacementsGenerateTagsResponse

-- | Generates tags for a placement.
--
-- /See:/ 'placementsGeneratetags'' smart constructor.
data PlacementsGeneratetags' = PlacementsGeneratetags'
    { _pTagFormats   :: !(Maybe [PlacementsGeneratetagsTagFormats])
    , _pCampaignId   :: !(Maybe Int64)
    , _pProFileId    :: !Int64
    , _pPlacementIds :: !(Maybe [Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGeneratetags'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pTagFormats'
--
-- * 'pCampaignId'
--
-- * 'pProFileId'
--
-- * 'pPlacementIds'
placementsGeneratetags'
    :: Int64 -- ^ 'profileId'
    -> PlacementsGeneratetags'
placementsGeneratetags' pPProFileId_ =
    PlacementsGeneratetags'
    { _pTagFormats = Nothing
    , _pCampaignId = Nothing
    , _pProFileId = pPProFileId_
    , _pPlacementIds = Nothing
    }

-- | Tag formats to generate for these placements.
pTagFormats :: Lens' PlacementsGeneratetags' [PlacementsGeneratetagsTagFormats]
pTagFormats
  = lens _pTagFormats (\ s a -> s{_pTagFormats = a}) .
      _Default
      . _Coerce

-- | Generate placements belonging to this campaign. This is a required
-- field.
pCampaignId :: Lens' PlacementsGeneratetags' (Maybe Int64)
pCampaignId
  = lens _pCampaignId (\ s a -> s{_pCampaignId = a})

-- | User profile ID associated with this request.
pProFileId :: Lens' PlacementsGeneratetags' Int64
pProFileId
  = lens _pProFileId (\ s a -> s{_pProFileId = a})

-- | Generate tags for these placements.
pPlacementIds :: Lens' PlacementsGeneratetags' [Int64]
pPlacementIds
  = lens _pPlacementIds
      (\ s a -> s{_pPlacementIds = a})
      . _Default
      . _Coerce

instance GoogleRequest PlacementsGeneratetags' where
        type Rs PlacementsGeneratetags' =
             PlacementsGenerateTagsResponse
        requestClient PlacementsGeneratetags'{..}
          = go _pProFileId (_pTagFormats ^. _Default)
              _pCampaignId
              (_pPlacementIds ^. _Default)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsGeneratetagsResource)
                      mempty
