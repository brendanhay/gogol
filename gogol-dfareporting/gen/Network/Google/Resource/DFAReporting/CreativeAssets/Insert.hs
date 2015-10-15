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
-- Module      : Network.Google.Resource.DFAReporting.CreativeAssets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative asset.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeAssetsInsert@.
module Network.Google.Resource.DFAReporting.CreativeAssets.Insert
    (
    -- * REST Resource
      CreativeAssetsInsertResource

    -- * Creating a Request
    , creativeAssetsInsert'
    , CreativeAssetsInsert'

    -- * Request Lenses
    , caiAdvertiserId
    , caiProFileId
    , caiPayload
    , caiMedia
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeAssetsInsert@ method which the
-- 'CreativeAssetsInsert'' request conforms to.
type CreativeAssetsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeAssets" :>
           Capture "advertiserId" Int64 :>
             "creativeAssets" :>
               QueryParam "alt" AltJSON :>
                 MultipartRelated '[JSON] CreativeAssetMetadata Body
                   :> Post '[JSON] CreativeAssetMetadata

-- | Inserts a new creative asset.
--
-- /See:/ 'creativeAssetsInsert'' smart constructor.
data CreativeAssetsInsert' = CreativeAssetsInsert'
    { _caiAdvertiserId :: !Int64
    , _caiProFileId    :: !Int64
    , _caiPayload      :: !CreativeAssetMetadata
    , _caiMedia        :: !Body
    }

-- | Creates a value of 'CreativeAssetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiAdvertiserId'
--
-- * 'caiProFileId'
--
-- * 'caiPayload'
--
-- * 'caiMedia'
creativeAssetsInsert'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> CreativeAssetMetadata -- ^ 'payload'
    -> Body -- ^ 'media'
    -> CreativeAssetsInsert'
creativeAssetsInsert' pCaiAdvertiserId_ pCaiProFileId_ pCaiPayload_ pCaiMedia_ =
    CreativeAssetsInsert'
    { _caiAdvertiserId = pCaiAdvertiserId_
    , _caiProFileId = pCaiProFileId_
    , _caiPayload = pCaiPayload_
    , _caiMedia = pCaiMedia_
    }

-- | Advertiser ID of this creative. This is a required field.
caiAdvertiserId :: Lens' CreativeAssetsInsert' Int64
caiAdvertiserId
  = lens _caiAdvertiserId
      (\ s a -> s{_caiAdvertiserId = a})

-- | User profile ID associated with this request.
caiProFileId :: Lens' CreativeAssetsInsert' Int64
caiProFileId
  = lens _caiProFileId (\ s a -> s{_caiProFileId = a})

-- | Multipart request metadata.
caiPayload :: Lens' CreativeAssetsInsert' CreativeAssetMetadata
caiPayload
  = lens _caiPayload (\ s a -> s{_caiPayload = a})

caiMedia :: Lens' CreativeAssetsInsert' Body
caiMedia = lens _caiMedia (\ s a -> s{_caiMedia = a})

instance GoogleRequest CreativeAssetsInsert' where
        type Rs CreativeAssetsInsert' = CreativeAssetMetadata
        requestClient CreativeAssetsInsert'{..}
          = go _caiProFileId _caiAdvertiserId (Just AltJSON)
              _caiPayload
              _caiMedia
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      mempty
