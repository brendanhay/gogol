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
-- Module      : Network.Google.Resource.Blogger.Pages.Revert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts a published or scheduled page to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.revert@.
module Network.Google.Resource.Blogger.Pages.Revert
    (
    -- * REST Resource
      PagesRevertResource

    -- * Creating a Request
    , pagesRevert
    , PagesRevert

    -- * Request Lenses
    , pagXgafv
    , pagUploadProtocol
    , pagAccessToken
    , pagUploadType
    , pagBlogId
    , pagPageId
    , pagCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.revert@ method which the
-- 'PagesRevert' request conforms to.
type PagesRevertResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             Capture "pageId" Text :>
               "revert" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Page

-- | Reverts a published or scheduled page to draft state.
--
-- /See:/ 'pagesRevert' smart constructor.
data PagesRevert =
  PagesRevert'
    { _pagXgafv :: !(Maybe Xgafv)
    , _pagUploadProtocol :: !(Maybe Text)
    , _pagAccessToken :: !(Maybe Text)
    , _pagUploadType :: !(Maybe Text)
    , _pagBlogId :: !Text
    , _pagPageId :: !Text
    , _pagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagXgafv'
--
-- * 'pagUploadProtocol'
--
-- * 'pagAccessToken'
--
-- * 'pagUploadType'
--
-- * 'pagBlogId'
--
-- * 'pagPageId'
--
-- * 'pagCallback'
pagesRevert
    :: Text -- ^ 'pagBlogId'
    -> Text -- ^ 'pagPageId'
    -> PagesRevert
pagesRevert pPagBlogId_ pPagPageId_ =
  PagesRevert'
    { _pagXgafv = Nothing
    , _pagUploadProtocol = Nothing
    , _pagAccessToken = Nothing
    , _pagUploadType = Nothing
    , _pagBlogId = pPagBlogId_
    , _pagPageId = pPagPageId_
    , _pagCallback = Nothing
    }


-- | V1 error format.
pagXgafv :: Lens' PagesRevert (Maybe Xgafv)
pagXgafv = lens _pagXgafv (\ s a -> s{_pagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pagUploadProtocol :: Lens' PagesRevert (Maybe Text)
pagUploadProtocol
  = lens _pagUploadProtocol
      (\ s a -> s{_pagUploadProtocol = a})

-- | OAuth access token.
pagAccessToken :: Lens' PagesRevert (Maybe Text)
pagAccessToken
  = lens _pagAccessToken
      (\ s a -> s{_pagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pagUploadType :: Lens' PagesRevert (Maybe Text)
pagUploadType
  = lens _pagUploadType
      (\ s a -> s{_pagUploadType = a})

pagBlogId :: Lens' PagesRevert Text
pagBlogId
  = lens _pagBlogId (\ s a -> s{_pagBlogId = a})

pagPageId :: Lens' PagesRevert Text
pagPageId
  = lens _pagPageId (\ s a -> s{_pagPageId = a})

-- | JSONP
pagCallback :: Lens' PagesRevert (Maybe Text)
pagCallback
  = lens _pagCallback (\ s a -> s{_pagCallback = a})

instance GoogleRequest PagesRevert where
        type Rs PagesRevert = Page
        type Scopes PagesRevert =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesRevert'{..}
          = go _pagBlogId _pagPageId _pagXgafv
              _pagUploadProtocol
              _pagAccessToken
              _pagUploadType
              _pagCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesRevertResource)
                      mempty
