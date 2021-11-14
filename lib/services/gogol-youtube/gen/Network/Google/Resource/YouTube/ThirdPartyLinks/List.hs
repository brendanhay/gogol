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
-- Module      : Network.Google.Resource.YouTube.ThirdPartyLinks.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.list@.
module Network.Google.Resource.YouTube.ThirdPartyLinks.List
    (
    -- * REST Resource
      ThirdPartyLinksListResource

    -- * Creating a Request
    , thirdPartyLinksList
    , ThirdPartyLinksList

    -- * Request Lenses
    , tpllXgafv
    , tpllPart
    , tpllUploadProtocol
    , tpllAccessToken
    , tpllLinkingToken
    , tpllUploadType
    , tpllType
    , tpllCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.list@ method which the
-- 'ThirdPartyLinksList' request conforms to.
type ThirdPartyLinksListResource =
     "youtube" :>
       "v3" :>
         "thirdPartyLinks" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "linkingToken" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "type" ThirdPartyLinksListType :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ThirdPartyLink

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'thirdPartyLinksList' smart constructor.
data ThirdPartyLinksList =
  ThirdPartyLinksList'
    { _tpllXgafv :: !(Maybe Xgafv)
    , _tpllPart :: ![Text]
    , _tpllUploadProtocol :: !(Maybe Text)
    , _tpllAccessToken :: !(Maybe Text)
    , _tpllLinkingToken :: !(Maybe Text)
    , _tpllUploadType :: !(Maybe Text)
    , _tpllType :: !(Maybe ThirdPartyLinksListType)
    , _tpllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThirdPartyLinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpllXgafv'
--
-- * 'tpllPart'
--
-- * 'tpllUploadProtocol'
--
-- * 'tpllAccessToken'
--
-- * 'tpllLinkingToken'
--
-- * 'tpllUploadType'
--
-- * 'tpllType'
--
-- * 'tpllCallback'
thirdPartyLinksList
    :: [Text] -- ^ 'tpllPart'
    -> ThirdPartyLinksList
thirdPartyLinksList pTpllPart_ =
  ThirdPartyLinksList'
    { _tpllXgafv = Nothing
    , _tpllPart = _Coerce # pTpllPart_
    , _tpllUploadProtocol = Nothing
    , _tpllAccessToken = Nothing
    , _tpllLinkingToken = Nothing
    , _tpllUploadType = Nothing
    , _tpllType = Nothing
    , _tpllCallback = Nothing
    }


-- | V1 error format.
tpllXgafv :: Lens' ThirdPartyLinksList (Maybe Xgafv)
tpllXgafv
  = lens _tpllXgafv (\ s a -> s{_tpllXgafv = a})

-- | The *part* parameter specifies the thirdPartyLink resource parts that
-- the API response will include. Supported values are linkingToken,
-- status, and snippet.
tpllPart :: Lens' ThirdPartyLinksList [Text]
tpllPart
  = lens _tpllPart (\ s a -> s{_tpllPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tpllUploadProtocol :: Lens' ThirdPartyLinksList (Maybe Text)
tpllUploadProtocol
  = lens _tpllUploadProtocol
      (\ s a -> s{_tpllUploadProtocol = a})

-- | OAuth access token.
tpllAccessToken :: Lens' ThirdPartyLinksList (Maybe Text)
tpllAccessToken
  = lens _tpllAccessToken
      (\ s a -> s{_tpllAccessToken = a})

-- | Get a third party link with the given linking token.
tpllLinkingToken :: Lens' ThirdPartyLinksList (Maybe Text)
tpllLinkingToken
  = lens _tpllLinkingToken
      (\ s a -> s{_tpllLinkingToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tpllUploadType :: Lens' ThirdPartyLinksList (Maybe Text)
tpllUploadType
  = lens _tpllUploadType
      (\ s a -> s{_tpllUploadType = a})

-- | Get a third party link of the given type.
tpllType :: Lens' ThirdPartyLinksList (Maybe ThirdPartyLinksListType)
tpllType = lens _tpllType (\ s a -> s{_tpllType = a})

-- | JSONP
tpllCallback :: Lens' ThirdPartyLinksList (Maybe Text)
tpllCallback
  = lens _tpllCallback (\ s a -> s{_tpllCallback = a})

instance GoogleRequest ThirdPartyLinksList where
        type Rs ThirdPartyLinksList = ThirdPartyLink
        type Scopes ThirdPartyLinksList = '[]
        requestClient ThirdPartyLinksList'{..}
          = go _tpllPart _tpllXgafv _tpllUploadProtocol
              _tpllAccessToken
              _tpllLinkingToken
              _tpllUploadType
              _tpllType
              _tpllCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ThirdPartyLinksListResource)
                      mempty
