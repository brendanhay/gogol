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
-- Module      : Network.Google.Resource.DFAReporting.DimensionValues.Query
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of report dimension values for a list of filters.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dimensionValues.query@.
module Network.Google.Resource.DFAReporting.DimensionValues.Query
    (
    -- * REST Resource
      DimensionValuesQueryResource

    -- * Creating a Request
    , dimensionValuesQuery
    , DimensionValuesQuery

    -- * Request Lenses
    , dvqXgafv
    , dvqUploadProtocol
    , dvqAccessToken
    , dvqUploadType
    , dvqProFileId
    , dvqPayload
    , dvqPageToken
    , dvqMaxResults
    , dvqCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.dimensionValues.query@ method which the
-- 'DimensionValuesQuery' request conforms to.
type DimensionValuesQueryResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dimensionvalues" :>
               "query" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] DimensionValueRequest :>
                                   Post '[JSON] DimensionValueList

-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ 'dimensionValuesQuery' smart constructor.
data DimensionValuesQuery =
  DimensionValuesQuery'
    { _dvqXgafv :: !(Maybe Xgafv)
    , _dvqUploadProtocol :: !(Maybe Text)
    , _dvqAccessToken :: !(Maybe Text)
    , _dvqUploadType :: !(Maybe Text)
    , _dvqProFileId :: !(Textual Int64)
    , _dvqPayload :: !DimensionValueRequest
    , _dvqPageToken :: !(Maybe Text)
    , _dvqMaxResults :: !(Textual Int32)
    , _dvqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionValuesQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvqXgafv'
--
-- * 'dvqUploadProtocol'
--
-- * 'dvqAccessToken'
--
-- * 'dvqUploadType'
--
-- * 'dvqProFileId'
--
-- * 'dvqPayload'
--
-- * 'dvqPageToken'
--
-- * 'dvqMaxResults'
--
-- * 'dvqCallback'
dimensionValuesQuery
    :: Int64 -- ^ 'dvqProFileId'
    -> DimensionValueRequest -- ^ 'dvqPayload'
    -> DimensionValuesQuery
dimensionValuesQuery pDvqProFileId_ pDvqPayload_ =
  DimensionValuesQuery'
    { _dvqXgafv = Nothing
    , _dvqUploadProtocol = Nothing
    , _dvqAccessToken = Nothing
    , _dvqUploadType = Nothing
    , _dvqProFileId = _Coerce # pDvqProFileId_
    , _dvqPayload = pDvqPayload_
    , _dvqPageToken = Nothing
    , _dvqMaxResults = 100
    , _dvqCallback = Nothing
    }


-- | V1 error format.
dvqXgafv :: Lens' DimensionValuesQuery (Maybe Xgafv)
dvqXgafv = lens _dvqXgafv (\ s a -> s{_dvqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dvqUploadProtocol :: Lens' DimensionValuesQuery (Maybe Text)
dvqUploadProtocol
  = lens _dvqUploadProtocol
      (\ s a -> s{_dvqUploadProtocol = a})

-- | OAuth access token.
dvqAccessToken :: Lens' DimensionValuesQuery (Maybe Text)
dvqAccessToken
  = lens _dvqAccessToken
      (\ s a -> s{_dvqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dvqUploadType :: Lens' DimensionValuesQuery (Maybe Text)
dvqUploadType
  = lens _dvqUploadType
      (\ s a -> s{_dvqUploadType = a})

-- | The Campaign Manager 360 user profile ID.
dvqProFileId :: Lens' DimensionValuesQuery Int64
dvqProFileId
  = lens _dvqProFileId (\ s a -> s{_dvqProFileId = a})
      . _Coerce

-- | Multipart request metadata.
dvqPayload :: Lens' DimensionValuesQuery DimensionValueRequest
dvqPayload
  = lens _dvqPayload (\ s a -> s{_dvqPayload = a})

-- | The value of the nextToken from the previous result page.
dvqPageToken :: Lens' DimensionValuesQuery (Maybe Text)
dvqPageToken
  = lens _dvqPageToken (\ s a -> s{_dvqPageToken = a})

-- | Maximum number of results to return.
dvqMaxResults :: Lens' DimensionValuesQuery Int32
dvqMaxResults
  = lens _dvqMaxResults
      (\ s a -> s{_dvqMaxResults = a})
      . _Coerce

-- | JSONP
dvqCallback :: Lens' DimensionValuesQuery (Maybe Text)
dvqCallback
  = lens _dvqCallback (\ s a -> s{_dvqCallback = a})

instance GoogleRequest DimensionValuesQuery where
        type Rs DimensionValuesQuery = DimensionValueList
        type Scopes DimensionValuesQuery =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient DimensionValuesQuery'{..}
          = go _dvqProFileId _dvqXgafv _dvqUploadProtocol
              _dvqAccessToken
              _dvqUploadType
              _dvqPageToken
              (Just _dvqMaxResults)
              _dvqCallback
              (Just AltJSON)
              _dvqPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DimensionValuesQueryResource)
                      mempty
