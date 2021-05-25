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
-- Module      : Network.Google.Resource.DFAReporting.Regions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of regions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.regions.list@.
module Network.Google.Resource.DFAReporting.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList
    , RegionsList

    -- * Request Lenses
    , rXgafv
    , rUploadProtocol
    , rAccessToken
    , rUploadType
    , rProFileId
    , rCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.regions.list@ method which the
-- 'RegionsList' request conforms to.
type RegionsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "regions" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] RegionsListResponse

-- | Retrieves a list of regions.
--
-- /See:/ 'regionsList' smart constructor.
data RegionsList =
  RegionsList'
    { _rXgafv :: !(Maybe Xgafv)
    , _rUploadProtocol :: !(Maybe Text)
    , _rAccessToken :: !(Maybe Text)
    , _rUploadType :: !(Maybe Text)
    , _rProFileId :: !(Textual Int64)
    , _rCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rXgafv'
--
-- * 'rUploadProtocol'
--
-- * 'rAccessToken'
--
-- * 'rUploadType'
--
-- * 'rProFileId'
--
-- * 'rCallback'
regionsList
    :: Int64 -- ^ 'rProFileId'
    -> RegionsList
regionsList pRProFileId_ =
  RegionsList'
    { _rXgafv = Nothing
    , _rUploadProtocol = Nothing
    , _rAccessToken = Nothing
    , _rUploadType = Nothing
    , _rProFileId = _Coerce # pRProFileId_
    , _rCallback = Nothing
    }


-- | V1 error format.
rXgafv :: Lens' RegionsList (Maybe Xgafv)
rXgafv = lens _rXgafv (\ s a -> s{_rXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rUploadProtocol :: Lens' RegionsList (Maybe Text)
rUploadProtocol
  = lens _rUploadProtocol
      (\ s a -> s{_rUploadProtocol = a})

-- | OAuth access token.
rAccessToken :: Lens' RegionsList (Maybe Text)
rAccessToken
  = lens _rAccessToken (\ s a -> s{_rAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rUploadType :: Lens' RegionsList (Maybe Text)
rUploadType
  = lens _rUploadType (\ s a -> s{_rUploadType = a})

-- | User profile ID associated with this request.
rProFileId :: Lens' RegionsList Int64
rProFileId
  = lens _rProFileId (\ s a -> s{_rProFileId = a}) .
      _Coerce

-- | JSONP
rCallback :: Lens' RegionsList (Maybe Text)
rCallback
  = lens _rCallback (\ s a -> s{_rCallback = a})

instance GoogleRequest RegionsList where
        type Rs RegionsList = RegionsListResponse
        type Scopes RegionsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RegionsList'{..}
          = go _rProFileId _rXgafv _rUploadProtocol
              _rAccessToken
              _rUploadType
              _rCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
