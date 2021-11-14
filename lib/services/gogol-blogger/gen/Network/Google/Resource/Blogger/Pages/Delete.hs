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
-- Module      : Network.Google.Resource.Blogger.Pages.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a page by blog id and page id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.delete@.
module Network.Google.Resource.Blogger.Pages.Delete
    (
    -- * REST Resource
      PagesDeleteResource

    -- * Creating a Request
    , pagesDelete
    , PagesDelete

    -- * Request Lenses
    , pddXgafv
    , pddUploadProtocol
    , pddAccessToken
    , pddUploadType
    , pddBlogId
    , pddPageId
    , pddCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.delete@ method which the
-- 'PagesDelete' request conforms to.
type PagesDeleteResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             Capture "pageId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a page by blog id and page id.
--
-- /See:/ 'pagesDelete' smart constructor.
data PagesDelete =
  PagesDelete'
    { _pddXgafv :: !(Maybe Xgafv)
    , _pddUploadProtocol :: !(Maybe Text)
    , _pddAccessToken :: !(Maybe Text)
    , _pddUploadType :: !(Maybe Text)
    , _pddBlogId :: !Text
    , _pddPageId :: !Text
    , _pddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddXgafv'
--
-- * 'pddUploadProtocol'
--
-- * 'pddAccessToken'
--
-- * 'pddUploadType'
--
-- * 'pddBlogId'
--
-- * 'pddPageId'
--
-- * 'pddCallback'
pagesDelete
    :: Text -- ^ 'pddBlogId'
    -> Text -- ^ 'pddPageId'
    -> PagesDelete
pagesDelete pPddBlogId_ pPddPageId_ =
  PagesDelete'
    { _pddXgafv = Nothing
    , _pddUploadProtocol = Nothing
    , _pddAccessToken = Nothing
    , _pddUploadType = Nothing
    , _pddBlogId = pPddBlogId_
    , _pddPageId = pPddPageId_
    , _pddCallback = Nothing
    }


-- | V1 error format.
pddXgafv :: Lens' PagesDelete (Maybe Xgafv)
pddXgafv = lens _pddXgafv (\ s a -> s{_pddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddUploadProtocol :: Lens' PagesDelete (Maybe Text)
pddUploadProtocol
  = lens _pddUploadProtocol
      (\ s a -> s{_pddUploadProtocol = a})

-- | OAuth access token.
pddAccessToken :: Lens' PagesDelete (Maybe Text)
pddAccessToken
  = lens _pddAccessToken
      (\ s a -> s{_pddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddUploadType :: Lens' PagesDelete (Maybe Text)
pddUploadType
  = lens _pddUploadType
      (\ s a -> s{_pddUploadType = a})

pddBlogId :: Lens' PagesDelete Text
pddBlogId
  = lens _pddBlogId (\ s a -> s{_pddBlogId = a})

pddPageId :: Lens' PagesDelete Text
pddPageId
  = lens _pddPageId (\ s a -> s{_pddPageId = a})

-- | JSONP
pddCallback :: Lens' PagesDelete (Maybe Text)
pddCallback
  = lens _pddCallback (\ s a -> s{_pddCallback = a})

instance GoogleRequest PagesDelete where
        type Rs PagesDelete = ()
        type Scopes PagesDelete =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesDelete'{..}
          = go _pddBlogId _pddPageId _pddXgafv
              _pddUploadProtocol
              _pddAccessToken
              _pddUploadType
              _pddCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesDeleteResource)
                      mempty
