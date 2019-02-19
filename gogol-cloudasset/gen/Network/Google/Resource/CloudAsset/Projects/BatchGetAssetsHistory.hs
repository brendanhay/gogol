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
-- Module      : Network.Google.Resource.CloudAsset.Projects.BatchGetAssetsHistory
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
-- in the output history.
--
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference> for @cloudasset.projects.batchGetAssetsHistory@.
module Network.Google.Resource.CloudAsset.Projects.BatchGetAssetsHistory
    (
    -- * REST Resource
      ProjectsBatchGetAssetsHistoryResource

    -- * Creating a Request
    , projectsBatchGetAssetsHistory
    , ProjectsBatchGetAssetsHistory

    -- * Request Lenses
    , pbgahParent
    , pbgahXgafv
    , pbgahReadTimeWindowEndTime
    , pbgahUploadProtocol
    , pbgahAccessToken
    , pbgahUploadType
    , pbgahAssetNames
    , pbgahReadTimeWindowStartTime
    , pbgahContentType
    , pbgahCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.projects.batchGetAssetsHistory@ method which the
-- 'ProjectsBatchGetAssetsHistory' request conforms to.
type ProjectsBatchGetAssetsHistoryResource =
     "v1beta1" :>
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
-- in the output history.
--
-- /See:/ 'projectsBatchGetAssetsHistory' smart constructor.
data ProjectsBatchGetAssetsHistory =
  ProjectsBatchGetAssetsHistory'
    { _pbgahParent                  :: !Text
    , _pbgahXgafv                   :: !(Maybe Xgafv)
    , _pbgahReadTimeWindowEndTime   :: !(Maybe DateTime')
    , _pbgahUploadProtocol          :: !(Maybe Text)
    , _pbgahAccessToken             :: !(Maybe Text)
    , _pbgahUploadType              :: !(Maybe Text)
    , _pbgahAssetNames              :: !(Maybe [Text])
    , _pbgahReadTimeWindowStartTime :: !(Maybe DateTime')
    , _pbgahContentType             :: !(Maybe Text)
    , _pbgahCallback                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsBatchGetAssetsHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbgahParent'
--
-- * 'pbgahXgafv'
--
-- * 'pbgahReadTimeWindowEndTime'
--
-- * 'pbgahUploadProtocol'
--
-- * 'pbgahAccessToken'
--
-- * 'pbgahUploadType'
--
-- * 'pbgahAssetNames'
--
-- * 'pbgahReadTimeWindowStartTime'
--
-- * 'pbgahContentType'
--
-- * 'pbgahCallback'
projectsBatchGetAssetsHistory
    :: Text -- ^ 'pbgahParent'
    -> ProjectsBatchGetAssetsHistory
projectsBatchGetAssetsHistory pPbgahParent_ =
  ProjectsBatchGetAssetsHistory'
    { _pbgahParent = pPbgahParent_
    , _pbgahXgafv = Nothing
    , _pbgahReadTimeWindowEndTime = Nothing
    , _pbgahUploadProtocol = Nothing
    , _pbgahAccessToken = Nothing
    , _pbgahUploadType = Nothing
    , _pbgahAssetNames = Nothing
    , _pbgahReadTimeWindowStartTime = Nothing
    , _pbgahContentType = Nothing
    , _pbgahCallback = Nothing
    }

-- | Required. The relative name of the root asset. It can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\")\", or a project number (such as
-- \"projects\/12345\").
pbgahParent :: Lens' ProjectsBatchGetAssetsHistory Text
pbgahParent
  = lens _pbgahParent (\ s a -> s{_pbgahParent = a})

-- | V1 error format.
pbgahXgafv :: Lens' ProjectsBatchGetAssetsHistory (Maybe Xgafv)
pbgahXgafv
  = lens _pbgahXgafv (\ s a -> s{_pbgahXgafv = a})

-- | End time of the time window (inclusive). Current timestamp if not
-- specified.
pbgahReadTimeWindowEndTime :: Lens' ProjectsBatchGetAssetsHistory (Maybe UTCTime)
pbgahReadTimeWindowEndTime
  = lens _pbgahReadTimeWindowEndTime
      (\ s a -> s{_pbgahReadTimeWindowEndTime = a})
      . mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbgahUploadProtocol :: Lens' ProjectsBatchGetAssetsHistory (Maybe Text)
pbgahUploadProtocol
  = lens _pbgahUploadProtocol
      (\ s a -> s{_pbgahUploadProtocol = a})

-- | OAuth access token.
pbgahAccessToken :: Lens' ProjectsBatchGetAssetsHistory (Maybe Text)
pbgahAccessToken
  = lens _pbgahAccessToken
      (\ s a -> s{_pbgahAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbgahUploadType :: Lens' ProjectsBatchGetAssetsHistory (Maybe Text)
pbgahUploadType
  = lens _pbgahUploadType
      (\ s a -> s{_pbgahUploadType = a})

-- | A list of the full names of the assets. For example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`.
-- See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more info. The request becomes a no-op if the asset name list is
-- empty, and the max size of the asset name list is 100 in one request.
pbgahAssetNames :: Lens' ProjectsBatchGetAssetsHistory [Text]
pbgahAssetNames
  = lens _pbgahAssetNames
      (\ s a -> s{_pbgahAssetNames = a})
      . _Default
      . _Coerce

-- | Start time of the time window (exclusive).
pbgahReadTimeWindowStartTime :: Lens' ProjectsBatchGetAssetsHistory (Maybe UTCTime)
pbgahReadTimeWindowStartTime
  = lens _pbgahReadTimeWindowStartTime
      (\ s a -> s{_pbgahReadTimeWindowStartTime = a})
      . mapping _DateTime

-- | Required. The content type.
pbgahContentType :: Lens' ProjectsBatchGetAssetsHistory (Maybe Text)
pbgahContentType
  = lens _pbgahContentType
      (\ s a -> s{_pbgahContentType = a})

-- | JSONP
pbgahCallback :: Lens' ProjectsBatchGetAssetsHistory (Maybe Text)
pbgahCallback
  = lens _pbgahCallback
      (\ s a -> s{_pbgahCallback = a})

instance GoogleRequest ProjectsBatchGetAssetsHistory
         where
        type Rs ProjectsBatchGetAssetsHistory =
             BatchGetAssetsHistoryResponse
        type Scopes ProjectsBatchGetAssetsHistory =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBatchGetAssetsHistory'{..}
          = go _pbgahParent _pbgahXgafv
              _pbgahReadTimeWindowEndTime
              _pbgahUploadProtocol
              _pbgahAccessToken
              _pbgahUploadType
              (_pbgahAssetNames ^. _Default)
              _pbgahReadTimeWindowStartTime
              _pbgahContentType
              _pbgahCallback
              (Just AltJSON)
              cloudAssetService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsBatchGetAssetsHistoryResource)
                      mempty
