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
-- Module      : Network.Google.Resource.Logging.Locations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.list@.
module Network.Google.Resource.Logging.Locations.List
    (
    -- * REST Resource
      LocationsListResource

    -- * Creating a Request
    , locationsList
    , LocationsList

    -- * Request Lenses
    , llXgafv
    , llUploadProtocol
    , llAccessToken
    , llUploadType
    , llName
    , llFilter
    , llPageToken
    , llPageSize
    , llCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.list@ method which the
-- 'LocationsList' request conforms to.
type LocationsListResource =
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
-- /See:/ 'locationsList' smart constructor.
data LocationsList =
  LocationsList'
    { _llXgafv :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llAccessToken :: !(Maybe Text)
    , _llUploadType :: !(Maybe Text)
    , _llName :: !Text
    , _llFilter :: !(Maybe Text)
    , _llPageToken :: !(Maybe Text)
    , _llPageSize :: !(Maybe (Textual Int32))
    , _llCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llName'
--
-- * 'llFilter'
--
-- * 'llPageToken'
--
-- * 'llPageSize'
--
-- * 'llCallback'
locationsList
    :: Text -- ^ 'llName'
    -> LocationsList
locationsList pLlName_ =
  LocationsList'
    { _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llName = pLlName_
    , _llFilter = Nothing
    , _llPageToken = Nothing
    , _llPageSize = Nothing
    , _llCallback = Nothing
    }


-- | V1 error format.
llXgafv :: Lens' LocationsList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LocationsList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | OAuth access token.
llAccessToken :: Lens' LocationsList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LocationsList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | The resource that owns the locations collection, if applicable.
llName :: Lens' LocationsList Text
llName = lens _llName (\ s a -> s{_llName = a})

-- | A filter to narrow down results to a preferred subset. The filtering
-- language accepts strings like \"displayName=tokyo\", and is documented
-- in more detail in AIP-160 (https:\/\/google.aip.dev\/160).
llFilter :: Lens' LocationsList (Maybe Text)
llFilter = lens _llFilter (\ s a -> s{_llFilter = a})

-- | A page token received from the next_page_token field in the response.
-- Send that page token to receive the subsequent page.
llPageToken :: Lens' LocationsList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The maximum number of results to return. If not set, the service selects
-- a default.
llPageSize :: Lens' LocationsList (Maybe Int32)
llPageSize
  = lens _llPageSize (\ s a -> s{_llPageSize = a}) .
      mapping _Coerce

-- | JSONP
llCallback :: Lens' LocationsList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LocationsList where
        type Rs LocationsList = ListLocationsResponse
        type Scopes LocationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsList'{..}
          = go _llName _llXgafv _llUploadProtocol
              _llAccessToken
              _llUploadType
              _llFilter
              _llPageToken
              _llPageSize
              _llCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy LocationsListResource)
                      mempty
