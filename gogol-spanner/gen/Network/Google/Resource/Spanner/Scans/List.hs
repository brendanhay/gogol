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
-- Module      : Network.Google.Resource.Spanner.Scans.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return available scans given a Database-specific resource name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.scans.list@.
module Network.Google.Resource.Spanner.Scans.List
    (
    -- * REST Resource
      ScansListResource

    -- * Creating a Request
    , scansList
    , ScansList

    -- * Request Lenses
    , slParent
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slView
    , slFilter
    , slPageToken
    , slPageSize
    , slCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.scans.list@ method which the
-- 'ScansList' request conforms to.
type ScansListResource =
     "v1" :>
       Capture "parent" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "view" ScansListView :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListScansResponse

-- | Return available scans given a Database-specific resource name.
--
-- /See:/ 'scansList' smart constructor.
data ScansList =
  ScansList'
    { _slParent :: !Text
    , _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slView :: !(Maybe ScansListView)
    , _slFilter :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slPageSize :: !(Maybe (Textual Int32))
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScansList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slParent'
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slView'
--
-- * 'slFilter'
--
-- * 'slPageToken'
--
-- * 'slPageSize'
--
-- * 'slCallback'
scansList
    :: Text -- ^ 'slParent'
    -> ScansList
scansList pSlParent_ =
  ScansList'
    { _slParent = pSlParent_
    , _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slView = Nothing
    , _slFilter = Nothing
    , _slPageToken = Nothing
    , _slPageSize = Nothing
    , _slCallback = Nothing
    }


-- | Required. The unique name of the parent resource, specific to the
-- Database service implementing this interface.
slParent :: Lens' ScansList Text
slParent = lens _slParent (\ s a -> s{_slParent = a})

-- | V1 error format.
slXgafv :: Lens' ScansList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' ScansList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' ScansList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' ScansList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Specifies which parts of the Scan should be returned in the response.
-- Note, only the SUMMARY view (the default) is currently supported for
-- ListScans.
slView :: Lens' ScansList (Maybe ScansListView)
slView = lens _slView (\ s a -> s{_slView = a})

-- | A filter expression to restrict the results based on information present
-- in the available Scan collection. The filter applies to all fields
-- within the Scan message except for \`data\`.
slFilter :: Lens' ScansList (Maybe Text)
slFilter = lens _slFilter (\ s a -> s{_slFilter = a})

-- | The next_page_token value returned from a previous List request, if any.
slPageToken :: Lens' ScansList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | The maximum number of items to return.
slPageSize :: Lens' ScansList (Maybe Int32)
slPageSize
  = lens _slPageSize (\ s a -> s{_slPageSize = a}) .
      mapping _Coerce

-- | JSONP
slCallback :: Lens' ScansList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest ScansList where
        type Rs ScansList = ListScansResponse
        type Scopes ScansList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient ScansList'{..}
          = go _slParent _slXgafv _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slView
              _slFilter
              _slPageToken
              _slPageSize
              _slCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient (Proxy :: Proxy ScansListResource)
                      mempty
