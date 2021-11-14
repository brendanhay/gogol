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
-- Module      : Network.Google.Resource.DFAReporting.PlatformTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of platform types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.platformTypes.list@.
module Network.Google.Resource.DFAReporting.PlatformTypes.List
    (
    -- * REST Resource
      PlatformTypesListResource

    -- * Creating a Request
    , platformTypesList
    , PlatformTypesList

    -- * Request Lenses
    , ptlXgafv
    , ptlUploadProtocol
    , ptlAccessToken
    , ptlUploadType
    , ptlProFileId
    , ptlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.platformTypes.list@ method which the
-- 'PlatformTypesList' request conforms to.
type PlatformTypesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "platformTypes" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] PlatformTypesListResponse

-- | Retrieves a list of platform types.
--
-- /See:/ 'platformTypesList' smart constructor.
data PlatformTypesList =
  PlatformTypesList'
    { _ptlXgafv :: !(Maybe Xgafv)
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlAccessToken :: !(Maybe Text)
    , _ptlUploadType :: !(Maybe Text)
    , _ptlProFileId :: !(Textual Int64)
    , _ptlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlatformTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlXgafv'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlProFileId'
--
-- * 'ptlCallback'
platformTypesList
    :: Int64 -- ^ 'ptlProFileId'
    -> PlatformTypesList
platformTypesList pPtlProFileId_ =
  PlatformTypesList'
    { _ptlXgafv = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlProFileId = _Coerce # pPtlProFileId_
    , _ptlCallback = Nothing
    }


-- | V1 error format.
ptlXgafv :: Lens' PlatformTypesList (Maybe Xgafv)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' PlatformTypesList (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | OAuth access token.
ptlAccessToken :: Lens' PlatformTypesList (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' PlatformTypesList (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | User profile ID associated with this request.
ptlProFileId :: Lens' PlatformTypesList Int64
ptlProFileId
  = lens _ptlProFileId (\ s a -> s{_ptlProFileId = a})
      . _Coerce

-- | JSONP
ptlCallback :: Lens' PlatformTypesList (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

instance GoogleRequest PlatformTypesList where
        type Rs PlatformTypesList = PlatformTypesListResponse
        type Scopes PlatformTypesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlatformTypesList'{..}
          = go _ptlProFileId _ptlXgafv _ptlUploadProtocol
              _ptlAccessToken
              _ptlUploadType
              _ptlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlatformTypesListResource)
                      mempty
