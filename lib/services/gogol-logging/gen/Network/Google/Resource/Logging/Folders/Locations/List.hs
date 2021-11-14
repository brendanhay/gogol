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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.list@.
module Network.Google.Resource.Logging.Folders.Locations.List
    (
    -- * REST Resource
      FoldersLocationsListResource

    -- * Creating a Request
    , foldersLocationsList
    , FoldersLocationsList

    -- * Request Lenses
    , fXgafv
    , fUploadProtocol
    , fAccessToken
    , fUploadType
    , fName
    , fFilter
    , fPageToken
    , fPageSize
    , fCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.list@ method which the
-- 'FoldersLocationsList' request conforms to.
type FoldersLocationsListResource =
     "v2" :>
       Capture "name" Text :>
         "locations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'foldersLocationsList' smart constructor.
data FoldersLocationsList =
  FoldersLocationsList'
    { _fXgafv :: !(Maybe Xgafv)
    , _fUploadProtocol :: !(Maybe Text)
    , _fAccessToken :: !(Maybe Text)
    , _fUploadType :: !(Maybe Text)
    , _fName :: !Text
    , _fFilter :: !(Maybe Text)
    , _fPageToken :: !(Maybe Text)
    , _fPageSize :: !(Maybe (Textual Int32))
    , _fCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fXgafv'
--
-- * 'fUploadProtocol'
--
-- * 'fAccessToken'
--
-- * 'fUploadType'
--
-- * 'fName'
--
-- * 'fFilter'
--
-- * 'fPageToken'
--
-- * 'fPageSize'
--
-- * 'fCallback'
foldersLocationsList
    :: Text -- ^ 'fName'
    -> FoldersLocationsList
foldersLocationsList pFName_ =
  FoldersLocationsList'
    { _fXgafv = Nothing
    , _fUploadProtocol = Nothing
    , _fAccessToken = Nothing
    , _fUploadType = Nothing
    , _fName = pFName_
    , _fFilter = Nothing
    , _fPageToken = Nothing
    , _fPageSize = Nothing
    , _fCallback = Nothing
    }


-- | V1 error format.
fXgafv :: Lens' FoldersLocationsList (Maybe Xgafv)
fXgafv = lens _fXgafv (\ s a -> s{_fXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fUploadProtocol :: Lens' FoldersLocationsList (Maybe Text)
fUploadProtocol
  = lens _fUploadProtocol
      (\ s a -> s{_fUploadProtocol = a})

-- | OAuth access token.
fAccessToken :: Lens' FoldersLocationsList (Maybe Text)
fAccessToken
  = lens _fAccessToken (\ s a -> s{_fAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fUploadType :: Lens' FoldersLocationsList (Maybe Text)
fUploadType
  = lens _fUploadType (\ s a -> s{_fUploadType = a})

-- | The resource that owns the locations collection, if applicable.
fName :: Lens' FoldersLocationsList Text
fName = lens _fName (\ s a -> s{_fName = a})

-- | A filter to narrow down results to a preferred subset. The filtering
-- language accepts strings like \"displayName=tokyo\", and is documented
-- in more detail in AIP-160 (https:\/\/google.aip.dev\/160).
fFilter :: Lens' FoldersLocationsList (Maybe Text)
fFilter = lens _fFilter (\ s a -> s{_fFilter = a})

-- | A page token received from the next_page_token field in the response.
-- Send that page token to receive the subsequent page.
fPageToken :: Lens' FoldersLocationsList (Maybe Text)
fPageToken
  = lens _fPageToken (\ s a -> s{_fPageToken = a})

-- | The maximum number of results to return. If not set, the service selects
-- a default.
fPageSize :: Lens' FoldersLocationsList (Maybe Int32)
fPageSize
  = lens _fPageSize (\ s a -> s{_fPageSize = a}) .
      mapping _Coerce

-- | JSONP
fCallback :: Lens' FoldersLocationsList (Maybe Text)
fCallback
  = lens _fCallback (\ s a -> s{_fCallback = a})

instance GoogleRequest FoldersLocationsList where
        type Rs FoldersLocationsList = ListLocationsResponse
        type Scopes FoldersLocationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsList'{..}
          = go _fName _fXgafv _fUploadProtocol _fAccessToken
              _fUploadType
              _fFilter
              _fPageToken
              _fPageSize
              _fCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLocationsListResource)
                      mempty
