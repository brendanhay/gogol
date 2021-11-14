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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of operating system versions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.operatingSystemVersions.list@.
module Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
    (
    -- * REST Resource
      OperatingSystemVersionsListResource

    -- * Creating a Request
    , operatingSystemVersionsList
    , OperatingSystemVersionsList

    -- * Request Lenses
    , osvlXgafv
    , osvlUploadProtocol
    , osvlAccessToken
    , osvlUploadType
    , osvlProFileId
    , osvlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystemVersions.list@ method which the
-- 'OperatingSystemVersionsList' request conforms to.
type OperatingSystemVersionsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystemVersions" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] OperatingSystemVersionsListResponse

-- | Retrieves a list of operating system versions.
--
-- /See:/ 'operatingSystemVersionsList' smart constructor.
data OperatingSystemVersionsList =
  OperatingSystemVersionsList'
    { _osvlXgafv :: !(Maybe Xgafv)
    , _osvlUploadProtocol :: !(Maybe Text)
    , _osvlAccessToken :: !(Maybe Text)
    , _osvlUploadType :: !(Maybe Text)
    , _osvlProFileId :: !(Textual Int64)
    , _osvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperatingSystemVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvlXgafv'
--
-- * 'osvlUploadProtocol'
--
-- * 'osvlAccessToken'
--
-- * 'osvlUploadType'
--
-- * 'osvlProFileId'
--
-- * 'osvlCallback'
operatingSystemVersionsList
    :: Int64 -- ^ 'osvlProFileId'
    -> OperatingSystemVersionsList
operatingSystemVersionsList pOsvlProFileId_ =
  OperatingSystemVersionsList'
    { _osvlXgafv = Nothing
    , _osvlUploadProtocol = Nothing
    , _osvlAccessToken = Nothing
    , _osvlUploadType = Nothing
    , _osvlProFileId = _Coerce # pOsvlProFileId_
    , _osvlCallback = Nothing
    }


-- | V1 error format.
osvlXgafv :: Lens' OperatingSystemVersionsList (Maybe Xgafv)
osvlXgafv
  = lens _osvlXgafv (\ s a -> s{_osvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osvlUploadProtocol :: Lens' OperatingSystemVersionsList (Maybe Text)
osvlUploadProtocol
  = lens _osvlUploadProtocol
      (\ s a -> s{_osvlUploadProtocol = a})

-- | OAuth access token.
osvlAccessToken :: Lens' OperatingSystemVersionsList (Maybe Text)
osvlAccessToken
  = lens _osvlAccessToken
      (\ s a -> s{_osvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osvlUploadType :: Lens' OperatingSystemVersionsList (Maybe Text)
osvlUploadType
  = lens _osvlUploadType
      (\ s a -> s{_osvlUploadType = a})

-- | User profile ID associated with this request.
osvlProFileId :: Lens' OperatingSystemVersionsList Int64
osvlProFileId
  = lens _osvlProFileId
      (\ s a -> s{_osvlProFileId = a})
      . _Coerce

-- | JSONP
osvlCallback :: Lens' OperatingSystemVersionsList (Maybe Text)
osvlCallback
  = lens _osvlCallback (\ s a -> s{_osvlCallback = a})

instance GoogleRequest OperatingSystemVersionsList
         where
        type Rs OperatingSystemVersionsList =
             OperatingSystemVersionsListResponse
        type Scopes OperatingSystemVersionsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemVersionsList'{..}
          = go _osvlProFileId _osvlXgafv _osvlUploadProtocol
              _osvlAccessToken
              _osvlUploadType
              _osvlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemVersionsListResource)
                      mempty
