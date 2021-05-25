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
-- Module      : Network.Google.Resource.DFAReporting.Browsers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of browsers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.browsers.list@.
module Network.Google.Resource.DFAReporting.Browsers.List
    (
    -- * REST Resource
      BrowsersListResource

    -- * Creating a Request
    , browsersList
    , BrowsersList

    -- * Request Lenses
    , blXgafv
    , blUploadProtocol
    , blAccessToken
    , blUploadType
    , blProFileId
    , blCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.browsers.list@ method which the
-- 'BrowsersList' request conforms to.
type BrowsersListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "browsers" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] BrowsersListResponse

-- | Retrieves a list of browsers.
--
-- /See:/ 'browsersList' smart constructor.
data BrowsersList =
  BrowsersList'
    { _blXgafv :: !(Maybe Xgafv)
    , _blUploadProtocol :: !(Maybe Text)
    , _blAccessToken :: !(Maybe Text)
    , _blUploadType :: !(Maybe Text)
    , _blProFileId :: !(Textual Int64)
    , _blCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BrowsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blXgafv'
--
-- * 'blUploadProtocol'
--
-- * 'blAccessToken'
--
-- * 'blUploadType'
--
-- * 'blProFileId'
--
-- * 'blCallback'
browsersList
    :: Int64 -- ^ 'blProFileId'
    -> BrowsersList
browsersList pBlProFileId_ =
  BrowsersList'
    { _blXgafv = Nothing
    , _blUploadProtocol = Nothing
    , _blAccessToken = Nothing
    , _blUploadType = Nothing
    , _blProFileId = _Coerce # pBlProFileId_
    , _blCallback = Nothing
    }


-- | V1 error format.
blXgafv :: Lens' BrowsersList (Maybe Xgafv)
blXgafv = lens _blXgafv (\ s a -> s{_blXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
blUploadProtocol :: Lens' BrowsersList (Maybe Text)
blUploadProtocol
  = lens _blUploadProtocol
      (\ s a -> s{_blUploadProtocol = a})

-- | OAuth access token.
blAccessToken :: Lens' BrowsersList (Maybe Text)
blAccessToken
  = lens _blAccessToken
      (\ s a -> s{_blAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
blUploadType :: Lens' BrowsersList (Maybe Text)
blUploadType
  = lens _blUploadType (\ s a -> s{_blUploadType = a})

-- | User profile ID associated with this request.
blProFileId :: Lens' BrowsersList Int64
blProFileId
  = lens _blProFileId (\ s a -> s{_blProFileId = a}) .
      _Coerce

-- | JSONP
blCallback :: Lens' BrowsersList (Maybe Text)
blCallback
  = lens _blCallback (\ s a -> s{_blCallback = a})

instance GoogleRequest BrowsersList where
        type Rs BrowsersList = BrowsersListResponse
        type Scopes BrowsersList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient BrowsersList'{..}
          = go _blProFileId _blXgafv _blUploadProtocol
              _blAccessToken
              _blUploadType
              _blCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy BrowsersListResource)
                      mempty
