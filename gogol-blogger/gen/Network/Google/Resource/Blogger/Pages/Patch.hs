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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a page. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.patch@.
module Network.Google.Resource.Blogger.Pages.Patch
    (
    -- * REST Resource
      PagesPatchResource

    -- * Creating a Request
    , pagesPatch
    , PagesPatch

    -- * Request Lenses
    , ppBlogId
    , ppPageId
    , ppPayload
    , ppRevert
    , ppPublish
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.patch@ method which the
-- 'PagesPatch' request conforms to.
type PagesPatchResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "pages" :>
               Capture "pageId" Text :>
                 QueryParam "revert" Bool :>
                   QueryParam "publish" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Page :> Patch '[JSON] Page

-- | Update a page. This method supports patch semantics.
--
-- /See:/ 'pagesPatch' smart constructor.
data PagesPatch =
  PagesPatch'
    { _ppBlogId  :: !Text
    , _ppPageId  :: !Text
    , _ppPayload :: !Page
    , _ppRevert  :: !(Maybe Bool)
    , _ppPublish :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
pagesPatch
    :: Text -- ^ 'ppBlogId'
    -> Text -- ^ 'ppPageId'
    -> Page -- ^ 'ppPayload'
    -> PagesPatch
pagesPatch pPpBlogId_ pPpPageId_ pPpPayload_ =
  PagesPatch'
    { _ppBlogId = pPpBlogId_
    , _ppPageId = pPpPageId_
    , _ppPayload = pPpPayload_
    , _ppRevert = Nothing
    , _ppPublish = Nothing
    }


-- | The ID of the Blog.
ppBlogId :: Lens' PagesPatch Text
ppBlogId = lens _ppBlogId (\ s a -> s{_ppBlogId = a})

-- | The ID of the Page.
ppPageId :: Lens' PagesPatch Text
ppPageId = lens _ppPageId (\ s a -> s{_ppPageId = a})

-- | Multipart request metadata.
ppPayload :: Lens' PagesPatch Page
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
ppRevert :: Lens' PagesPatch (Maybe Bool)
ppRevert = lens _ppRevert (\ s a -> s{_ppRevert = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
ppPublish :: Lens' PagesPatch (Maybe Bool)
ppPublish
  = lens _ppPublish (\ s a -> s{_ppPublish = a})

instance GoogleRequest PagesPatch where
        type Rs PagesPatch = Page
        type Scopes PagesPatch =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesPatch'{..}
          = go _ppBlogId _ppPageId _ppRevert _ppPublish
              (Just AltJSON)
              _ppPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesPatchResource)
                      mempty
