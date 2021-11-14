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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative asset.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeAssets.insert@.
module Network.Google.Resource.DFAReporting.CreativeAssets.Insert
    (
    -- * REST Resource
      CreativeAssetsInsertResource

    -- * Creating a Request
    , creativeAssetsInsert
    , CreativeAssetsInsert

    -- * Request Lenses
    , caiXgafv
    , caiUploadProtocol
    , caiAccessToken
    , caiAdvertiserId
    , caiUploadType
    , caiProFileId
    , caiPayload
    , caiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeAssets.insert@ method which the
-- 'CreativeAssetsInsert' request conforms to.
type CreativeAssetsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeAssets" :>
               Capture "advertiserId" (Textual Int64) :>
                 "creativeAssets" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CreativeAssetMetadata :>
                                 Post '[JSON] CreativeAssetMetadata
       :<|>
       "upload" :>
         "dfareporting" :>
           "v3.5" :>
             "userprofiles" :>
               Capture "profileId" (Textual Int64) :>
                 "creativeAssets" :>
                   Capture "advertiserId" (Textual Int64) :>
                     "creativeAssets" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" Multipart :>
                                     MultipartRelated '[JSON]
                                       CreativeAssetMetadata
                                       :> Post '[JSON] CreativeAssetMetadata

-- | Inserts a new creative asset.
--
-- /See:/ 'creativeAssetsInsert' smart constructor.
data CreativeAssetsInsert =
  CreativeAssetsInsert'
    { _caiXgafv :: !(Maybe Xgafv)
    , _caiUploadProtocol :: !(Maybe Text)
    , _caiAccessToken :: !(Maybe Text)
    , _caiAdvertiserId :: !(Textual Int64)
    , _caiUploadType :: !(Maybe Text)
    , _caiProFileId :: !(Textual Int64)
    , _caiPayload :: !CreativeAssetMetadata
    , _caiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeAssetsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiXgafv'
--
-- * 'caiUploadProtocol'
--
-- * 'caiAccessToken'
--
-- * 'caiAdvertiserId'
--
-- * 'caiUploadType'
--
-- * 'caiProFileId'
--
-- * 'caiPayload'
--
-- * 'caiCallback'
creativeAssetsInsert
    :: Int64 -- ^ 'caiAdvertiserId'
    -> Int64 -- ^ 'caiProFileId'
    -> CreativeAssetMetadata -- ^ 'caiPayload'
    -> CreativeAssetsInsert
creativeAssetsInsert pCaiAdvertiserId_ pCaiProFileId_ pCaiPayload_ =
  CreativeAssetsInsert'
    { _caiXgafv = Nothing
    , _caiUploadProtocol = Nothing
    , _caiAccessToken = Nothing
    , _caiAdvertiserId = _Coerce # pCaiAdvertiserId_
    , _caiUploadType = Nothing
    , _caiProFileId = _Coerce # pCaiProFileId_
    , _caiPayload = pCaiPayload_
    , _caiCallback = Nothing
    }


-- | V1 error format.
caiXgafv :: Lens' CreativeAssetsInsert (Maybe Xgafv)
caiXgafv = lens _caiXgafv (\ s a -> s{_caiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
caiUploadProtocol :: Lens' CreativeAssetsInsert (Maybe Text)
caiUploadProtocol
  = lens _caiUploadProtocol
      (\ s a -> s{_caiUploadProtocol = a})

-- | OAuth access token.
caiAccessToken :: Lens' CreativeAssetsInsert (Maybe Text)
caiAccessToken
  = lens _caiAccessToken
      (\ s a -> s{_caiAccessToken = a})

-- | Advertiser ID of this creative. This is a required field.
caiAdvertiserId :: Lens' CreativeAssetsInsert Int64
caiAdvertiserId
  = lens _caiAdvertiserId
      (\ s a -> s{_caiAdvertiserId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
caiUploadType :: Lens' CreativeAssetsInsert (Maybe Text)
caiUploadType
  = lens _caiUploadType
      (\ s a -> s{_caiUploadType = a})

-- | User profile ID associated with this request.
caiProFileId :: Lens' CreativeAssetsInsert Int64
caiProFileId
  = lens _caiProFileId (\ s a -> s{_caiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
caiPayload :: Lens' CreativeAssetsInsert CreativeAssetMetadata
caiPayload
  = lens _caiPayload (\ s a -> s{_caiPayload = a})

-- | JSONP
caiCallback :: Lens' CreativeAssetsInsert (Maybe Text)
caiCallback
  = lens _caiCallback (\ s a -> s{_caiCallback = a})

instance GoogleRequest CreativeAssetsInsert where
        type Rs CreativeAssetsInsert = CreativeAssetMetadata
        type Scopes CreativeAssetsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeAssetsInsert'{..}
          = go _caiProFileId _caiAdvertiserId _caiXgafv
              _caiUploadProtocol
              _caiAccessToken
              _caiUploadType
              _caiCallback
              (Just AltJSON)
              _caiPayload
              dFAReportingService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      mempty

instance GoogleRequest
           (MediaUpload CreativeAssetsInsert)
         where
        type Rs (MediaUpload CreativeAssetsInsert) =
             CreativeAssetMetadata
        type Scopes (MediaUpload CreativeAssetsInsert) =
             Scopes CreativeAssetsInsert
        requestClient
          (MediaUpload CreativeAssetsInsert'{..} body)
          = go _caiProFileId _caiAdvertiserId _caiXgafv
              _caiUploadProtocol
              _caiAccessToken
              _caiUploadType
              _caiCallback
              (Just AltJSON)
              (Just Multipart)
              _caiPayload
              body
              dFAReportingService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      mempty
