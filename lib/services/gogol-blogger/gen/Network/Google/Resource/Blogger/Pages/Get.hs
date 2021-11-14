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
-- Module      : Network.Google.Resource.Blogger.Pages.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a page by blog id and page id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.get@.
module Network.Google.Resource.Blogger.Pages.Get
    (
    -- * REST Resource
      PagesGetResource

    -- * Creating a Request
    , pagesGet
    , PagesGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgBlogId
    , pgPageId
    , pgView
    , pgCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.get@ method which the
-- 'PagesGet' request conforms to.
type PagesGetResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             Capture "pageId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" PagesGetView :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Page

-- | Gets a page by blog id and page id.
--
-- /See:/ 'pagesGet' smart constructor.
data PagesGet =
  PagesGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgBlogId :: !Text
    , _pgPageId :: !Text
    , _pgView :: !(Maybe PagesGetView)
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgBlogId'
--
-- * 'pgPageId'
--
-- * 'pgView'
--
-- * 'pgCallback'
pagesGet
    :: Text -- ^ 'pgBlogId'
    -> Text -- ^ 'pgPageId'
    -> PagesGet
pagesGet pPgBlogId_ pPgPageId_ =
  PagesGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgBlogId = pPgBlogId_
    , _pgPageId = pPgPageId_
    , _pgView = Nothing
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PagesGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PagesGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' PagesGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PagesGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

pgBlogId :: Lens' PagesGet Text
pgBlogId = lens _pgBlogId (\ s a -> s{_pgBlogId = a})

pgPageId :: Lens' PagesGet Text
pgPageId = lens _pgPageId (\ s a -> s{_pgPageId = a})

pgView :: Lens' PagesGet (Maybe PagesGetView)
pgView = lens _pgView (\ s a -> s{_pgView = a})

-- | JSONP
pgCallback :: Lens' PagesGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PagesGet where
        type Rs PagesGet = Page
        type Scopes PagesGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PagesGet'{..}
          = go _pgBlogId _pgPageId _pgXgafv _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgView
              _pgCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesGetResource)
                      mempty
