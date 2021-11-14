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
-- Module      : Network.Google.Resource.YouTube.Tests.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- POST method.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.tests.insert@.
module Network.Google.Resource.YouTube.Tests.Insert
    (
    -- * REST Resource
      TestsInsertResource

    -- * Creating a Request
    , testsInsert
    , TestsInsert

    -- * Request Lenses
    , tiXgafv
    , tiPart
    , tiUploadProtocol
    , tiAccessToken
    , tiUploadType
    , tiPayload
    , tiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.tests.insert@ method which the
-- 'TestsInsert' request conforms to.
type TestsInsertResource =
     "youtube" :>
       "v3" :>
         "tests" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestItem :> Post '[JSON] TestItem

-- | POST method.
--
-- /See:/ 'testsInsert' smart constructor.
data TestsInsert =
  TestsInsert'
    { _tiXgafv :: !(Maybe Xgafv)
    , _tiPart :: ![Text]
    , _tiUploadProtocol :: !(Maybe Text)
    , _tiAccessToken :: !(Maybe Text)
    , _tiUploadType :: !(Maybe Text)
    , _tiPayload :: !TestItem
    , _tiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiXgafv'
--
-- * 'tiPart'
--
-- * 'tiUploadProtocol'
--
-- * 'tiAccessToken'
--
-- * 'tiUploadType'
--
-- * 'tiPayload'
--
-- * 'tiCallback'
testsInsert
    :: [Text] -- ^ 'tiPart'
    -> TestItem -- ^ 'tiPayload'
    -> TestsInsert
testsInsert pTiPart_ pTiPayload_ =
  TestsInsert'
    { _tiXgafv = Nothing
    , _tiPart = _Coerce # pTiPart_
    , _tiUploadProtocol = Nothing
    , _tiAccessToken = Nothing
    , _tiUploadType = Nothing
    , _tiPayload = pTiPayload_
    , _tiCallback = Nothing
    }


-- | V1 error format.
tiXgafv :: Lens' TestsInsert (Maybe Xgafv)
tiXgafv = lens _tiXgafv (\ s a -> s{_tiXgafv = a})

tiPart :: Lens' TestsInsert [Text]
tiPart
  = lens _tiPart (\ s a -> s{_tiPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tiUploadProtocol :: Lens' TestsInsert (Maybe Text)
tiUploadProtocol
  = lens _tiUploadProtocol
      (\ s a -> s{_tiUploadProtocol = a})

-- | OAuth access token.
tiAccessToken :: Lens' TestsInsert (Maybe Text)
tiAccessToken
  = lens _tiAccessToken
      (\ s a -> s{_tiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tiUploadType :: Lens' TestsInsert (Maybe Text)
tiUploadType
  = lens _tiUploadType (\ s a -> s{_tiUploadType = a})

-- | Multipart request metadata.
tiPayload :: Lens' TestsInsert TestItem
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | JSONP
tiCallback :: Lens' TestsInsert (Maybe Text)
tiCallback
  = lens _tiCallback (\ s a -> s{_tiCallback = a})

instance GoogleRequest TestsInsert where
        type Rs TestsInsert = TestItem
        type Scopes TestsInsert =
             '["https://www.googleapis.com/auth/youtube.readonly"]
        requestClient TestsInsert'{..}
          = go _tiPart _tiXgafv _tiUploadProtocol
              _tiAccessToken
              _tiUploadType
              _tiCallback
              (Just AltJSON)
              _tiPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy TestsInsertResource)
                      mempty
