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
-- Module      : Network.Google.Resource.Poly.Assets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about an asset given its name. PRIVATE
-- assets are returned only if the currently authenticated user (via OAuth
-- token) is the author of the asset.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference> for @poly.assets.get@.
module Network.Google.Resource.Poly.Assets.Get
    (
    -- * REST Resource
      AssetsGetResource

    -- * Creating a Request
    , assetsGet
    , AssetsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agAccessToken
    , agUploadType
    , agName
    , agCallback
    ) where

import           Network.Google.Poly.Types
import           Network.Google.Prelude

-- | A resource alias for @poly.assets.get@ method which the
-- 'AssetsGet' request conforms to.
type AssetsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Asset

-- | Returns detailed information about an asset given its name. PRIVATE
-- assets are returned only if the currently authenticated user (via OAuth
-- token) is the author of the asset.
--
-- /See:/ 'assetsGet' smart constructor.
data AssetsGet =
  AssetsGet'
    { _agXgafv          :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken    :: !(Maybe Text)
    , _agUploadType     :: !(Maybe Text)
    , _agName           :: !Text
    , _agCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agName'
--
-- * 'agCallback'
assetsGet
    :: Text -- ^ 'agName'
    -> AssetsGet
assetsGet pAgName_ =
  AssetsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agName = pAgName_
    , _agCallback = Nothing
    }

-- | V1 error format.
agXgafv :: Lens' AssetsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AssetsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' AssetsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AssetsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | Required. An asset\'s name in the form \`assets\/{ASSET_ID}\`.
agName :: Lens' AssetsGet Text
agName = lens _agName (\ s a -> s{_agName = a})

-- | JSONP
agCallback :: Lens' AssetsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AssetsGet where
        type Rs AssetsGet = Asset
        type Scopes AssetsGet = '[]
        requestClient AssetsGet'{..}
          = go _agName _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCallback
              (Just AltJSON)
              polyService
          where go
                  = buildClient (Proxy :: Proxy AssetsGetResource)
                      mempty
