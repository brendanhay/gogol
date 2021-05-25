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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.views.patch@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Patch
    (
    -- * REST Resource
      FoldersLocationsBucketsViewsPatchResource

    -- * Creating a Request
    , foldersLocationsBucketsViewsPatch
    , FoldersLocationsBucketsViewsPatch

    -- * Request Lenses
    , flbvpXgafv
    , flbvpUploadProtocol
    , flbvpUpdateMask
    , flbvpAccessToken
    , flbvpUploadType
    , flbvpPayload
    , flbvpName
    , flbvpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.views.patch@ method which the
-- 'FoldersLocationsBucketsViewsPatch' request conforms to.
type FoldersLocationsBucketsViewsPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogView :> Patch '[JSON] LogView

-- | Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ 'foldersLocationsBucketsViewsPatch' smart constructor.
data FoldersLocationsBucketsViewsPatch =
  FoldersLocationsBucketsViewsPatch'
    { _flbvpXgafv :: !(Maybe Xgafv)
    , _flbvpUploadProtocol :: !(Maybe Text)
    , _flbvpUpdateMask :: !(Maybe GFieldMask)
    , _flbvpAccessToken :: !(Maybe Text)
    , _flbvpUploadType :: !(Maybe Text)
    , _flbvpPayload :: !LogView
    , _flbvpName :: !Text
    , _flbvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsViewsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbvpXgafv'
--
-- * 'flbvpUploadProtocol'
--
-- * 'flbvpUpdateMask'
--
-- * 'flbvpAccessToken'
--
-- * 'flbvpUploadType'
--
-- * 'flbvpPayload'
--
-- * 'flbvpName'
--
-- * 'flbvpCallback'
foldersLocationsBucketsViewsPatch
    :: LogView -- ^ 'flbvpPayload'
    -> Text -- ^ 'flbvpName'
    -> FoldersLocationsBucketsViewsPatch
foldersLocationsBucketsViewsPatch pFlbvpPayload_ pFlbvpName_ =
  FoldersLocationsBucketsViewsPatch'
    { _flbvpXgafv = Nothing
    , _flbvpUploadProtocol = Nothing
    , _flbvpUpdateMask = Nothing
    , _flbvpAccessToken = Nothing
    , _flbvpUploadType = Nothing
    , _flbvpPayload = pFlbvpPayload_
    , _flbvpName = pFlbvpName_
    , _flbvpCallback = Nothing
    }


-- | V1 error format.
flbvpXgafv :: Lens' FoldersLocationsBucketsViewsPatch (Maybe Xgafv)
flbvpXgafv
  = lens _flbvpXgafv (\ s a -> s{_flbvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbvpUploadProtocol :: Lens' FoldersLocationsBucketsViewsPatch (Maybe Text)
flbvpUploadProtocol
  = lens _flbvpUploadProtocol
      (\ s a -> s{_flbvpUploadProtocol = a})

-- | Optional. Field mask that specifies the fields in view that need an
-- update. A field will be overwritten if, and only if, it is in the update
-- mask. name and output only fields cannot be updated.For a detailed
-- FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=filter.
flbvpUpdateMask :: Lens' FoldersLocationsBucketsViewsPatch (Maybe GFieldMask)
flbvpUpdateMask
  = lens _flbvpUpdateMask
      (\ s a -> s{_flbvpUpdateMask = a})

-- | OAuth access token.
flbvpAccessToken :: Lens' FoldersLocationsBucketsViewsPatch (Maybe Text)
flbvpAccessToken
  = lens _flbvpAccessToken
      (\ s a -> s{_flbvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbvpUploadType :: Lens' FoldersLocationsBucketsViewsPatch (Maybe Text)
flbvpUploadType
  = lens _flbvpUploadType
      (\ s a -> s{_flbvpUploadType = a})

-- | Multipart request metadata.
flbvpPayload :: Lens' FoldersLocationsBucketsViewsPatch LogView
flbvpPayload
  = lens _flbvpPayload (\ s a -> s{_flbvpPayload = a})

-- | Required. The full resource name of the view to update
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
flbvpName :: Lens' FoldersLocationsBucketsViewsPatch Text
flbvpName
  = lens _flbvpName (\ s a -> s{_flbvpName = a})

-- | JSONP
flbvpCallback :: Lens' FoldersLocationsBucketsViewsPatch (Maybe Text)
flbvpCallback
  = lens _flbvpCallback
      (\ s a -> s{_flbvpCallback = a})

instance GoogleRequest
           FoldersLocationsBucketsViewsPatch
         where
        type Rs FoldersLocationsBucketsViewsPatch = LogView
        type Scopes FoldersLocationsBucketsViewsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsViewsPatch'{..}
          = go _flbvpName _flbvpXgafv _flbvpUploadProtocol
              _flbvpUpdateMask
              _flbvpAccessToken
              _flbvpUploadType
              _flbvpCallback
              (Just AltJSON)
              _flbvpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsViewsPatchResource)
                      mempty
