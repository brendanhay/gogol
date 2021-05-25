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
-- Module      : Network.Google.Resource.Content.Csses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a single CSS domain by ID.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.csses.get@.
module Network.Google.Resource.Content.Csses.Get
    (
    -- * REST Resource
      CssesGetResource

    -- * Creating a Request
    , cssesGet
    , CssesGet

    -- * Request Lenses
    , cggXgafv
    , cggUploadProtocol
    , cggAccessToken
    , cggUploadType
    , cggCssDomainId
    , cggCssGroupId
    , cggCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.csses.get@ method which the
-- 'CssesGet' request conforms to.
type CssesGetResource =
     "content" :>
       "v2.1" :>
         Capture "cssGroupId" (Textual Int64) :>
           "csses" :>
             Capture "cssDomainId" (Textual Int64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Css

-- | Retrieves a single CSS domain by ID.
--
-- /See:/ 'cssesGet' smart constructor.
data CssesGet =
  CssesGet'
    { _cggXgafv :: !(Maybe Xgafv)
    , _cggUploadProtocol :: !(Maybe Text)
    , _cggAccessToken :: !(Maybe Text)
    , _cggUploadType :: !(Maybe Text)
    , _cggCssDomainId :: !(Textual Int64)
    , _cggCssGroupId :: !(Textual Int64)
    , _cggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CssesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggXgafv'
--
-- * 'cggUploadProtocol'
--
-- * 'cggAccessToken'
--
-- * 'cggUploadType'
--
-- * 'cggCssDomainId'
--
-- * 'cggCssGroupId'
--
-- * 'cggCallback'
cssesGet
    :: Int64 -- ^ 'cggCssDomainId'
    -> Int64 -- ^ 'cggCssGroupId'
    -> CssesGet
cssesGet pCggCssDomainId_ pCggCssGroupId_ =
  CssesGet'
    { _cggXgafv = Nothing
    , _cggUploadProtocol = Nothing
    , _cggAccessToken = Nothing
    , _cggUploadType = Nothing
    , _cggCssDomainId = _Coerce # pCggCssDomainId_
    , _cggCssGroupId = _Coerce # pCggCssGroupId_
    , _cggCallback = Nothing
    }


-- | V1 error format.
cggXgafv :: Lens' CssesGet (Maybe Xgafv)
cggXgafv = lens _cggXgafv (\ s a -> s{_cggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cggUploadProtocol :: Lens' CssesGet (Maybe Text)
cggUploadProtocol
  = lens _cggUploadProtocol
      (\ s a -> s{_cggUploadProtocol = a})

-- | OAuth access token.
cggAccessToken :: Lens' CssesGet (Maybe Text)
cggAccessToken
  = lens _cggAccessToken
      (\ s a -> s{_cggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cggUploadType :: Lens' CssesGet (Maybe Text)
cggUploadType
  = lens _cggUploadType
      (\ s a -> s{_cggUploadType = a})

-- | Required. The ID of the CSS domain to return.
cggCssDomainId :: Lens' CssesGet Int64
cggCssDomainId
  = lens _cggCssDomainId
      (\ s a -> s{_cggCssDomainId = a})
      . _Coerce

-- | Required. The ID of the managing account. If this parameter is not the
-- same as [cssDomainId](#cssDomainId), then this ID must be a CSS group ID
-- and \`cssDomainId\` must be the ID of a CSS domain affiliated with this
-- group.
cggCssGroupId :: Lens' CssesGet Int64
cggCssGroupId
  = lens _cggCssGroupId
      (\ s a -> s{_cggCssGroupId = a})
      . _Coerce

-- | JSONP
cggCallback :: Lens' CssesGet (Maybe Text)
cggCallback
  = lens _cggCallback (\ s a -> s{_cggCallback = a})

instance GoogleRequest CssesGet where
        type Rs CssesGet = Css
        type Scopes CssesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient CssesGet'{..}
          = go _cggCssGroupId _cggCssDomainId _cggXgafv
              _cggUploadProtocol
              _cggAccessToken
              _cggUploadType
              _cggCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy CssesGetResource)
                      mempty
