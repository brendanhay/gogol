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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates tags for a placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placements.generatetags@.
module Network.Google.Resource.DFAReporting.Placements.Generatetags
    (
    -- * REST Resource
      PlacementsGeneratetagsResource

    -- * Creating a Request
    , placementsGeneratetags
    , PlacementsGeneratetags

    -- * Request Lenses
    , pgsXgafv
    , pgsUploadProtocol
    , pgsTagFormats
    , pgsAccessToken
    , pgsUploadType
    , pgsCampaignId
    , pgsProFileId
    , pgsPlacementIds
    , pgsCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.generatetags@ method which the
-- 'PlacementsGeneratetags' request conforms to.
type PlacementsGeneratetagsResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placements" :>
               "generatetags" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParams "tagFormats"
                       PlacementsGeneratetagsTagFormats
                       :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "campaignId" (Textual Int64) :>
                             QueryParams "placementIds" (Textual Int64) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON] PlacementsGenerateTagsResponse

-- | Generates tags for a placement.
--
-- /See:/ 'placementsGeneratetags' smart constructor.
data PlacementsGeneratetags =
  PlacementsGeneratetags'
    { _pgsXgafv :: !(Maybe Xgafv)
    , _pgsUploadProtocol :: !(Maybe Text)
    , _pgsTagFormats :: !(Maybe [PlacementsGeneratetagsTagFormats])
    , _pgsAccessToken :: !(Maybe Text)
    , _pgsUploadType :: !(Maybe Text)
    , _pgsCampaignId :: !(Maybe (Textual Int64))
    , _pgsProFileId :: !(Textual Int64)
    , _pgsPlacementIds :: !(Maybe [Textual Int64])
    , _pgsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementsGeneratetags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsXgafv'
--
-- * 'pgsUploadProtocol'
--
-- * 'pgsTagFormats'
--
-- * 'pgsAccessToken'
--
-- * 'pgsUploadType'
--
-- * 'pgsCampaignId'
--
-- * 'pgsProFileId'
--
-- * 'pgsPlacementIds'
--
-- * 'pgsCallback'
placementsGeneratetags
    :: Int64 -- ^ 'pgsProFileId'
    -> PlacementsGeneratetags
placementsGeneratetags pPgsProFileId_ =
  PlacementsGeneratetags'
    { _pgsXgafv = Nothing
    , _pgsUploadProtocol = Nothing
    , _pgsTagFormats = Nothing
    , _pgsAccessToken = Nothing
    , _pgsUploadType = Nothing
    , _pgsCampaignId = Nothing
    , _pgsProFileId = _Coerce # pPgsProFileId_
    , _pgsPlacementIds = Nothing
    , _pgsCallback = Nothing
    }


-- | V1 error format.
pgsXgafv :: Lens' PlacementsGeneratetags (Maybe Xgafv)
pgsXgafv = lens _pgsXgafv (\ s a -> s{_pgsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgsUploadProtocol :: Lens' PlacementsGeneratetags (Maybe Text)
pgsUploadProtocol
  = lens _pgsUploadProtocol
      (\ s a -> s{_pgsUploadProtocol = a})

-- | Tag formats to generate for these placements. *Note:*
-- PLACEMENT_TAG_STANDARD can only be generated for 1x1 placements.
pgsTagFormats :: Lens' PlacementsGeneratetags [PlacementsGeneratetagsTagFormats]
pgsTagFormats
  = lens _pgsTagFormats
      (\ s a -> s{_pgsTagFormats = a})
      . _Default
      . _Coerce

-- | OAuth access token.
pgsAccessToken :: Lens' PlacementsGeneratetags (Maybe Text)
pgsAccessToken
  = lens _pgsAccessToken
      (\ s a -> s{_pgsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgsUploadType :: Lens' PlacementsGeneratetags (Maybe Text)
pgsUploadType
  = lens _pgsUploadType
      (\ s a -> s{_pgsUploadType = a})

-- | Generate placements belonging to this campaign. This is a required
-- field.
pgsCampaignId :: Lens' PlacementsGeneratetags (Maybe Int64)
pgsCampaignId
  = lens _pgsCampaignId
      (\ s a -> s{_pgsCampaignId = a})
      . mapping _Coerce

-- | User profile ID associated with this request.
pgsProFileId :: Lens' PlacementsGeneratetags Int64
pgsProFileId
  = lens _pgsProFileId (\ s a -> s{_pgsProFileId = a})
      . _Coerce

-- | Generate tags for these placements.
pgsPlacementIds :: Lens' PlacementsGeneratetags [Int64]
pgsPlacementIds
  = lens _pgsPlacementIds
      (\ s a -> s{_pgsPlacementIds = a})
      . _Default
      . _Coerce

-- | JSONP
pgsCallback :: Lens' PlacementsGeneratetags (Maybe Text)
pgsCallback
  = lens _pgsCallback (\ s a -> s{_pgsCallback = a})

instance GoogleRequest PlacementsGeneratetags where
        type Rs PlacementsGeneratetags =
             PlacementsGenerateTagsResponse
        type Scopes PlacementsGeneratetags =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementsGeneratetags'{..}
          = go _pgsProFileId _pgsXgafv _pgsUploadProtocol
              (_pgsTagFormats ^. _Default)
              _pgsAccessToken
              _pgsUploadType
              _pgsCampaignId
              (_pgsPlacementIds ^. _Default)
              _pgsCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsGeneratetagsResource)
                      mempty
