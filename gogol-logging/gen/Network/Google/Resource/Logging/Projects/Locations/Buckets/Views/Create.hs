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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.views.create@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Create
    (
    -- * REST Resource
      ProjectsLocationsBucketsViewsCreateResource

    -- * Creating a Request
    , projectsLocationsBucketsViewsCreate
    , ProjectsLocationsBucketsViewsCreate

    -- * Request Lenses
    , plbvcParent
    , plbvcXgafv
    , plbvcUploadProtocol
    , plbvcViewId
    , plbvcAccessToken
    , plbvcUploadType
    , plbvcPayload
    , plbvcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.views.create@ method which the
-- 'ProjectsLocationsBucketsViewsCreate' request conforms to.
type ProjectsLocationsBucketsViewsCreateResource =
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
-- /See:/ 'projectsLocationsBucketsViewsCreate' smart constructor.
data ProjectsLocationsBucketsViewsCreate =
  ProjectsLocationsBucketsViewsCreate'
    { _plbvcParent :: !Text
    , _plbvcXgafv :: !(Maybe Xgafv)
    , _plbvcUploadProtocol :: !(Maybe Text)
    , _plbvcViewId :: !(Maybe Text)
    , _plbvcAccessToken :: !(Maybe Text)
    , _plbvcUploadType :: !(Maybe Text)
    , _plbvcPayload :: !LogView
    , _plbvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsViewsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbvcParent'
--
-- * 'plbvcXgafv'
--
-- * 'plbvcUploadProtocol'
--
-- * 'plbvcViewId'
--
-- * 'plbvcAccessToken'
--
-- * 'plbvcUploadType'
--
-- * 'plbvcPayload'
--
-- * 'plbvcCallback'
projectsLocationsBucketsViewsCreate
    :: Text -- ^ 'plbvcParent'
    -> LogView -- ^ 'plbvcPayload'
    -> ProjectsLocationsBucketsViewsCreate
projectsLocationsBucketsViewsCreate pPlbvcParent_ pPlbvcPayload_ =
  ProjectsLocationsBucketsViewsCreate'
    { _plbvcParent = pPlbvcParent_
    , _plbvcXgafv = Nothing
    , _plbvcUploadProtocol = Nothing
    , _plbvcViewId = Nothing
    , _plbvcAccessToken = Nothing
    , _plbvcUploadType = Nothing
    , _plbvcPayload = pPlbvcPayload_
    , _plbvcCallback = Nothing
    }


-- | Required. The bucket in which to create the view
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-logging-project\/locations\/my-location\/buckets\/my-bucket\"
plbvcParent :: Lens' ProjectsLocationsBucketsViewsCreate Text
plbvcParent
  = lens _plbvcParent (\ s a -> s{_plbvcParent = a})

-- | V1 error format.
plbvcXgafv :: Lens' ProjectsLocationsBucketsViewsCreate (Maybe Xgafv)
plbvcXgafv
  = lens _plbvcXgafv (\ s a -> s{_plbvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbvcUploadProtocol :: Lens' ProjectsLocationsBucketsViewsCreate (Maybe Text)
plbvcUploadProtocol
  = lens _plbvcUploadProtocol
      (\ s a -> s{_plbvcUploadProtocol = a})

-- | Required. The id to use for this view.
plbvcViewId :: Lens' ProjectsLocationsBucketsViewsCreate (Maybe Text)
plbvcViewId
  = lens _plbvcViewId (\ s a -> s{_plbvcViewId = a})

-- | OAuth access token.
plbvcAccessToken :: Lens' ProjectsLocationsBucketsViewsCreate (Maybe Text)
plbvcAccessToken
  = lens _plbvcAccessToken
      (\ s a -> s{_plbvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbvcUploadType :: Lens' ProjectsLocationsBucketsViewsCreate (Maybe Text)
plbvcUploadType
  = lens _plbvcUploadType
      (\ s a -> s{_plbvcUploadType = a})

-- | Multipart request metadata.
plbvcPayload :: Lens' ProjectsLocationsBucketsViewsCreate LogView
plbvcPayload
  = lens _plbvcPayload (\ s a -> s{_plbvcPayload = a})

-- | JSONP
plbvcCallback :: Lens' ProjectsLocationsBucketsViewsCreate (Maybe Text)
plbvcCallback
  = lens _plbvcCallback
      (\ s a -> s{_plbvcCallback = a})

instance GoogleRequest
           ProjectsLocationsBucketsViewsCreate
         where
        type Rs ProjectsLocationsBucketsViewsCreate = LogView
        type Scopes ProjectsLocationsBucketsViewsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          ProjectsLocationsBucketsViewsCreate'{..}
          = go _plbvcParent _plbvcXgafv _plbvcUploadProtocol
              _plbvcViewId
              _plbvcAccessToken
              _plbvcUploadType
              _plbvcCallback
              (Just AltJSON)
              _plbvcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsViewsCreateResource)
                      mempty
