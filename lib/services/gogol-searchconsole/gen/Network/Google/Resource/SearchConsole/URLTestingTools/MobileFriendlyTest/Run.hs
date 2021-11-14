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
-- Module      : Network.Google.Resource.SearchConsole.URLTestingTools.MobileFriendlyTest.Run
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs Mobile-Friendly Test for a given URL.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @searchconsole.urlTestingTools.mobileFriendlyTest.run@.
module Network.Google.Resource.SearchConsole.URLTestingTools.MobileFriendlyTest.Run
    (
    -- * REST Resource
      URLTestingToolsMobileFriendlyTestRunResource

    -- * Creating a Request
    , urlTestingToolsMobileFriendlyTestRun
    , URLTestingToolsMobileFriendlyTestRun

    -- * Request Lenses
    , uttmftrXgafv
    , uttmftrUploadProtocol
    , uttmftrAccessToken
    , uttmftrUploadType
    , uttmftrPayload
    , uttmftrCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @searchconsole.urlTestingTools.mobileFriendlyTest.run@ method which the
-- 'URLTestingToolsMobileFriendlyTestRun' request conforms to.
type URLTestingToolsMobileFriendlyTestRunResource =
     "v1" :>
       "urlTestingTools" :>
         "mobileFriendlyTest:run" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RunMobileFriendlyTestRequest :>
                         Post '[JSON] RunMobileFriendlyTestResponse

-- | Runs Mobile-Friendly Test for a given URL.
--
-- /See:/ 'urlTestingToolsMobileFriendlyTestRun' smart constructor.
data URLTestingToolsMobileFriendlyTestRun =
  URLTestingToolsMobileFriendlyTestRun'
    { _uttmftrXgafv :: !(Maybe Xgafv)
    , _uttmftrUploadProtocol :: !(Maybe Text)
    , _uttmftrAccessToken :: !(Maybe Text)
    , _uttmftrUploadType :: !(Maybe Text)
    , _uttmftrPayload :: !RunMobileFriendlyTestRequest
    , _uttmftrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLTestingToolsMobileFriendlyTestRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttmftrXgafv'
--
-- * 'uttmftrUploadProtocol'
--
-- * 'uttmftrAccessToken'
--
-- * 'uttmftrUploadType'
--
-- * 'uttmftrPayload'
--
-- * 'uttmftrCallback'
urlTestingToolsMobileFriendlyTestRun
    :: RunMobileFriendlyTestRequest -- ^ 'uttmftrPayload'
    -> URLTestingToolsMobileFriendlyTestRun
urlTestingToolsMobileFriendlyTestRun pUttmftrPayload_ =
  URLTestingToolsMobileFriendlyTestRun'
    { _uttmftrXgafv = Nothing
    , _uttmftrUploadProtocol = Nothing
    , _uttmftrAccessToken = Nothing
    , _uttmftrUploadType = Nothing
    , _uttmftrPayload = pUttmftrPayload_
    , _uttmftrCallback = Nothing
    }


-- | V1 error format.
uttmftrXgafv :: Lens' URLTestingToolsMobileFriendlyTestRun (Maybe Xgafv)
uttmftrXgafv
  = lens _uttmftrXgafv (\ s a -> s{_uttmftrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uttmftrUploadProtocol :: Lens' URLTestingToolsMobileFriendlyTestRun (Maybe Text)
uttmftrUploadProtocol
  = lens _uttmftrUploadProtocol
      (\ s a -> s{_uttmftrUploadProtocol = a})

-- | OAuth access token.
uttmftrAccessToken :: Lens' URLTestingToolsMobileFriendlyTestRun (Maybe Text)
uttmftrAccessToken
  = lens _uttmftrAccessToken
      (\ s a -> s{_uttmftrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uttmftrUploadType :: Lens' URLTestingToolsMobileFriendlyTestRun (Maybe Text)
uttmftrUploadType
  = lens _uttmftrUploadType
      (\ s a -> s{_uttmftrUploadType = a})

-- | Multipart request metadata.
uttmftrPayload :: Lens' URLTestingToolsMobileFriendlyTestRun RunMobileFriendlyTestRequest
uttmftrPayload
  = lens _uttmftrPayload
      (\ s a -> s{_uttmftrPayload = a})

-- | JSONP
uttmftrCallback :: Lens' URLTestingToolsMobileFriendlyTestRun (Maybe Text)
uttmftrCallback
  = lens _uttmftrCallback
      (\ s a -> s{_uttmftrCallback = a})

instance GoogleRequest
           URLTestingToolsMobileFriendlyTestRun
         where
        type Rs URLTestingToolsMobileFriendlyTestRun =
             RunMobileFriendlyTestResponse
        type Scopes URLTestingToolsMobileFriendlyTestRun =
             '[]
        requestClient
          URLTestingToolsMobileFriendlyTestRun'{..}
          = go _uttmftrXgafv _uttmftrUploadProtocol
              _uttmftrAccessToken
              _uttmftrUploadType
              _uttmftrCallback
              (Just AltJSON)
              _uttmftrPayload
              searchConsoleService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy URLTestingToolsMobileFriendlyTestRunResource)
                      mempty
