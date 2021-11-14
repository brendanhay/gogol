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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Views.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.views.patch@.
module Network.Google.Resource.Logging.Locations.Buckets.Views.Patch
    (
    -- * REST Resource
      LocationsBucketsViewsPatchResource

    -- * Creating a Request
    , locationsBucketsViewsPatch
    , LocationsBucketsViewsPatch

    -- * Request Lenses
    , lbvpXgafv
    , lbvpUploadProtocol
    , lbvpUpdateMask
    , lbvpAccessToken
    , lbvpUploadType
    , lbvpPayload
    , lbvpName
    , lbvpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.views.patch@ method which the
-- 'LocationsBucketsViewsPatch' request conforms to.
type LocationsBucketsViewsPatchResource =
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
-- /See:/ 'locationsBucketsViewsPatch' smart constructor.
data LocationsBucketsViewsPatch =
  LocationsBucketsViewsPatch'
    { _lbvpXgafv :: !(Maybe Xgafv)
    , _lbvpUploadProtocol :: !(Maybe Text)
    , _lbvpUpdateMask :: !(Maybe GFieldMask)
    , _lbvpAccessToken :: !(Maybe Text)
    , _lbvpUploadType :: !(Maybe Text)
    , _lbvpPayload :: !LogView
    , _lbvpName :: !Text
    , _lbvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsViewsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbvpXgafv'
--
-- * 'lbvpUploadProtocol'
--
-- * 'lbvpUpdateMask'
--
-- * 'lbvpAccessToken'
--
-- * 'lbvpUploadType'
--
-- * 'lbvpPayload'
--
-- * 'lbvpName'
--
-- * 'lbvpCallback'
locationsBucketsViewsPatch
    :: LogView -- ^ 'lbvpPayload'
    -> Text -- ^ 'lbvpName'
    -> LocationsBucketsViewsPatch
locationsBucketsViewsPatch pLbvpPayload_ pLbvpName_ =
  LocationsBucketsViewsPatch'
    { _lbvpXgafv = Nothing
    , _lbvpUploadProtocol = Nothing
    , _lbvpUpdateMask = Nothing
    , _lbvpAccessToken = Nothing
    , _lbvpUploadType = Nothing
    , _lbvpPayload = pLbvpPayload_
    , _lbvpName = pLbvpName_
    , _lbvpCallback = Nothing
    }


-- | V1 error format.
lbvpXgafv :: Lens' LocationsBucketsViewsPatch (Maybe Xgafv)
lbvpXgafv
  = lens _lbvpXgafv (\ s a -> s{_lbvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbvpUploadProtocol :: Lens' LocationsBucketsViewsPatch (Maybe Text)
lbvpUploadProtocol
  = lens _lbvpUploadProtocol
      (\ s a -> s{_lbvpUploadProtocol = a})

-- | Optional. Field mask that specifies the fields in view that need an
-- update. A field will be overwritten if, and only if, it is in the update
-- mask. name and output only fields cannot be updated.For a detailed
-- FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=filter.
lbvpUpdateMask :: Lens' LocationsBucketsViewsPatch (Maybe GFieldMask)
lbvpUpdateMask
  = lens _lbvpUpdateMask
      (\ s a -> s{_lbvpUpdateMask = a})

-- | OAuth access token.
lbvpAccessToken :: Lens' LocationsBucketsViewsPatch (Maybe Text)
lbvpAccessToken
  = lens _lbvpAccessToken
      (\ s a -> s{_lbvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbvpUploadType :: Lens' LocationsBucketsViewsPatch (Maybe Text)
lbvpUploadType
  = lens _lbvpUploadType
      (\ s a -> s{_lbvpUploadType = a})

-- | Multipart request metadata.
lbvpPayload :: Lens' LocationsBucketsViewsPatch LogView
lbvpPayload
  = lens _lbvpPayload (\ s a -> s{_lbvpPayload = a})

-- | Required. The full resource name of the view to update
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
lbvpName :: Lens' LocationsBucketsViewsPatch Text
lbvpName = lens _lbvpName (\ s a -> s{_lbvpName = a})

-- | JSONP
lbvpCallback :: Lens' LocationsBucketsViewsPatch (Maybe Text)
lbvpCallback
  = lens _lbvpCallback (\ s a -> s{_lbvpCallback = a})

instance GoogleRequest LocationsBucketsViewsPatch
         where
        type Rs LocationsBucketsViewsPatch = LogView
        type Scopes LocationsBucketsViewsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsViewsPatch'{..}
          = go _lbvpName _lbvpXgafv _lbvpUploadProtocol
              _lbvpUpdateMask
              _lbvpAccessToken
              _lbvpUploadType
              _lbvpCallback
              (Just AltJSON)
              _lbvpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsViewsPatchResource)
                      mempty
