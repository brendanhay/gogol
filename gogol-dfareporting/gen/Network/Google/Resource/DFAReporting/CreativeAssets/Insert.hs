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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative asset.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeAssets.insert@.
module Network.Google.Resource.DFAReporting.CreativeAssets.Insert
    (
    -- * REST Resource
      CreativeAssetsInsertResource

    -- * Creating a Request
    , creativeAssetsInsert
    , CreativeAssetsInsert

    -- * Request Lenses
    , caiAdvertiserId
    , caiProFileId
    , caiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeAssets.insert@ method which the
-- 'CreativeAssetsInsert' request conforms to.
type CreativeAssetsInsertResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeAssets" :>
               Capture "advertiserId" (Textual Int64) :>
                 "creativeAssets" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CreativeAssetMetadata :>
                       Post '[JSON] CreativeAssetMetadata
       :<|>
       "upload" :>
         "dfareporting" :>
           "v2.4" :>
             "userprofiles" :>
               Capture "profileId" (Textual Int64) :>
                 "creativeAssets" :>
                   Capture "advertiserId" (Textual Int64) :>
                     "creativeAssets" :>
                       QueryParam "alt" AltJSON :>
                         QueryParam "uploadType" AltMedia :>
                           MultipartRelated '[JSON] CreativeAssetMetadata
                             RequestBody
                             :> Post '[JSON] CreativeAssetMetadata

-- | Inserts a new creative asset.
--
-- /See:/ 'creativeAssetsInsert' smart constructor.
data CreativeAssetsInsert = CreativeAssetsInsert'
    { _caiAdvertiserId :: !(Textual Int64)
    , _caiProFileId    :: !(Textual Int64)
    , _caiPayload      :: !CreativeAssetMetadata
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAssetsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiAdvertiserId'
--
-- * 'caiProFileId'
--
-- * 'caiPayload'
creativeAssetsInsert
    :: Int64 -- ^ 'caiAdvertiserId'
    -> Int64 -- ^ 'caiProFileId'
    -> CreativeAssetMetadata -- ^ 'caiPayload'
    -> CreativeAssetsInsert
creativeAssetsInsert pCaiAdvertiserId_ pCaiProFileId_ pCaiPayload_ =
    CreativeAssetsInsert'
    { _caiAdvertiserId = _Coerce # pCaiAdvertiserId_
    , _caiProFileId = _Coerce # pCaiProFileId_
    , _caiPayload = pCaiPayload_
    }

-- | Advertiser ID of this creative. This is a required field.
caiAdvertiserId :: Lens' CreativeAssetsInsert Int64
caiAdvertiserId
  = lens _caiAdvertiserId
      (\ s a -> s{_caiAdvertiserId = a})
      . _Coerce

-- | User profile ID associated with this request.
caiProFileId :: Lens' CreativeAssetsInsert Int64
caiProFileId
  = lens _caiProFileId (\ s a -> s{_caiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
caiPayload :: Lens' CreativeAssetsInsert CreativeAssetMetadata
caiPayload
  = lens _caiPayload (\ s a -> s{_caiPayload = a})

instance GoogleRequest CreativeAssetsInsert where
        type Rs CreativeAssetsInsert = CreativeAssetMetadata
        type Scopes CreativeAssetsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeAssetsInsert'{..}
          = go _caiProFileId _caiAdvertiserId (Just AltJSON)
              _caiPayload
              dFAReportingService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      mempty

instance GoogleRequest
         (MediaUpload CreativeAssetsInsert) where
        type Rs (MediaUpload CreativeAssetsInsert) =
             CreativeAssetMetadata
        type Scopes (MediaUpload CreativeAssetsInsert) =
             Scopes CreativeAssetsInsert
        requestClient
          (MediaUpload CreativeAssetsInsert'{..} body)
          = go _caiProFileId _caiAdvertiserId (Just AltJSON)
              (Just AltMedia)
              _caiPayload
              body
              dFAReportingService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      mempty
