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
-- Module      : Network.Google.Resource.Blogger.Pages.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.patch@.
module Network.Google.Resource.Blogger.Pages.Patch
    (
    -- * REST Resource
      PagesPatchResource

    -- * Creating a Request
    , pagesPatch
    , PagesPatch

    -- * Request Lenses
    , ppXgafv
    , ppUploadProtocol
    , ppAccessToken
    , ppUploadType
    , ppBlogId
    , ppPageId
    , ppPayload
    , ppRevert
    , ppPublish
    , ppCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.patch@ method which the
-- 'PagesPatch' request conforms to.
type PagesPatchResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             Capture "pageId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "revert" Bool :>
                         QueryParam "publish" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Page :> Patch '[JSON] Page

-- | Patches a page.
--
-- /See:/ 'pagesPatch' smart constructor.
data PagesPatch =
  PagesPatch'
    { _ppXgafv :: !(Maybe Xgafv)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppAccessToken :: !(Maybe Text)
    , _ppUploadType :: !(Maybe Text)
    , _ppBlogId :: !Text
    , _ppPageId :: !Text
    , _ppPayload :: !Page
    , _ppRevert :: !(Maybe Bool)
    , _ppPublish :: !(Maybe Bool)
    , _ppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppUploadProtocol'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppBlogId'
--
-- * 'ppPageId'
--
-- * 'ppPayload'
--
-- * 'ppRevert'
--
-- * 'ppPublish'
--
-- * 'ppCallback'
pagesPatch
    :: Text -- ^ 'ppBlogId'
    -> Text -- ^ 'ppPageId'
    -> Page -- ^ 'ppPayload'
    -> PagesPatch
pagesPatch pPpBlogId_ pPpPageId_ pPpPayload_ =
  PagesPatch'
    { _ppXgafv = Nothing
    , _ppUploadProtocol = Nothing
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppBlogId = pPpBlogId_
    , _ppPageId = pPpPageId_
    , _ppPayload = pPpPayload_
    , _ppRevert = Nothing
    , _ppPublish = Nothing
    , _ppCallback = Nothing
    }


-- | V1 error format.
ppXgafv :: Lens' PagesPatch (Maybe Xgafv)
ppXgafv = lens _ppXgafv (\ s a -> s{_ppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppUploadProtocol :: Lens' PagesPatch (Maybe Text)
ppUploadProtocol
  = lens _ppUploadProtocol
      (\ s a -> s{_ppUploadProtocol = a})

-- | OAuth access token.
ppAccessToken :: Lens' PagesPatch (Maybe Text)
ppAccessToken
  = lens _ppAccessToken
      (\ s a -> s{_ppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppUploadType :: Lens' PagesPatch (Maybe Text)
ppUploadType
  = lens _ppUploadType (\ s a -> s{_ppUploadType = a})

ppBlogId :: Lens' PagesPatch Text
ppBlogId = lens _ppBlogId (\ s a -> s{_ppBlogId = a})

ppPageId :: Lens' PagesPatch Text
ppPageId = lens _ppPageId (\ s a -> s{_ppPageId = a})

-- | Multipart request metadata.
ppPayload :: Lens' PagesPatch Page
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

ppRevert :: Lens' PagesPatch (Maybe Bool)
ppRevert = lens _ppRevert (\ s a -> s{_ppRevert = a})

ppPublish :: Lens' PagesPatch (Maybe Bool)
ppPublish
  = lens _ppPublish (\ s a -> s{_ppPublish = a})

-- | JSONP
ppCallback :: Lens' PagesPatch (Maybe Text)
ppCallback
  = lens _ppCallback (\ s a -> s{_ppCallback = a})

instance GoogleRequest PagesPatch where
        type Rs PagesPatch = Page
        type Scopes PagesPatch =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesPatch'{..}
          = go _ppBlogId _ppPageId _ppXgafv _ppUploadProtocol
              _ppAccessToken
              _ppUploadType
              _ppRevert
              _ppPublish
              _ppCallback
              (Just AltJSON)
              _ppPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesPatchResource)
                      mempty
