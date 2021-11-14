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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystems.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of operating systems.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.operatingSystems.list@.
module Network.Google.Resource.DFAReporting.OperatingSystems.List
    (
    -- * REST Resource
      OperatingSystemsListResource

    -- * Creating a Request
    , operatingSystemsList
    , OperatingSystemsList

    -- * Request Lenses
    , oslXgafv
    , oslUploadProtocol
    , oslAccessToken
    , oslUploadType
    , oslProFileId
    , oslCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystems.list@ method which the
-- 'OperatingSystemsList' request conforms to.
type OperatingSystemsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystems" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] OperatingSystemsListResponse

-- | Retrieves a list of operating systems.
--
-- /See:/ 'operatingSystemsList' smart constructor.
data OperatingSystemsList =
  OperatingSystemsList'
    { _oslXgafv :: !(Maybe Xgafv)
    , _oslUploadProtocol :: !(Maybe Text)
    , _oslAccessToken :: !(Maybe Text)
    , _oslUploadType :: !(Maybe Text)
    , _oslProFileId :: !(Textual Int64)
    , _oslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperatingSystemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslXgafv'
--
-- * 'oslUploadProtocol'
--
-- * 'oslAccessToken'
--
-- * 'oslUploadType'
--
-- * 'oslProFileId'
--
-- * 'oslCallback'
operatingSystemsList
    :: Int64 -- ^ 'oslProFileId'
    -> OperatingSystemsList
operatingSystemsList pOslProFileId_ =
  OperatingSystemsList'
    { _oslXgafv = Nothing
    , _oslUploadProtocol = Nothing
    , _oslAccessToken = Nothing
    , _oslUploadType = Nothing
    , _oslProFileId = _Coerce # pOslProFileId_
    , _oslCallback = Nothing
    }


-- | V1 error format.
oslXgafv :: Lens' OperatingSystemsList (Maybe Xgafv)
oslXgafv = lens _oslXgafv (\ s a -> s{_oslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oslUploadProtocol :: Lens' OperatingSystemsList (Maybe Text)
oslUploadProtocol
  = lens _oslUploadProtocol
      (\ s a -> s{_oslUploadProtocol = a})

-- | OAuth access token.
oslAccessToken :: Lens' OperatingSystemsList (Maybe Text)
oslAccessToken
  = lens _oslAccessToken
      (\ s a -> s{_oslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oslUploadType :: Lens' OperatingSystemsList (Maybe Text)
oslUploadType
  = lens _oslUploadType
      (\ s a -> s{_oslUploadType = a})

-- | User profile ID associated with this request.
oslProFileId :: Lens' OperatingSystemsList Int64
oslProFileId
  = lens _oslProFileId (\ s a -> s{_oslProFileId = a})
      . _Coerce

-- | JSONP
oslCallback :: Lens' OperatingSystemsList (Maybe Text)
oslCallback
  = lens _oslCallback (\ s a -> s{_oslCallback = a})

instance GoogleRequest OperatingSystemsList where
        type Rs OperatingSystemsList =
             OperatingSystemsListResponse
        type Scopes OperatingSystemsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemsList'{..}
          = go _oslProFileId _oslXgafv _oslUploadProtocol
              _oslAccessToken
              _oslUploadType
              _oslCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemsListResource)
                      mempty
