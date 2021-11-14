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
-- Module      : Network.Google.Resource.Content.Csses.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists CSS domains affiliated with a CSS group.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.csses.list@.
module Network.Google.Resource.Content.Csses.List
    (
    -- * REST Resource
      CssesListResource

    -- * Creating a Request
    , cssesList
    , CssesList

    -- * Request Lenses
    , cssXgafv
    , cssUploadProtocol
    , cssAccessToken
    , cssUploadType
    , cssCssGroupId
    , cssPageToken
    , cssPageSize
    , cssCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.csses.list@ method which the
-- 'CssesList' request conforms to.
type CssesListResource =
     "content" :>
       "v2.1" :>
         Capture "cssGroupId" (Textual Int64) :>
           "csses" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCssesResponse

-- | Lists CSS domains affiliated with a CSS group.
--
-- /See:/ 'cssesList' smart constructor.
data CssesList =
  CssesList'
    { _cssXgafv :: !(Maybe Xgafv)
    , _cssUploadProtocol :: !(Maybe Text)
    , _cssAccessToken :: !(Maybe Text)
    , _cssUploadType :: !(Maybe Text)
    , _cssCssGroupId :: !(Textual Int64)
    , _cssPageToken :: !(Maybe Text)
    , _cssPageSize :: !(Maybe (Textual Int32))
    , _cssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CssesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssXgafv'
--
-- * 'cssUploadProtocol'
--
-- * 'cssAccessToken'
--
-- * 'cssUploadType'
--
-- * 'cssCssGroupId'
--
-- * 'cssPageToken'
--
-- * 'cssPageSize'
--
-- * 'cssCallback'
cssesList
    :: Int64 -- ^ 'cssCssGroupId'
    -> CssesList
cssesList pCssCssGroupId_ =
  CssesList'
    { _cssXgafv = Nothing
    , _cssUploadProtocol = Nothing
    , _cssAccessToken = Nothing
    , _cssUploadType = Nothing
    , _cssCssGroupId = _Coerce # pCssCssGroupId_
    , _cssPageToken = Nothing
    , _cssPageSize = Nothing
    , _cssCallback = Nothing
    }


-- | V1 error format.
cssXgafv :: Lens' CssesList (Maybe Xgafv)
cssXgafv = lens _cssXgafv (\ s a -> s{_cssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cssUploadProtocol :: Lens' CssesList (Maybe Text)
cssUploadProtocol
  = lens _cssUploadProtocol
      (\ s a -> s{_cssUploadProtocol = a})

-- | OAuth access token.
cssAccessToken :: Lens' CssesList (Maybe Text)
cssAccessToken
  = lens _cssAccessToken
      (\ s a -> s{_cssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cssUploadType :: Lens' CssesList (Maybe Text)
cssUploadType
  = lens _cssUploadType
      (\ s a -> s{_cssUploadType = a})

-- | Required. The CSS group ID of CSS domains to be listed.
cssCssGroupId :: Lens' CssesList Int64
cssCssGroupId
  = lens _cssCssGroupId
      (\ s a -> s{_cssCssGroupId = a})
      . _Coerce

-- | A page token, received from a previous \`ListCsses\` call. Provide this
-- to retrieve the subsequent page. When paginating, all other parameters
-- provided to \`ListCsses\` must match the call that provided the page
-- token.
cssPageToken :: Lens' CssesList (Maybe Text)
cssPageToken
  = lens _cssPageToken (\ s a -> s{_cssPageToken = a})

-- | The maximum number of CSS domains to return. The service may return
-- fewer than this value. If unspecified, at most 50 CSS domains will be
-- returned. The maximum value is 1000; values above 1000 will be coerced
-- to 1000.
cssPageSize :: Lens' CssesList (Maybe Int32)
cssPageSize
  = lens _cssPageSize (\ s a -> s{_cssPageSize = a}) .
      mapping _Coerce

-- | JSONP
cssCallback :: Lens' CssesList (Maybe Text)
cssCallback
  = lens _cssCallback (\ s a -> s{_cssCallback = a})

instance GoogleRequest CssesList where
        type Rs CssesList = ListCssesResponse
        type Scopes CssesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient CssesList'{..}
          = go _cssCssGroupId _cssXgafv _cssUploadProtocol
              _cssAccessToken
              _cssUploadType
              _cssPageToken
              _cssPageSize
              _cssCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy CssesListResource)
                      mempty
