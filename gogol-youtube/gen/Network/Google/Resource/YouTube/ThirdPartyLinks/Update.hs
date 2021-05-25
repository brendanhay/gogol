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
-- Module      : Network.Google.Resource.YouTube.ThirdPartyLinks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.update@.
module Network.Google.Resource.YouTube.ThirdPartyLinks.Update
    (
    -- * REST Resource
      ThirdPartyLinksUpdateResource

    -- * Creating a Request
    , thirdPartyLinksUpdate
    , ThirdPartyLinksUpdate

    -- * Request Lenses
    , tpluXgafv
    , tpluPart
    , tpluUploadProtocol
    , tpluAccessToken
    , tpluUploadType
    , tpluPayload
    , tpluCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.update@ method which the
-- 'ThirdPartyLinksUpdate' request conforms to.
type ThirdPartyLinksUpdateResource =
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
                           Put '[JSON] ThirdPartyLink

-- | Updates an existing resource.
--
-- /See:/ 'thirdPartyLinksUpdate' smart constructor.
data ThirdPartyLinksUpdate =
  ThirdPartyLinksUpdate'
    { _tpluXgafv :: !(Maybe Xgafv)
    , _tpluPart :: ![Text]
    , _tpluUploadProtocol :: !(Maybe Text)
    , _tpluAccessToken :: !(Maybe Text)
    , _tpluUploadType :: !(Maybe Text)
    , _tpluPayload :: !ThirdPartyLink
    , _tpluCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThirdPartyLinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpluXgafv'
--
-- * 'tpluPart'
--
-- * 'tpluUploadProtocol'
--
-- * 'tpluAccessToken'
--
-- * 'tpluUploadType'
--
-- * 'tpluPayload'
--
-- * 'tpluCallback'
thirdPartyLinksUpdate
    :: [Text] -- ^ 'tpluPart'
    -> ThirdPartyLink -- ^ 'tpluPayload'
    -> ThirdPartyLinksUpdate
thirdPartyLinksUpdate pTpluPart_ pTpluPayload_ =
  ThirdPartyLinksUpdate'
    { _tpluXgafv = Nothing
    , _tpluPart = _Coerce # pTpluPart_
    , _tpluUploadProtocol = Nothing
    , _tpluAccessToken = Nothing
    , _tpluUploadType = Nothing
    , _tpluPayload = pTpluPayload_
    , _tpluCallback = Nothing
    }


-- | V1 error format.
tpluXgafv :: Lens' ThirdPartyLinksUpdate (Maybe Xgafv)
tpluXgafv
  = lens _tpluXgafv (\ s a -> s{_tpluXgafv = a})

-- | The *part* parameter specifies the thirdPartyLink resource parts that
-- the API request and response will include. Supported values are
-- linkingToken, status, and snippet.
tpluPart :: Lens' ThirdPartyLinksUpdate [Text]
tpluPart
  = lens _tpluPart (\ s a -> s{_tpluPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tpluUploadProtocol :: Lens' ThirdPartyLinksUpdate (Maybe Text)
tpluUploadProtocol
  = lens _tpluUploadProtocol
      (\ s a -> s{_tpluUploadProtocol = a})

-- | OAuth access token.
tpluAccessToken :: Lens' ThirdPartyLinksUpdate (Maybe Text)
tpluAccessToken
  = lens _tpluAccessToken
      (\ s a -> s{_tpluAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tpluUploadType :: Lens' ThirdPartyLinksUpdate (Maybe Text)
tpluUploadType
  = lens _tpluUploadType
      (\ s a -> s{_tpluUploadType = a})

-- | Multipart request metadata.
tpluPayload :: Lens' ThirdPartyLinksUpdate ThirdPartyLink
tpluPayload
  = lens _tpluPayload (\ s a -> s{_tpluPayload = a})

-- | JSONP
tpluCallback :: Lens' ThirdPartyLinksUpdate (Maybe Text)
tpluCallback
  = lens _tpluCallback (\ s a -> s{_tpluCallback = a})

instance GoogleRequest ThirdPartyLinksUpdate where
        type Rs ThirdPartyLinksUpdate = ThirdPartyLink
        type Scopes ThirdPartyLinksUpdate = '[]
        requestClient ThirdPartyLinksUpdate'{..}
          = go _tpluPart _tpluXgafv _tpluUploadProtocol
              _tpluAccessToken
              _tpluUploadType
              _tpluCallback
              (Just AltJSON)
              _tpluPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ThirdPartyLinksUpdateResource)
                      mempty
