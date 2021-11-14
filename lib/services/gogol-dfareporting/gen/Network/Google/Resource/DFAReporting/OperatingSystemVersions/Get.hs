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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one operating system version by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.operatingSystemVersions.get@.
module Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
    (
    -- * REST Resource
      OperatingSystemVersionsGetResource

    -- * Creating a Request
    , operatingSystemVersionsGet
    , OperatingSystemVersionsGet

    -- * Request Lenses
    , osvgXgafv
    , osvgUploadProtocol
    , osvgAccessToken
    , osvgUploadType
    , osvgProFileId
    , osvgId
    , osvgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystemVersions.get@ method which the
-- 'OperatingSystemVersionsGet' request conforms to.
type OperatingSystemVersionsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystemVersions" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] OperatingSystemVersion

-- | Gets one operating system version by ID.
--
-- /See:/ 'operatingSystemVersionsGet' smart constructor.
data OperatingSystemVersionsGet =
  OperatingSystemVersionsGet'
    { _osvgXgafv :: !(Maybe Xgafv)
    , _osvgUploadProtocol :: !(Maybe Text)
    , _osvgAccessToken :: !(Maybe Text)
    , _osvgUploadType :: !(Maybe Text)
    , _osvgProFileId :: !(Textual Int64)
    , _osvgId :: !(Textual Int64)
    , _osvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperatingSystemVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvgXgafv'
--
-- * 'osvgUploadProtocol'
--
-- * 'osvgAccessToken'
--
-- * 'osvgUploadType'
--
-- * 'osvgProFileId'
--
-- * 'osvgId'
--
-- * 'osvgCallback'
operatingSystemVersionsGet
    :: Int64 -- ^ 'osvgProFileId'
    -> Int64 -- ^ 'osvgId'
    -> OperatingSystemVersionsGet
operatingSystemVersionsGet pOsvgProFileId_ pOsvgId_ =
  OperatingSystemVersionsGet'
    { _osvgXgafv = Nothing
    , _osvgUploadProtocol = Nothing
    , _osvgAccessToken = Nothing
    , _osvgUploadType = Nothing
    , _osvgProFileId = _Coerce # pOsvgProFileId_
    , _osvgId = _Coerce # pOsvgId_
    , _osvgCallback = Nothing
    }


-- | V1 error format.
osvgXgafv :: Lens' OperatingSystemVersionsGet (Maybe Xgafv)
osvgXgafv
  = lens _osvgXgafv (\ s a -> s{_osvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osvgUploadProtocol :: Lens' OperatingSystemVersionsGet (Maybe Text)
osvgUploadProtocol
  = lens _osvgUploadProtocol
      (\ s a -> s{_osvgUploadProtocol = a})

-- | OAuth access token.
osvgAccessToken :: Lens' OperatingSystemVersionsGet (Maybe Text)
osvgAccessToken
  = lens _osvgAccessToken
      (\ s a -> s{_osvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osvgUploadType :: Lens' OperatingSystemVersionsGet (Maybe Text)
osvgUploadType
  = lens _osvgUploadType
      (\ s a -> s{_osvgUploadType = a})

-- | User profile ID associated with this request.
osvgProFileId :: Lens' OperatingSystemVersionsGet Int64
osvgProFileId
  = lens _osvgProFileId
      (\ s a -> s{_osvgProFileId = a})
      . _Coerce

-- | Operating system version ID.
osvgId :: Lens' OperatingSystemVersionsGet Int64
osvgId
  = lens _osvgId (\ s a -> s{_osvgId = a}) . _Coerce

-- | JSONP
osvgCallback :: Lens' OperatingSystemVersionsGet (Maybe Text)
osvgCallback
  = lens _osvgCallback (\ s a -> s{_osvgCallback = a})

instance GoogleRequest OperatingSystemVersionsGet
         where
        type Rs OperatingSystemVersionsGet =
             OperatingSystemVersion
        type Scopes OperatingSystemVersionsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemVersionsGet'{..}
          = go _osvgProFileId _osvgId _osvgXgafv
              _osvgUploadProtocol
              _osvgAccessToken
              _osvgUploadType
              _osvgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemVersionsGetResource)
                      mempty
