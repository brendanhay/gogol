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
-- Module      : Network.Google.Resource.CloudAsset.BatchGetAssetsHistory
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch gets the update history of assets that overlap a time window. For
-- RESOURCE content, this API outputs history with asset in both non-delete
-- or deleted status. For IAM_POLICY content, this API outputs history when
-- the asset and its attached IAM POLICY both exist. This can create gaps
-- in the output history. If a specified asset does not exist, this API
-- returns an INVALID_ARGUMENT error.
--
-- /See:/ <https://cloud.google.com/resource-manager/docs/cloud-asset-inventory/quickstart-cloud-asset-inventory Cloud Asset API Reference> for @cloudasset.batchGetAssetsHistory@.
module Network.Google.Resource.CloudAsset.BatchGetAssetsHistory
    (
    -- * REST Resource
      BatchGetAssetsHistoryResource

    -- * Creating a Request
    , batchGetAssetsHistory
    , BatchGetAssetsHistory

    -- * Request Lenses
    , bgahParent
    , bgahXgafv
    , bgahReadTimeWindowEndTime
    , bgahUploadProtocol
    , bgahAccessToken
    , bgahUploadType
    , bgahAssetNames
    , bgahReadTimeWindowStartTime
    , bgahContentType
    , bgahCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.batchGetAssetsHistory@ method which the
-- 'BatchGetAssetsHistory' request conforms to.
type BatchGetAssetsHistoryResource =
     "v1" :>
       CaptureMode "parent" "batchGetAssetsHistory" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "readTimeWindow.endTime" DateTime' :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "assetNames" Text :>
                     QueryParam "readTimeWindow.startTime" DateTime' :>
                       QueryParam "contentType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] BatchGetAssetsHistoryResponse

-- | Batch gets the update history of assets that overlap a time window. For
-- RESOURCE content, this API outputs history with asset in both non-delete
-- or deleted status. For IAM_POLICY content, this API outputs history when
-- the asset and its attached IAM POLICY both exist. This can create gaps
-- in the output history. If a specified asset does not exist, this API
-- returns an INVALID_ARGUMENT error.
--
-- /See:/ 'batchGetAssetsHistory' smart constructor.
data BatchGetAssetsHistory =
  BatchGetAssetsHistory'
    { _bgahParent                  :: !Text
    , _bgahXgafv                   :: !(Maybe Xgafv)
    , _bgahReadTimeWindowEndTime   :: !(Maybe DateTime')
    , _bgahUploadProtocol          :: !(Maybe Text)
    , _bgahAccessToken             :: !(Maybe Text)
    , _bgahUploadType              :: !(Maybe Text)
    , _bgahAssetNames              :: !(Maybe [Text])
    , _bgahReadTimeWindowStartTime :: !(Maybe DateTime')
    , _bgahContentType             :: !(Maybe Text)
    , _bgahCallback                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetAssetsHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgahParent'
--
-- * 'bgahXgafv'
--
-- * 'bgahReadTimeWindowEndTime'
--
-- * 'bgahUploadProtocol'
--
-- * 'bgahAccessToken'
--
-- * 'bgahUploadType'
--
-- * 'bgahAssetNames'
--
-- * 'bgahReadTimeWindowStartTime'
--
-- * 'bgahContentType'
--
-- * 'bgahCallback'
batchGetAssetsHistory
    :: Text -- ^ 'bgahParent'
    -> BatchGetAssetsHistory
batchGetAssetsHistory pBgahParent_ =
  BatchGetAssetsHistory'
    { _bgahParent = pBgahParent_
    , _bgahXgafv = Nothing
    , _bgahReadTimeWindowEndTime = Nothing
    , _bgahUploadProtocol = Nothing
    , _bgahAccessToken = Nothing
    , _bgahUploadType = Nothing
    , _bgahAssetNames = Nothing
    , _bgahReadTimeWindowStartTime = Nothing
    , _bgahContentType = Nothing
    , _bgahCallback = Nothing
    }


-- | Required. The relative name of the root asset. It can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\")\", or a project number (such as
-- \"projects\/12345\").
bgahParent :: Lens' BatchGetAssetsHistory Text
bgahParent
  = lens _bgahParent (\ s a -> s{_bgahParent = a})

-- | V1 error format.
bgahXgafv :: Lens' BatchGetAssetsHistory (Maybe Xgafv)
bgahXgafv
  = lens _bgahXgafv (\ s a -> s{_bgahXgafv = a})

-- | End time of the time window (inclusive). Current timestamp if not
-- specified.
bgahReadTimeWindowEndTime :: Lens' BatchGetAssetsHistory (Maybe UTCTime)
bgahReadTimeWindowEndTime
  = lens _bgahReadTimeWindowEndTime
      (\ s a -> s{_bgahReadTimeWindowEndTime = a})
      . mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgahUploadProtocol :: Lens' BatchGetAssetsHistory (Maybe Text)
bgahUploadProtocol
  = lens _bgahUploadProtocol
      (\ s a -> s{_bgahUploadProtocol = a})

-- | OAuth access token.
bgahAccessToken :: Lens' BatchGetAssetsHistory (Maybe Text)
bgahAccessToken
  = lens _bgahAccessToken
      (\ s a -> s{_bgahAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgahUploadType :: Lens' BatchGetAssetsHistory (Maybe Text)
bgahUploadType
  = lens _bgahUploadType
      (\ s a -> s{_bgahUploadType = a})

-- | A list of the full names of the assets. For example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`.
-- See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- and [Resource Name
-- Format](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-asset-inventory\/resource-name-format)
-- for more info. The request becomes a no-op if the asset name list is
-- empty, and the max size of the asset name list is 100 in one request.
bgahAssetNames :: Lens' BatchGetAssetsHistory [Text]
bgahAssetNames
  = lens _bgahAssetNames
      (\ s a -> s{_bgahAssetNames = a})
      . _Default
      . _Coerce

-- | Start time of the time window (exclusive).
bgahReadTimeWindowStartTime :: Lens' BatchGetAssetsHistory (Maybe UTCTime)
bgahReadTimeWindowStartTime
  = lens _bgahReadTimeWindowStartTime
      (\ s a -> s{_bgahReadTimeWindowStartTime = a})
      . mapping _DateTime

-- | Required. The content type.
bgahContentType :: Lens' BatchGetAssetsHistory (Maybe Text)
bgahContentType
  = lens _bgahContentType
      (\ s a -> s{_bgahContentType = a})

-- | JSONP
bgahCallback :: Lens' BatchGetAssetsHistory (Maybe Text)
bgahCallback
  = lens _bgahCallback (\ s a -> s{_bgahCallback = a})

instance GoogleRequest BatchGetAssetsHistory where
        type Rs BatchGetAssetsHistory =
             BatchGetAssetsHistoryResponse
        type Scopes BatchGetAssetsHistory =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BatchGetAssetsHistory'{..}
          = go _bgahParent _bgahXgafv
              _bgahReadTimeWindowEndTime
              _bgahUploadProtocol
              _bgahAccessToken
              _bgahUploadType
              (_bgahAssetNames ^. _Default)
              _bgahReadTimeWindowStartTime
              _bgahContentType
              _bgahCallback
              (Just AltJSON)
              cloudAssetService
          where go
                  = buildClient
                      (Proxy :: Proxy BatchGetAssetsHistoryResource)
                      mempty
