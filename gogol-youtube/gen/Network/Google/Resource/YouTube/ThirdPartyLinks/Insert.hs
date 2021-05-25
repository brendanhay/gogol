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
-- Module      : Network.Google.Resource.YouTube.ThirdPartyLinks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.insert@.
module Network.Google.Resource.YouTube.ThirdPartyLinks.Insert
    (
    -- * REST Resource
      ThirdPartyLinksInsertResource

    -- * Creating a Request
    , thirdPartyLinksInsert
    , ThirdPartyLinksInsert

    -- * Request Lenses
    , tpliXgafv
    , tpliPart
    , tpliUploadProtocol
    , tpliAccessToken
    , tpliUploadType
    , tpliPayload
    , tpliCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.insert@ method which the
-- 'ThirdPartyLinksInsert' request conforms to.
type ThirdPartyLinksInsertResource =
     "youtube" :>
       "v3" :>
         "thirdPartyLinks" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ThirdPartyLink :>
                           Post '[JSON] ThirdPartyLink

-- | Inserts a new resource into this collection.
--
-- /See:/ 'thirdPartyLinksInsert' smart constructor.
data ThirdPartyLinksInsert =
  ThirdPartyLinksInsert'
    { _tpliXgafv :: !(Maybe Xgafv)
    , _tpliPart :: ![Text]
    , _tpliUploadProtocol :: !(Maybe Text)
    , _tpliAccessToken :: !(Maybe Text)
    , _tpliUploadType :: !(Maybe Text)
    , _tpliPayload :: !ThirdPartyLink
    , _tpliCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThirdPartyLinksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpliXgafv'
--
-- * 'tpliPart'
--
-- * 'tpliUploadProtocol'
--
-- * 'tpliAccessToken'
--
-- * 'tpliUploadType'
--
-- * 'tpliPayload'
--
-- * 'tpliCallback'
thirdPartyLinksInsert
    :: [Text] -- ^ 'tpliPart'
    -> ThirdPartyLink -- ^ 'tpliPayload'
    -> ThirdPartyLinksInsert
thirdPartyLinksInsert pTpliPart_ pTpliPayload_ =
  ThirdPartyLinksInsert'
    { _tpliXgafv = Nothing
    , _tpliPart = _Coerce # pTpliPart_
    , _tpliUploadProtocol = Nothing
    , _tpliAccessToken = Nothing
    , _tpliUploadType = Nothing
    , _tpliPayload = pTpliPayload_
    , _tpliCallback = Nothing
    }


-- | V1 error format.
tpliXgafv :: Lens' ThirdPartyLinksInsert (Maybe Xgafv)
tpliXgafv
  = lens _tpliXgafv (\ s a -> s{_tpliXgafv = a})

-- | The *part* parameter specifies the thirdPartyLink resource parts that
-- the API request and response will include. Supported values are
-- linkingToken, status, and snippet.
tpliPart :: Lens' ThirdPartyLinksInsert [Text]
tpliPart
  = lens _tpliPart (\ s a -> s{_tpliPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tpliUploadProtocol :: Lens' ThirdPartyLinksInsert (Maybe Text)
tpliUploadProtocol
  = lens _tpliUploadProtocol
      (\ s a -> s{_tpliUploadProtocol = a})

-- | OAuth access token.
tpliAccessToken :: Lens' ThirdPartyLinksInsert (Maybe Text)
tpliAccessToken
  = lens _tpliAccessToken
      (\ s a -> s{_tpliAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tpliUploadType :: Lens' ThirdPartyLinksInsert (Maybe Text)
tpliUploadType
  = lens _tpliUploadType
      (\ s a -> s{_tpliUploadType = a})

-- | Multipart request metadata.
tpliPayload :: Lens' ThirdPartyLinksInsert ThirdPartyLink
tpliPayload
  = lens _tpliPayload (\ s a -> s{_tpliPayload = a})

-- | JSONP
tpliCallback :: Lens' ThirdPartyLinksInsert (Maybe Text)
tpliCallback
  = lens _tpliCallback (\ s a -> s{_tpliCallback = a})

instance GoogleRequest ThirdPartyLinksInsert where
        type Rs ThirdPartyLinksInsert = ThirdPartyLink
        type Scopes ThirdPartyLinksInsert = '[]
        requestClient ThirdPartyLinksInsert'{..}
          = go _tpliPart _tpliXgafv _tpliUploadProtocol
              _tpliAccessToken
              _tpliUploadType
              _tpliCallback
              (Just AltJSON)
              _tpliPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ThirdPartyLinksInsertResource)
                      mempty
