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
-- Module      : Network.Google.Resource.DFAReporting.Metros.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of metros.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.metros.list@.
module Network.Google.Resource.DFAReporting.Metros.List
    (
    -- * REST Resource
      MetrosListResource

    -- * Creating a Request
    , metrosList
    , MetrosList

    -- * Request Lenses
    , mlXgafv
    , mlUploadProtocol
    , mlAccessToken
    , mlUploadType
    , mlProFileId
    , mlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.metros.list@ method which the
-- 'MetrosList' request conforms to.
type MetrosListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "metros" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] MetrosListResponse

-- | Retrieves a list of metros.
--
-- /See:/ 'metrosList' smart constructor.
data MetrosList =
  MetrosList'
    { _mlXgafv :: !(Maybe Xgafv)
    , _mlUploadProtocol :: !(Maybe Text)
    , _mlAccessToken :: !(Maybe Text)
    , _mlUploadType :: !(Maybe Text)
    , _mlProFileId :: !(Textual Int64)
    , _mlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetrosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlXgafv'
--
-- * 'mlUploadProtocol'
--
-- * 'mlAccessToken'
--
-- * 'mlUploadType'
--
-- * 'mlProFileId'
--
-- * 'mlCallback'
metrosList
    :: Int64 -- ^ 'mlProFileId'
    -> MetrosList
metrosList pMlProFileId_ =
  MetrosList'
    { _mlXgafv = Nothing
    , _mlUploadProtocol = Nothing
    , _mlAccessToken = Nothing
    , _mlUploadType = Nothing
    , _mlProFileId = _Coerce # pMlProFileId_
    , _mlCallback = Nothing
    }


-- | V1 error format.
mlXgafv :: Lens' MetrosList (Maybe Xgafv)
mlXgafv = lens _mlXgafv (\ s a -> s{_mlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlUploadProtocol :: Lens' MetrosList (Maybe Text)
mlUploadProtocol
  = lens _mlUploadProtocol
      (\ s a -> s{_mlUploadProtocol = a})

-- | OAuth access token.
mlAccessToken :: Lens' MetrosList (Maybe Text)
mlAccessToken
  = lens _mlAccessToken
      (\ s a -> s{_mlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlUploadType :: Lens' MetrosList (Maybe Text)
mlUploadType
  = lens _mlUploadType (\ s a -> s{_mlUploadType = a})

-- | User profile ID associated with this request.
mlProFileId :: Lens' MetrosList Int64
mlProFileId
  = lens _mlProFileId (\ s a -> s{_mlProFileId = a}) .
      _Coerce

-- | JSONP
mlCallback :: Lens' MetrosList (Maybe Text)
mlCallback
  = lens _mlCallback (\ s a -> s{_mlCallback = a})

instance GoogleRequest MetrosList where
        type Rs MetrosList = MetrosListResponse
        type Scopes MetrosList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MetrosList'{..}
          = go _mlProFileId _mlXgafv _mlUploadProtocol
              _mlAccessToken
              _mlUploadType
              _mlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy MetrosListResource)
                      mempty
