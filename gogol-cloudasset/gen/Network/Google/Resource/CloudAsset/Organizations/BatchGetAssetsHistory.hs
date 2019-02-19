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
-- Module      : Network.Google.Resource.CloudAsset.Organizations.BatchGetAssetsHistory
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
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference> for @cloudasset.organizations.batchGetAssetsHistory@.
module Network.Google.Resource.CloudAsset.Organizations.BatchGetAssetsHistory
    (
    -- * REST Resource
      OrganizationsBatchGetAssetsHistoryResource

    -- * Creating a Request
    , organizationsBatchGetAssetsHistory
    , OrganizationsBatchGetAssetsHistory

    -- * Request Lenses
    , obgahParent
    , obgahXgafv
    , obgahReadTimeWindowEndTime
    , obgahUploadProtocol
    , obgahAccessToken
    , obgahUploadType
    , obgahAssetNames
    , obgahReadTimeWindowStartTime
    , obgahContentType
    , obgahCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.organizations.batchGetAssetsHistory@ method which the
-- 'OrganizationsBatchGetAssetsHistory' request conforms to.
type OrganizationsBatchGetAssetsHistoryResource =
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
-- in the output history. If a specified asset does not exist, this API
-- returns an INVALID_ARGUMENT error.
--
-- /See:/ 'organizationsBatchGetAssetsHistory' smart constructor.
data OrganizationsBatchGetAssetsHistory =
  OrganizationsBatchGetAssetsHistory'
    { _obgahParent                  :: !Text
    , _obgahXgafv                   :: !(Maybe Xgafv)
    , _obgahReadTimeWindowEndTime   :: !(Maybe DateTime')
    , _obgahUploadProtocol          :: !(Maybe Text)
    , _obgahAccessToken             :: !(Maybe Text)
    , _obgahUploadType              :: !(Maybe Text)
    , _obgahAssetNames              :: !(Maybe [Text])
    , _obgahReadTimeWindowStartTime :: !(Maybe DateTime')
    , _obgahContentType             :: !(Maybe Text)
    , _obgahCallback                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationsBatchGetAssetsHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'obgahParent'
--
-- * 'obgahXgafv'
--
-- * 'obgahReadTimeWindowEndTime'
--
-- * 'obgahUploadProtocol'
--
-- * 'obgahAccessToken'
--
-- * 'obgahUploadType'
--
-- * 'obgahAssetNames'
--
-- * 'obgahReadTimeWindowStartTime'
--
-- * 'obgahContentType'
--
-- * 'obgahCallback'
organizationsBatchGetAssetsHistory
    :: Text -- ^ 'obgahParent'
    -> OrganizationsBatchGetAssetsHistory
organizationsBatchGetAssetsHistory pObgahParent_ =
  OrganizationsBatchGetAssetsHistory'
    { _obgahParent = pObgahParent_
    , _obgahXgafv = Nothing
    , _obgahReadTimeWindowEndTime = Nothing
    , _obgahUploadProtocol = Nothing
    , _obgahAccessToken = Nothing
    , _obgahUploadType = Nothing
    , _obgahAssetNames = Nothing
    , _obgahReadTimeWindowStartTime = Nothing
    , _obgahContentType = Nothing
    , _obgahCallback = Nothing
    }

-- | Required. The relative name of the root asset. It can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\")\", or a project number (such as
-- \"projects\/12345\").
obgahParent :: Lens' OrganizationsBatchGetAssetsHistory Text
obgahParent
  = lens _obgahParent (\ s a -> s{_obgahParent = a})

-- | V1 error format.
obgahXgafv :: Lens' OrganizationsBatchGetAssetsHistory (Maybe Xgafv)
obgahXgafv
  = lens _obgahXgafv (\ s a -> s{_obgahXgafv = a})

-- | End time of the time window (inclusive). Current timestamp if not
-- specified.
obgahReadTimeWindowEndTime :: Lens' OrganizationsBatchGetAssetsHistory (Maybe UTCTime)
obgahReadTimeWindowEndTime
  = lens _obgahReadTimeWindowEndTime
      (\ s a -> s{_obgahReadTimeWindowEndTime = a})
      . mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
obgahUploadProtocol :: Lens' OrganizationsBatchGetAssetsHistory (Maybe Text)
obgahUploadProtocol
  = lens _obgahUploadProtocol
      (\ s a -> s{_obgahUploadProtocol = a})

-- | OAuth access token.
obgahAccessToken :: Lens' OrganizationsBatchGetAssetsHistory (Maybe Text)
obgahAccessToken
  = lens _obgahAccessToken
      (\ s a -> s{_obgahAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
obgahUploadType :: Lens' OrganizationsBatchGetAssetsHistory (Maybe Text)
obgahUploadType
  = lens _obgahUploadType
      (\ s a -> s{_obgahUploadType = a})

-- | A list of the full names of the assets. For example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`.
-- See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more info. The request becomes a no-op if the asset name list is
-- empty, and the max size of the asset name list is 100 in one request.
obgahAssetNames :: Lens' OrganizationsBatchGetAssetsHistory [Text]
obgahAssetNames
  = lens _obgahAssetNames
      (\ s a -> s{_obgahAssetNames = a})
      . _Default
      . _Coerce

-- | Start time of the time window (exclusive).
obgahReadTimeWindowStartTime :: Lens' OrganizationsBatchGetAssetsHistory (Maybe UTCTime)
obgahReadTimeWindowStartTime
  = lens _obgahReadTimeWindowStartTime
      (\ s a -> s{_obgahReadTimeWindowStartTime = a})
      . mapping _DateTime

-- | Required. The content type.
obgahContentType :: Lens' OrganizationsBatchGetAssetsHistory (Maybe Text)
obgahContentType
  = lens _obgahContentType
      (\ s a -> s{_obgahContentType = a})

-- | JSONP
obgahCallback :: Lens' OrganizationsBatchGetAssetsHistory (Maybe Text)
obgahCallback
  = lens _obgahCallback
      (\ s a -> s{_obgahCallback = a})

instance GoogleRequest
           OrganizationsBatchGetAssetsHistory
         where
        type Rs OrganizationsBatchGetAssetsHistory =
             BatchGetAssetsHistoryResponse
        type Scopes OrganizationsBatchGetAssetsHistory =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsBatchGetAssetsHistory'{..}
          = go _obgahParent _obgahXgafv
              _obgahReadTimeWindowEndTime
              _obgahUploadProtocol
              _obgahAccessToken
              _obgahUploadType
              (_obgahAssetNames ^. _Default)
              _obgahReadTimeWindowStartTime
              _obgahContentType
              _obgahCallback
              (Just AltJSON)
              cloudAssetService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsBatchGetAssetsHistoryResource)
                      mempty
