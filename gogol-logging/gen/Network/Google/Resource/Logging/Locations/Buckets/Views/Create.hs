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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Views.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.views.create@.
module Network.Google.Resource.Logging.Locations.Buckets.Views.Create
    (
    -- * REST Resource
      LocationsBucketsViewsCreateResource

    -- * Creating a Request
    , locationsBucketsViewsCreate
    , LocationsBucketsViewsCreate

    -- * Request Lenses
    , lbvcParent
    , lbvcXgafv
    , lbvcUploadProtocol
    , lbvcViewId
    , lbvcAccessToken
    , lbvcUploadType
    , lbvcPayload
    , lbvcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.views.create@ method which the
-- 'LocationsBucketsViewsCreate' request conforms to.
type LocationsBucketsViewsCreateResource =
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
-- /See:/ 'locationsBucketsViewsCreate' smart constructor.
data LocationsBucketsViewsCreate =
  LocationsBucketsViewsCreate'
    { _lbvcParent :: !Text
    , _lbvcXgafv :: !(Maybe Xgafv)
    , _lbvcUploadProtocol :: !(Maybe Text)
    , _lbvcViewId :: !(Maybe Text)
    , _lbvcAccessToken :: !(Maybe Text)
    , _lbvcUploadType :: !(Maybe Text)
    , _lbvcPayload :: !LogView
    , _lbvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsViewsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbvcParent'
--
-- * 'lbvcXgafv'
--
-- * 'lbvcUploadProtocol'
--
-- * 'lbvcViewId'
--
-- * 'lbvcAccessToken'
--
-- * 'lbvcUploadType'
--
-- * 'lbvcPayload'
--
-- * 'lbvcCallback'
locationsBucketsViewsCreate
    :: Text -- ^ 'lbvcParent'
    -> LogView -- ^ 'lbvcPayload'
    -> LocationsBucketsViewsCreate
locationsBucketsViewsCreate pLbvcParent_ pLbvcPayload_ =
  LocationsBucketsViewsCreate'
    { _lbvcParent = pLbvcParent_
    , _lbvcXgafv = Nothing
    , _lbvcUploadProtocol = Nothing
    , _lbvcViewId = Nothing
    , _lbvcAccessToken = Nothing
    , _lbvcUploadType = Nothing
    , _lbvcPayload = pLbvcPayload_
    , _lbvcCallback = Nothing
    }


-- | Required. The bucket in which to create the view
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-logging-project\/locations\/my-location\/buckets\/my-bucket\"
lbvcParent :: Lens' LocationsBucketsViewsCreate Text
lbvcParent
  = lens _lbvcParent (\ s a -> s{_lbvcParent = a})

-- | V1 error format.
lbvcXgafv :: Lens' LocationsBucketsViewsCreate (Maybe Xgafv)
lbvcXgafv
  = lens _lbvcXgafv (\ s a -> s{_lbvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbvcUploadProtocol :: Lens' LocationsBucketsViewsCreate (Maybe Text)
lbvcUploadProtocol
  = lens _lbvcUploadProtocol
      (\ s a -> s{_lbvcUploadProtocol = a})

-- | Required. The id to use for this view.
lbvcViewId :: Lens' LocationsBucketsViewsCreate (Maybe Text)
lbvcViewId
  = lens _lbvcViewId (\ s a -> s{_lbvcViewId = a})

-- | OAuth access token.
lbvcAccessToken :: Lens' LocationsBucketsViewsCreate (Maybe Text)
lbvcAccessToken
  = lens _lbvcAccessToken
      (\ s a -> s{_lbvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbvcUploadType :: Lens' LocationsBucketsViewsCreate (Maybe Text)
lbvcUploadType
  = lens _lbvcUploadType
      (\ s a -> s{_lbvcUploadType = a})

-- | Multipart request metadata.
lbvcPayload :: Lens' LocationsBucketsViewsCreate LogView
lbvcPayload
  = lens _lbvcPayload (\ s a -> s{_lbvcPayload = a})

-- | JSONP
lbvcCallback :: Lens' LocationsBucketsViewsCreate (Maybe Text)
lbvcCallback
  = lens _lbvcCallback (\ s a -> s{_lbvcCallback = a})

instance GoogleRequest LocationsBucketsViewsCreate
         where
        type Rs LocationsBucketsViewsCreate = LogView
        type Scopes LocationsBucketsViewsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsViewsCreate'{..}
          = go _lbvcParent _lbvcXgafv _lbvcUploadProtocol
              _lbvcViewId
              _lbvcAccessToken
              _lbvcUploadType
              _lbvcCallback
              (Just AltJSON)
              _lbvcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsViewsCreateResource)
                      mempty
