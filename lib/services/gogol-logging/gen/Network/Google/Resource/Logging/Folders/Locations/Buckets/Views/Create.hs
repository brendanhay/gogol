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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.views.create@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Create
    (
    -- * REST Resource
      FoldersLocationsBucketsViewsCreateResource

    -- * Creating a Request
    , foldersLocationsBucketsViewsCreate
    , FoldersLocationsBucketsViewsCreate

    -- * Request Lenses
    , flbvcParent
    , flbvcXgafv
    , flbvcUploadProtocol
    , flbvcViewId
    , flbvcAccessToken
    , flbvcUploadType
    , flbvcPayload
    , flbvcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.views.create@ method which the
-- 'FoldersLocationsBucketsViewsCreate' request conforms to.
type FoldersLocationsBucketsViewsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "views" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "viewId" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogView :> Post '[JSON] LogView

-- | Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ 'foldersLocationsBucketsViewsCreate' smart constructor.
data FoldersLocationsBucketsViewsCreate =
  FoldersLocationsBucketsViewsCreate'
    { _flbvcParent :: !Text
    , _flbvcXgafv :: !(Maybe Xgafv)
    , _flbvcUploadProtocol :: !(Maybe Text)
    , _flbvcViewId :: !(Maybe Text)
    , _flbvcAccessToken :: !(Maybe Text)
    , _flbvcUploadType :: !(Maybe Text)
    , _flbvcPayload :: !LogView
    , _flbvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsViewsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbvcParent'
--
-- * 'flbvcXgafv'
--
-- * 'flbvcUploadProtocol'
--
-- * 'flbvcViewId'
--
-- * 'flbvcAccessToken'
--
-- * 'flbvcUploadType'
--
-- * 'flbvcPayload'
--
-- * 'flbvcCallback'
foldersLocationsBucketsViewsCreate
    :: Text -- ^ 'flbvcParent'
    -> LogView -- ^ 'flbvcPayload'
    -> FoldersLocationsBucketsViewsCreate
foldersLocationsBucketsViewsCreate pFlbvcParent_ pFlbvcPayload_ =
  FoldersLocationsBucketsViewsCreate'
    { _flbvcParent = pFlbvcParent_
    , _flbvcXgafv = Nothing
    , _flbvcUploadProtocol = Nothing
    , _flbvcViewId = Nothing
    , _flbvcAccessToken = Nothing
    , _flbvcUploadType = Nothing
    , _flbvcPayload = pFlbvcPayload_
    , _flbvcCallback = Nothing
    }


-- | Required. The bucket in which to create the view
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-logging-project\/locations\/my-location\/buckets\/my-bucket\"
flbvcParent :: Lens' FoldersLocationsBucketsViewsCreate Text
flbvcParent
  = lens _flbvcParent (\ s a -> s{_flbvcParent = a})

-- | V1 error format.
flbvcXgafv :: Lens' FoldersLocationsBucketsViewsCreate (Maybe Xgafv)
flbvcXgafv
  = lens _flbvcXgafv (\ s a -> s{_flbvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbvcUploadProtocol :: Lens' FoldersLocationsBucketsViewsCreate (Maybe Text)
flbvcUploadProtocol
  = lens _flbvcUploadProtocol
      (\ s a -> s{_flbvcUploadProtocol = a})

-- | Required. The id to use for this view.
flbvcViewId :: Lens' FoldersLocationsBucketsViewsCreate (Maybe Text)
flbvcViewId
  = lens _flbvcViewId (\ s a -> s{_flbvcViewId = a})

-- | OAuth access token.
flbvcAccessToken :: Lens' FoldersLocationsBucketsViewsCreate (Maybe Text)
flbvcAccessToken
  = lens _flbvcAccessToken
      (\ s a -> s{_flbvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbvcUploadType :: Lens' FoldersLocationsBucketsViewsCreate (Maybe Text)
flbvcUploadType
  = lens _flbvcUploadType
      (\ s a -> s{_flbvcUploadType = a})

-- | Multipart request metadata.
flbvcPayload :: Lens' FoldersLocationsBucketsViewsCreate LogView
flbvcPayload
  = lens _flbvcPayload (\ s a -> s{_flbvcPayload = a})

-- | JSONP
flbvcCallback :: Lens' FoldersLocationsBucketsViewsCreate (Maybe Text)
flbvcCallback
  = lens _flbvcCallback
      (\ s a -> s{_flbvcCallback = a})

instance GoogleRequest
           FoldersLocationsBucketsViewsCreate
         where
        type Rs FoldersLocationsBucketsViewsCreate = LogView
        type Scopes FoldersLocationsBucketsViewsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsViewsCreate'{..}
          = go _flbvcParent _flbvcXgafv _flbvcUploadProtocol
              _flbvcViewId
              _flbvcAccessToken
              _flbvcUploadType
              _flbvcCallback
              (Just AltJSON)
              _flbvcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsViewsCreateResource)
                      mempty
