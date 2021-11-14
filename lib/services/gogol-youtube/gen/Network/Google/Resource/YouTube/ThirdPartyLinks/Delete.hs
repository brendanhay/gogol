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
-- Module      : Network.Google.Resource.YouTube.ThirdPartyLinks.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.delete@.
module Network.Google.Resource.YouTube.ThirdPartyLinks.Delete
    (
    -- * REST Resource
      ThirdPartyLinksDeleteResource

    -- * Creating a Request
    , thirdPartyLinksDelete
    , ThirdPartyLinksDelete

    -- * Request Lenses
    , tpldXgafv
    , tpldPart
    , tpldUploadProtocol
    , tpldAccessToken
    , tpldLinkingToken
    , tpldUploadType
    , tpldType
    , tpldCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.delete@ method which the
-- 'ThirdPartyLinksDelete' request conforms to.
type ThirdPartyLinksDeleteResource =
     "youtube" :>
       "v3" :>
         "thirdPartyLinks" :>
           QueryParam "linkingToken" Text :>
             QueryParam "type" ThirdPartyLinksDeleteType :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParams "part" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a resource.
--
-- /See:/ 'thirdPartyLinksDelete' smart constructor.
data ThirdPartyLinksDelete =
  ThirdPartyLinksDelete'
    { _tpldXgafv :: !(Maybe Xgafv)
    , _tpldPart :: !(Maybe [Text])
    , _tpldUploadProtocol :: !(Maybe Text)
    , _tpldAccessToken :: !(Maybe Text)
    , _tpldLinkingToken :: !Text
    , _tpldUploadType :: !(Maybe Text)
    , _tpldType :: !ThirdPartyLinksDeleteType
    , _tpldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThirdPartyLinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpldXgafv'
--
-- * 'tpldPart'
--
-- * 'tpldUploadProtocol'
--
-- * 'tpldAccessToken'
--
-- * 'tpldLinkingToken'
--
-- * 'tpldUploadType'
--
-- * 'tpldType'
--
-- * 'tpldCallback'
thirdPartyLinksDelete
    :: Text -- ^ 'tpldLinkingToken'
    -> ThirdPartyLinksDeleteType -- ^ 'tpldType'
    -> ThirdPartyLinksDelete
thirdPartyLinksDelete pTpldLinkingToken_ pTpldType_ =
  ThirdPartyLinksDelete'
    { _tpldXgafv = Nothing
    , _tpldPart = Nothing
    , _tpldUploadProtocol = Nothing
    , _tpldAccessToken = Nothing
    , _tpldLinkingToken = pTpldLinkingToken_
    , _tpldUploadType = Nothing
    , _tpldType = pTpldType_
    , _tpldCallback = Nothing
    }


-- | V1 error format.
tpldXgafv :: Lens' ThirdPartyLinksDelete (Maybe Xgafv)
tpldXgafv
  = lens _tpldXgafv (\ s a -> s{_tpldXgafv = a})

-- | Do not use. Required for compatibility.
tpldPart :: Lens' ThirdPartyLinksDelete [Text]
tpldPart
  = lens _tpldPart (\ s a -> s{_tpldPart = a}) .
      _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tpldUploadProtocol :: Lens' ThirdPartyLinksDelete (Maybe Text)
tpldUploadProtocol
  = lens _tpldUploadProtocol
      (\ s a -> s{_tpldUploadProtocol = a})

-- | OAuth access token.
tpldAccessToken :: Lens' ThirdPartyLinksDelete (Maybe Text)
tpldAccessToken
  = lens _tpldAccessToken
      (\ s a -> s{_tpldAccessToken = a})

-- | Delete the partner links with the given linking token.
tpldLinkingToken :: Lens' ThirdPartyLinksDelete Text
tpldLinkingToken
  = lens _tpldLinkingToken
      (\ s a -> s{_tpldLinkingToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tpldUploadType :: Lens' ThirdPartyLinksDelete (Maybe Text)
tpldUploadType
  = lens _tpldUploadType
      (\ s a -> s{_tpldUploadType = a})

-- | Type of the link to be deleted.
tpldType :: Lens' ThirdPartyLinksDelete ThirdPartyLinksDeleteType
tpldType = lens _tpldType (\ s a -> s{_tpldType = a})

-- | JSONP
tpldCallback :: Lens' ThirdPartyLinksDelete (Maybe Text)
tpldCallback
  = lens _tpldCallback (\ s a -> s{_tpldCallback = a})

instance GoogleRequest ThirdPartyLinksDelete where
        type Rs ThirdPartyLinksDelete = ()
        type Scopes ThirdPartyLinksDelete = '[]
        requestClient ThirdPartyLinksDelete'{..}
          = go (Just _tpldLinkingToken) (Just _tpldType)
              _tpldXgafv
              (_tpldPart ^. _Default)
              _tpldUploadProtocol
              _tpldAccessToken
              _tpldUploadType
              _tpldCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ThirdPartyLinksDeleteResource)
                      mempty
