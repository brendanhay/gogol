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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.views.patch@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Patch
    (
    -- * REST Resource
      ProjectsLocationsBucketsViewsPatchResource

    -- * Creating a Request
    , projectsLocationsBucketsViewsPatch
    , ProjectsLocationsBucketsViewsPatch

    -- * Request Lenses
    , plbvpXgafv
    , plbvpUploadProtocol
    , plbvpUpdateMask
    , plbvpAccessToken
    , plbvpUploadType
    , plbvpPayload
    , plbvpName
    , plbvpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.views.patch@ method which the
-- 'ProjectsLocationsBucketsViewsPatch' request conforms to.
type ProjectsLocationsBucketsViewsPatchResource =
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
-- /See:/ 'projectsLocationsBucketsViewsPatch' smart constructor.
data ProjectsLocationsBucketsViewsPatch =
  ProjectsLocationsBucketsViewsPatch'
    { _plbvpXgafv :: !(Maybe Xgafv)
    , _plbvpUploadProtocol :: !(Maybe Text)
    , _plbvpUpdateMask :: !(Maybe GFieldMask)
    , _plbvpAccessToken :: !(Maybe Text)
    , _plbvpUploadType :: !(Maybe Text)
    , _plbvpPayload :: !LogView
    , _plbvpName :: !Text
    , _plbvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsViewsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbvpXgafv'
--
-- * 'plbvpUploadProtocol'
--
-- * 'plbvpUpdateMask'
--
-- * 'plbvpAccessToken'
--
-- * 'plbvpUploadType'
--
-- * 'plbvpPayload'
--
-- * 'plbvpName'
--
-- * 'plbvpCallback'
projectsLocationsBucketsViewsPatch
    :: LogView -- ^ 'plbvpPayload'
    -> Text -- ^ 'plbvpName'
    -> ProjectsLocationsBucketsViewsPatch
projectsLocationsBucketsViewsPatch pPlbvpPayload_ pPlbvpName_ =
  ProjectsLocationsBucketsViewsPatch'
    { _plbvpXgafv = Nothing
    , _plbvpUploadProtocol = Nothing
    , _plbvpUpdateMask = Nothing
    , _plbvpAccessToken = Nothing
    , _plbvpUploadType = Nothing
    , _plbvpPayload = pPlbvpPayload_
    , _plbvpName = pPlbvpName_
    , _plbvpCallback = Nothing
    }


-- | V1 error format.
plbvpXgafv :: Lens' ProjectsLocationsBucketsViewsPatch (Maybe Xgafv)
plbvpXgafv
  = lens _plbvpXgafv (\ s a -> s{_plbvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbvpUploadProtocol :: Lens' ProjectsLocationsBucketsViewsPatch (Maybe Text)
plbvpUploadProtocol
  = lens _plbvpUploadProtocol
      (\ s a -> s{_plbvpUploadProtocol = a})

-- | Optional. Field mask that specifies the fields in view that need an
-- update. A field will be overwritten if, and only if, it is in the update
-- mask. name and output only fields cannot be updated.For a detailed
-- FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=filter.
plbvpUpdateMask :: Lens' ProjectsLocationsBucketsViewsPatch (Maybe GFieldMask)
plbvpUpdateMask
  = lens _plbvpUpdateMask
      (\ s a -> s{_plbvpUpdateMask = a})

-- | OAuth access token.
plbvpAccessToken :: Lens' ProjectsLocationsBucketsViewsPatch (Maybe Text)
plbvpAccessToken
  = lens _plbvpAccessToken
      (\ s a -> s{_plbvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbvpUploadType :: Lens' ProjectsLocationsBucketsViewsPatch (Maybe Text)
plbvpUploadType
  = lens _plbvpUploadType
      (\ s a -> s{_plbvpUploadType = a})

-- | Multipart request metadata.
plbvpPayload :: Lens' ProjectsLocationsBucketsViewsPatch LogView
plbvpPayload
  = lens _plbvpPayload (\ s a -> s{_plbvpPayload = a})

-- | Required. The full resource name of the view to update
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
plbvpName :: Lens' ProjectsLocationsBucketsViewsPatch Text
plbvpName
  = lens _plbvpName (\ s a -> s{_plbvpName = a})

-- | JSONP
plbvpCallback :: Lens' ProjectsLocationsBucketsViewsPatch (Maybe Text)
plbvpCallback
  = lens _plbvpCallback
      (\ s a -> s{_plbvpCallback = a})

instance GoogleRequest
           ProjectsLocationsBucketsViewsPatch
         where
        type Rs ProjectsLocationsBucketsViewsPatch = LogView
        type Scopes ProjectsLocationsBucketsViewsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsLocationsBucketsViewsPatch'{..}
          = go _plbvpName _plbvpXgafv _plbvpUploadProtocol
              _plbvpUpdateMask
              _plbvpAccessToken
              _plbvpUploadType
              _plbvpCallback
              (Just AltJSON)
              _plbvpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsViewsPatchResource)
                      mempty
